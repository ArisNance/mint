# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
 
Rails.application.config.assets.precompile += %w( style.css )
Rails.application.config.assets.precompile += %w( eventstyle.css )
Rails.application.config.assets.precompile += %w( landing.css )
Rails.application.config.assets.precompile += %w( bootstrap.min.css )
Rails.application.config.assets.precompile += %w( animate.min.css )
Rails.application.config.assets.precompile += %w( paper_dashboard.css )
Rails.application.config.assets.precompile += %w( demo.css )
Rails.application.config.assets.precompile += %w( themify_icons.css )
 
#styles
Rails.application.config.assets.precompile += %w( bootstrap.min.css )


# js
Rails.application.config.assets.precompile += %w( main.js )
Rails.application.config.assets.precompile += %w( jquery.localScroll.min.js )
Rails.application.config.assets.precompile += %w( jquery.scrollTo.min.js )
Rails.application.config.assets.precompile += %w( scripts.js )
Rails.application.config.assets.precompile += %w( jquery_2.1.4.min.js )
Rails.application.config.assets.precompile += %w( jquery.easing.min.js )
Rails.application.config.assets.precompile += %w( bootstrap.min.js )
Rails.application.config.assets.precompile += %w( chartist.min.js )
Rails.application.config.assets.precompile += %w( bootstrap_checkbox_radio.js )
Rails.application.config.assets.precompile += %w( bootstrap_notify.js )
Rails.application.config.assets.precompile += %w( paper_dashboard.js )
Rails.application.config.assets.precompile += %w( demo.js )
Rails.application.config.assets.precompile += %w( jquery_1.10.2.js )
Rails.application.config.assets.precompile += %w( bootstrap_datepicker.js )
Rails.application.config.assets.precompile += %w( bootstrap.js )
