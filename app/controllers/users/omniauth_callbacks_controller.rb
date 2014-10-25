class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
	def twitter
    render text: request.env["omniauth.auth"]
  #   logger.debug request.env
  #   binding.pry
		# @user = User.find_for_twitter_oauth(request.env["omniauth.auth"], current_user)
		# if @user.persisted?
  #     set_flash_message(:notice, :success, :kind => "Twitter") if is_navigational_format?
  #     sign_in_and_redirect @user, :event => :authentication
  #   else
  #     session["devise.twitter_data"] = request.env["omniauth.auth"].except("extra")
  #     redirect_to new_user_registration_url
  #   end
	end
  def failure
    render text: env['omniauth.error'].inspect
  end
end
