# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
<<<<<<< HEAD
Rails.application.config.assets.precompile += %w( style.css )
Rails.application.config.assets.precompile += %w( landing.css )
=======
#styles
Rails.application.config.assets.precompile += %w( style.css )
>>>>>>> b9d9ba8724cb59d93bc1e30b3b667ae0d85969b7

# js
Rails.application.config.assets.precompile += %w( main.js )
Rails.application.config.assets.precompile += %w( jquery.localScroll.min.js )
Rails.application.config.assets.precompile += %w( jquery.scrollTo.min.js )