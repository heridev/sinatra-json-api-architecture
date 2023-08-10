require './controllers/base_controller'

class AuthorizedController < BaseController
  before do
    authorize!
  end

  def authorize!
    render_authorization_error unless valid_authorization_request?
  end

  def valid_authorization_request?
    request.env['HTTP_AUTHORIZATION'] == ENV['AUTHORIZATION_TOKEN']
  end

  def render_authorization_error
    halt 401, { error: 'Unauthorized' }.to_json
  end
end
