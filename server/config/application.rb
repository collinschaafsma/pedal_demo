require File.expand_path('../boot', __FILE__)

PedalDemo = Pedal::Application.new do |app|
  app.configure do |config|
    config.adapter = :Rack
  end
end

# Application wide configuration
require File.expand_path('../environment', __FILE__)

# Environment specific configuration
begin
  require File.expand_path(
    File.join('../environments/', PedalDemo.environment),
    __FILE__
  )
rescue LoadError
  # No file in environments for the current env, bummer.
end

# Preload app
Dir["./server/app/**/*.rb"].each  { |f| require f }

# Load the routing table
require File.expand_path('../routes', __FILE__)

