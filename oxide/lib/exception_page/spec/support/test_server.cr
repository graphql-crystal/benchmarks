class TestServer
  getter addr : Socket::IPAddress

  delegate :listen, :close, to: @server

  def initialize(port : Int32? = nil)
    @server = HTTP::Server.new([TestHandler.new])
    if port
      @addr = @server.bind_tcp(port: port)
    else
      @addr = @server.bind_unused_port
    end
  end
end

class CustomException < Exception
end
