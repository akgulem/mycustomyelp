CarrierWave.configure do |config|
  config.storage    = :aws
  config.aws_bucket = 'mycustomyelp'
  config.aws_acl    = 'public-read'
  config.fog_provider = 'fog/aws'
  config.aws_authenticated_url_expiration = 60 * 60 * 24 * 7
  config.aws_credentials = {
    access_key_id:     ENV["access_key_id"],
    secret_access_key: ENV["secret_access_key"],
    region:            ENV["region"],
  }
end