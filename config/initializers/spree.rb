# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to override the default site name.
  config.site_name = "lotipi.co"
  config.logo = "store/logo.png"
  config.use_s3 = true
  config.s3_bucket = 'lotipico'
  config.s3_access_key = ENV['S3_ACCESS_KEY']
  config.s3_secret = ENV['S3_SECRET']
end

Paperclip.interpolates(:s3_eu_url) do |attachment, style|
“#{attachment.s3_protocol}://#{Spree::Config[:s3_host_alias]}/#{attachment.bucket_name}/#{attachment.path(style).gsub(%r{^/}, “”)}”
end

Spree.user_class = "Spree::User"
SpreeI18n::Config.available_locales = [:en, :'es-MX'] # displayed on translation forms
SpreeI18n::Config.supported_locales = [:en] # displayed on frontend select box
