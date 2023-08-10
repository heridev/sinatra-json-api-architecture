require 'pry'
require './controllers/authorized_controller'

class InvoicesController < AuthorizedController
  post '' do
    { status: 'this would be a post request' }.to_json
  end

  private

  def check_invoice_params
    binding.pry
    # Implement your check_invoice_params logic here.
  end
end
