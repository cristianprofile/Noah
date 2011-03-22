module Noah
  PROTECTED_PATHS = %w[applications configurations hosts services watches ark noah]
  PATH_MAPPING = {"Noah::Application" => "//noah/application",
                  "Noah::Service" => "//noah/service",
                  "Noah::Configuration" => "//noah/configuration",
                  "Noah::Host" => "//noah/host",
                  "Noah::Tag" => "//noah/tag",
                  "Noah::Ephemeral" => "//noah/ephemeral"}
end
begin
  require 'yajl'
rescue LoadError
  require 'json'
end
require 'haml'
require 'yaml'
require 'sinatra/base'

require File.join(File.dirname(__FILE__), 'noah', 'custom_watcher')
require File.join(File.dirname(__FILE__), 'noah','validations')
require File.join(File.dirname(__FILE__), 'noah','models')
require File.join(File.dirname(__FILE__), 'noah','app')
