class UserController < ApplicationController
	def create
	  @user = User.create( user_params )
	end

	def destroy
		@user.avatar = nil
		@user.save
	end

	private

	# Use strong_parameters for attribute whitelisting
	# Be sure to update your create() and update() controller methods.

	def user_params
	  params.require(:user).permit(:avatar)
	end
end
