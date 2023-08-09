require 'pry'
require './controllers/base_controller'

class InvoicesController < BaseController

  post '/process' do
    # Net::SFTP.start goes here
    puts "here we go...."
    { status: 'this would be a post request' }.to_json
  end

  private

  def check_invoice_params
    binding.pry
    # Implement your check_invoice_params logic here.
  end
end
