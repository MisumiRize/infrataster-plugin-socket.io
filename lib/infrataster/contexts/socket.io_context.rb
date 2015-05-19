require "infrataster/contexts/base_context"
require "socket.io-client-simple"
require "uri"

module Infrataster
  module Contexts
    class SocketIOContext < BaseContext
      def socket
        server.forward_port(resource.uri.port) do |address, port|
          uri = resource.uri.dup
          uri.host = address
          uri.port = port
          SocketIO::Client::Simple.connect uri.to_s, resource.options[:params]
        end
      end
    end
  end
end
