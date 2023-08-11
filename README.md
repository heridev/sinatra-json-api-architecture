## Sinatra JSON API architecture
This Sinatra architecture uses the Modular application style, which means that the app_file uses the Sinatra::Base for subclassing, if you want to enable or disable any settings, please do so using the BaseController.

For more information please visit the section called
```
Modular vs. Classic Style
```
By following this [official Sinatra page](https://sinatrarb.com/intro.html)

And the application uses the `rerun` gem to allow quick reloads when any of the Ruby files are modified

```
.
├── Gemfile
├── Gemfile.lock
├── README.md
├── app.rb
├── config
│   └── puma.rb
├── config.ru
└── controllers
    ├── authorized_controller.rb
    ├── base_controller.rb
    ├── invoices_controller.rb
    ├── patients_controller.rb
    └── versions_controller.rb
```

### Dependencies
- Rerun
- Sinatra
- Ruby 3.2.2
- Puma

### Authorization
We implemented a very basic Authorization layer, which is basically an env variable check, so you need to export the following env varible in your terminal before running the puma server
```
export AUTHORIZATION_TOKEN='token-authorization'
```
At present, the root path (/) bypasses the authorization layer. However, both the 'invoices' and 'patients' controllers do utilize it. Therefore, when making a POST request to create a new invoice, ensure that you include the appropriate authorization header in your request.
```
Authorization: token-authorization 
```

### How to run the project in development
1. bundle install
2. Set the following env variables
```
export AUTHORIZATION_TOKEN='token-authorization'
```
3. Run the application for development
```
rerun --pattern="**/*.{rb}" "bundle exec puma -C config/puma.rb"
```
4. Visit http://localhost:3000

### Some of the existing endpoints
#### Public endpoint
- GET http://localhost:3000

#### Authenticated endpoints:
- POST http://localhost:3000/api/v1/invoices
- GET http://localhost:3000/api/v1/patients
