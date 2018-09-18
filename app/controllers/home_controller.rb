class HomeController < ApplicationController
  def index
  	@user = User.last
  	@firstnam = @user.firstname.split(" ")
  	@firstname = @firstnam[0]
  	@age = (Date.today.year) - (@user.birthday.year)
  end
end
