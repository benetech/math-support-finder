#loggly = Logglier.new('https://logs-01.loggly.com/inputs/' + ENV['LOGGLY_TOKEN'] + '/tag/rails', threaded: true, format: :json)
#Rails.logger.extend(ActiveSupport::Logger.broadcast(loggly))
