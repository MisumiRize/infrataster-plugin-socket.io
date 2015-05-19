require "infrataster/helpers/resource_helper"

module Infrataster
  module Helpers
    module ResourceHelper
      def socket_io(*args)
        Resources::SocketIOResource.new(*args)
      end
    end
  end
end
