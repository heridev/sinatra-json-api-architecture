require './controllers/authorized_controller'

class PatientsController < AuthorizedController
  get '' do
    { status: '/ index patients route' }.to_json
  end
end
