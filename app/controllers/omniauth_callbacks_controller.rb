class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def instagram
    generic_callback( "instagram" )
  end
  def facebook
    generic_callback( "facebook" )
  end
  def twitter
    generic_callback( "twitter" )
  end

  def generic_callback( provider )
    omni = env["omniauth.auth"]
    identity = Identity.find_or_initialize_by(provider: omni.provider, uid: omni.uid)
    identity.update_from_omniauth(omni) do
      # new identity user
      current_user || User.find_or_initialize_by(email: omni.info.email) #@identity.email || "" )
    end
    @user = identity.user
    if
      @user.save && identity.save
    then
      @user = FormUser.find @user.id
      sign_in_and_redirect @user, event: :authentication
      set_flash_message(:notice, :success, kind: provider.capitalize) if is_navigational_format?
    else
      session["devise.#{provider}_data"] = env["omniauth.auth"]
      redirect_to new_user_session_path, alert: @user.errors || identity.errors
    end
  end
end
