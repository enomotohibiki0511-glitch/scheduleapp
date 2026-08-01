require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module ScheduleApp
  class Application < Rails::Application
    config.load_defaults 7.2

    config.time_zone = "Tokyo"
    config.active_record.default_timezone = :local

    config.autoload_lib(ignore: %w[assets tasks])
  end
end
