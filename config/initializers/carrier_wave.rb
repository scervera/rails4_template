# config/initializers/carrier_wave.rb
CarrierWave.configure do |config|
  # config.fog_credentials = {
  #   :provider             => 'Rackspace',
  #   :rackspace_username   => 'xxxxxxxxx',
  #   :rackspace_api_key    => 'yyyyyyyyy',
  #   :rackspace_servicenet => Rails.env.production?
  # }
  config.root = Rails.root.join('public')
  # config.fog_directory = 'my_private_container'
  # config.fog_public = false
end