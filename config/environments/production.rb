Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.
  config.serve_static_assets = false

  config.eager_load = true

  config.log_level = :info

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  config.assets.css_compressor = CSSminify.new
  config.assets.js_compressor = :uglifier
end
