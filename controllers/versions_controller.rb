require './controllers/base_controller'

class VersionsController < BaseController
  get '/' do
    logger.info 'Customer logger.info GET /versions'
    { status: 'success', version: '1.0.0' }.to_json
  end
end
