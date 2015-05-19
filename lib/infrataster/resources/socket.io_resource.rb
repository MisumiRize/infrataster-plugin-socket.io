require "infrataster/resources/base_resource"
require "uri"

module Infrataster
  module Resources
    class SocketIOResource < BaseResource
      Error = Class.new(StandardError)

      attr_reader :uri, :options

      def initialize(uri, options = {})
        @options = {params: {}}.merge options
        @uri = URI.parse uri
      end

      def to_s
        "socket.io '#{uri}'"
      end
    end
  end
end
