class User < ActiveRecord::Base
  has_many :user_tokens, dependent: :destroy
  has_many :identities, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :omniauthable, :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
  def facebook
    identities.where( :provider => "facebook" ).first
  end

  def facebook_client
    @facebook_client ||= Facebook.client( access_token: facebook.accesstoken )
  end

  def instagram
    identities.where( :provider => "instagram" ).first
  end

  def instagram_client
    @instagram_client ||= Instagram.client( access_token: instagram.accesstoken )
  end

  def twitter
    identities.where( :provider => "twitter" ).first
  end

  def twitter_client
    @twitter_client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_APP_ID']
      config.consumer_secret     = ENV['TWITTER_APP_SECRET']
      config.access_token        = twitter.accesstoken
      config.access_token_secret = twitter.secrettoken
    end
  end

  def update_from_identity(omni, identity)
    self.identities << identity
    self.email = omni.info.email if email.blank? && omni.info.email
    #self.name  = omni.info.name  if name.blank?  && omni.info.name
    #self.email = identity.email if email.blank? && identity.email
    #self.name  = identity.name  if name.blank?  && identity.name
  end

end
