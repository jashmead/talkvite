class UsersController < ApplicationController
  before_action :signed_in_user, only: [:edit, :update]

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
	  # save message for use in next screen
      flash[:success] = "Welcome to TalkVite!"
	  # how does this redirect_to work?
      redirect_to @user # don't need the user_url!
    else
	  # we should see an error message from flash, to have been setup by 'save' method
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      # Handle a successful update.
      flash[:success] = "Changes saved"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

    def user_params
	  # user_params called in 'create'
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    # Before filters

    def signed_in_user
      redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end

end
