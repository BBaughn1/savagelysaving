class UserController < ApplicationController
	def create
	  @user = User.create( user_params )
	end

	def destroy
		@user.avatar = nil
		@user.save
	end

	def avatar_profile_link(user, image_options={}, html_options={})
	  avatar_url = nil
	  unless user.nil?
	    avatar_url = user.avatar? ? user.avatar.url(:thumb) : nil
	    link_to(image_tag(avatar_url, image_options), profile_path(user.profile_name), html_options)
	  end
	end

	private

	# Use strong_parameters for attribute whitelisting
	# Be sure to update your create() and update() controller methods.

	def user_params
	  params.require(:user).permit(:avatar)
	end
end
