# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( groups.css )
Rails.application.config.assets.precompile += %w( meal_times.css )
Rails.application.config.assets.precompile += %w( orders.css )
Rails.application.config.assets.precompile += %w( servers.css )
Rails.application.config.assets.precompile += %w( sessions.css )
Rails.application.config.assets.precompile += %w( groups.js )
Rails.application.config.assets.precompile += %w( meal_times.js )
Rails.application.config.assets.precompile += %w( orders.js )
Rails.application.config.assets.precompile += %w( servers.js )
Rails.application.config.assets.precompile += %w( sessions.js )
