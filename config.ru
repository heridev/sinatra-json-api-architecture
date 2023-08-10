require './app'

map('/') { run VersionsController }
map('/api/v1/patients') { run PatientsController }
map('/api/v1/invoices') { run InvoicesController }
