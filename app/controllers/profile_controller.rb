class ProfileController < ApplicationController
  def index
  	@user = User.last
  	@firstnam = @user.firstname.split(" ")
  	@profile_firstname = @firstnam[0]
  	@profile_fullname = @user.firstname + " " + @user.lastname
  	@age = (Date.today.year) - (@user.birthday.year)
  end
end
