dir = File.dirname(__FILE__)
require File.join(dir, 'app/app')
require 'rack/cache'

use Rack::Cache
use Rack::ConditionalGet
use Rack::ETag

run Rack::URLMap.new("/" => MyApp.new)
