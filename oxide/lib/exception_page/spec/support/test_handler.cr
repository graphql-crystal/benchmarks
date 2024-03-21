class TestHandler
  include HTTP::Handler

  def call(context)
    if context.request.resource == "/favicon.ico"
      context.response.print ""
    else
      begin
        raise CustomException.new("Something went very wrong")
      rescue e : CustomException
        context.response.content_type = "text/html"
        context.response.print MyApp::ExceptionPage.for_runtime_exception(context, e).to_s
      end
    end
  end
end
