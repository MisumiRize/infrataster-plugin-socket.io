$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "infrataster/rspec"
require "rspec/wait"
require "infrataster-plugin-socket.io"

Infrataster::Server.define(
  :socket_io,
  "127.0.0.1"
)

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
end
