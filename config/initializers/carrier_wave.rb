if Rails.env.production?
  CarrierWave.configure do |config|
    # config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      # Configuration for Amazon S3
      provider: 'AWS',
      region: 'eu-central-1',
      aws_access_key_id: ENV['S3_ACCESS_KEY'],
      aws_secret_access_key: ENV['S3_SECRET_KEY']
    }
    # config.fog_use_ssl_for_aws = false
    # config.storage = :fog
    config.fog_directory = ENV['S3_BUCKET']
    config.fog_public = false
  end
end
