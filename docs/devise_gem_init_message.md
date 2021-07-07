# Message from devise gem

Some setup you must do manually if you haven't yet:

- Ensure you have defined default url options in your environments files. Here
  is an example of default_url_options appropriate for a development environment
  in config/environments/development.rb:

  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

  In production, :host should be set to the actual host of your application.

- Ensure you have defined root*url to \_something* in your config/routes.rb.
  For example:

```ruby
root to: "home#index"
```

- Ensure you have flash messages in app/views/layouts/application.html.erb.
  For example:

```html
<p class="notice"><%= notice %></p>
<p class="alert"><%= alert %></p>
```

- You can copy Devise views (for customization) to your app by running:

```bash
rails g devise:views
```
