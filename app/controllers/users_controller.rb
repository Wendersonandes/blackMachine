class UsersController < ApplicationController
  def create
		@user = User.new(user_params)
		respond_to do |format|
			if @user.save 
				format.js
      else
        format.html { redirect_to home_path, :notice => "Opps,there's something is wrong in this picture" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
			end
		end
  end

	private

	def user_params
		params.require(:user).permit(:email)
	end
end
