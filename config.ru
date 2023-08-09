require './app'

map('/') { run VersionsController }
map('/api/v1/patients') { run PatientsController }
map('/api/v1/invoices') { run InvoicesController }

error Sinatra::NotFound do
  content_type 'text/plain'
  [404, 'Not Found']
end
