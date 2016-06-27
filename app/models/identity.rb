class Identity < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :uid, :provider
  validates_uniqueness_of :uid, :scope => :provider

  def update_from_omniauth(omni)
    self.accesstoken  = omni.credentials.token,
    self.secrettoken  = omni.credentials.secret
    #self.refreshtoken = omni.credentials.refresh_token
    self.name         = omni.info.name
    self.email        = omni.info.email    if omni.info.email
    self.nickname     = omni.info.nickname
    self.image        = omni.info.image
    self.phone        = omni.info.phone
    self.urls         = omni.info.urls.try(:to_json) #TODO!
    self.user         = yield if user.nil?
    user.update_from_identity(omni, self)
  end
end
