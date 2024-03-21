require "http/cookie"
require "ecr"
require "backtracer"

abstract class ExceptionPage
  module Helpers
    def label_for_frame(frame) : String
      frame.shard_name || begin
        case frame.path
        when nil
          "???"
        when .includes?("/crystal/"), .includes?("/crystal-lang/")
          "crystal"
        else
          "app"
        end
      end
    end

    def css_class_for_frame(frame) : String
      case label_for_frame(frame)
      when "app" then "app"
      when "???" then "unknown"
      else
        "all"
      end
    end
  end

  include Helpers

  @params : Hash(String, String)
  @headers : Hash(String, Array(String))
  @session : Hash(String, HTTP::Cookie)
  @method : String
  @path : String
  @message : String
  @query : String
  @frames : Array(Backtracer::Backtrace::Frame)
  @title : String

  abstract def styles : Styles

  # Add an optional link to your project
  def project_url : String?
    nil
  end

  # Override this method to add extra HTML to the top of the stack trace heading
  def stack_trace_heading_html
    ""
  end

  # Override this method to add extra javascript to the page
  def extra_javascript
    ""
  end

  # Override this method to provide custom `Backtracer` configuration
  def backtracer : Backtracer::Configuration?
  end

  # :nodoc:
  def initialize(context : HTTP::Server::Context, @message, @title, @frames)
    @params = context.request.query_params.to_h
    @headers = context.response.headers.to_h
    @method = context.request.method
    @path = context.request.path
    @url = "#{context.request.headers["Host"]?}#{context.request.path}"
    @query = context.request.query_params.to_s
    @session = context.response.cookies.to_h
  end

  def initialize(context : HTTP::Server::Context, ex : Exception)
    title = "Error #{context.response.status_code}"
    frames =
      if ex.backtrace?
        Backtracer.parse(ex.backtrace, configuration: backtracer).frames
      else
        [] of Backtracer::Backtrace::Frame
      end
    initialize(context, ex.message.to_s, title: title, frames: frames)
  end

  def self.for_runtime_exception(context : HTTP::Server::Context, ex : Exception)
    new(context, ex)
  end

  ECR.def_to_s "#{__DIR__}/exception_page/exception_page.ecr"
end

require "./exception_page/*"
