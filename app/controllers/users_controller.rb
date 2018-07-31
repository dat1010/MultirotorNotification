class UsersController < ApplicationController
  def new
    @users = User.new
  end

  def create
    @users = User.new(params.require(:user).permit(:email))
    #TODO Add email format validation
    #validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    respond_to do |format|
      if @users.save
        format.html { redirect_to :controller => 'pages', :action => 'Home' , notice: 'Your Email was submitted.'}
      else
        format.html { render :new }
      end
    end
  end

  private
  #Shouldn't need this if im only creating a new User
    def set_user
      @users = User.find(params[:id])
    end

end
