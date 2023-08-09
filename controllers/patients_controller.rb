require './controllers/base_controller'

class PatientsController < BaseController
  get '' do
    { status: '/ index patients route' }.to_json
  end
end
