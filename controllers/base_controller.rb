class BaseController < Sinatra::Base
  configure :production, :development do
    enable :logging
  end

  before do
    content_type :json
  end

  error Sinatra::NotFound do
    content_type 'text/plain'
    [404, 'Not Found']
  end
end
