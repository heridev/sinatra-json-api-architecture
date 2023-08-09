require './controllers/base_controller'

class VersionsController < BaseController
  get '/' do
    { status: 'success', version: '1.0.0' }.to_json
  end
end
