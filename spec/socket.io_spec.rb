require "spec_helper"

describe server(:socket_io) do
  describe socket_io("http://127.0.0.1:28080") do
    it "accepts connection" do
      connect = false

      socket.on :connect do
        connect = true
      end

      wait_for { connect }.to be_truthy
    end
  end
end
