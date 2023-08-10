## Sinatra JSON API architecture
### Dependencies
- Sinatra
- Ruby 3.2.2
- Puma

### Authorization
We implemented a very basic Authorization layer, which is basically an env variable check, so you need to export the following env varible in your terminal before running the puma server
```
export AUTHORIZATION_TOKEN='token-authorization'
```
Currently, the root path is not using the authorization layer but the invoices controller, thus, if you want to make a POST request to create a new invoice, make sure you include this authorization header in your request.
```
Authorization: token-authorization 
```

### How to run the project in development
1. bundle install
2. Set the following env variables
```
export AUTHORIZATION_TOKEN='token-authorization'
```
3. bundle exec puma -C config/puma.rb
4. Visit http://localhost:3000

### Some of the existing endpoints
- GET http://localhost:3000
- POST http://localhost:3000/api/v1/invoices/process
- GET http://localhost:3000/api/v1/patients

### Architecture
```
├── Gemfile
├── Gemfile.lock
├── README.md
├── app.rb
├── config
│   └── puma.rb
├── config.ru
└── controllers
    ├── base_controller.rb
    ├── invoices_controller.rb
    ├── patients_controller.rb
    └── versions_controller.rb
```
