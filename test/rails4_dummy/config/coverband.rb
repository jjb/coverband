Coverband.configure do |config|
  config.root              = Dir.pwd
  config.store             = Coverband::Adapters::RedisStore.new(Redis.new(url: ENV['REDIS_URL']), redis_namespace: 'coverband_test') if defined? Redis
  config.ignore            = %w[vendor .erb$ .slim$]
  config.root_paths        = []
  config.logger            = Rails.logger
  config.verbose           = true
  config.background_reporting_enabled = true
  config.track_gems = true
  config.gem_details = true
end
