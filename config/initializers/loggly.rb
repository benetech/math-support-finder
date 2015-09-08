loggly = Logglier.new('https://logs-01.loggly.com/inputs/' + ENV['LOGGLY_TOKEN'] + '/tag/rails', threaded: false, format: :json) #attempting with false
Rails.logger.extend(ActiveSupport::Logger.broadcast(loggly))
