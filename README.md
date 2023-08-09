## Sinatra JSON API architecture
### Dependencies
- Sinatra
- Ruby 3.2.2
- Puma

### How to run the project in development
1. bundle install
2. bundle exec puma -C config/puma.rb
3. Visit localhost:3000

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
