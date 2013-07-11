# known bugs:
# 1. test for not being able to edit a different user reroutes to signin, not root
# 2. we can see the 'show' page for a different user:  if logged in as '1', can see /users/2 -- is this a bug?
class UsersController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update]
  before_action :correct_user, only: [:edit, :update]

  def index
    @users = User.paginate(page: params[:page])
  end

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
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
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
      unless signed_in?
        # @user = User.find(params[:id])  # DDT
        # logger.debug "signed_in_user: user = #{@user}" # DDT
        store_location
        logger.debug "signed_in_user" # DDT
        redirect_to signin_url, notice: "Please sign in." unless signed_in?
      end
    end

    # NOTE:  we are getting errors from the test for redirection to the root_path, but in practice it seems to be working
    #   -- can compare to talkvite2 copy, if we don't find it before the end
    def correct_user
      @user = User.find(params[:id])
      logger.debug "correct_user: user = #{@user}" # DDT
      redirect_to(root_path) unless current_user?(@user)
    end

end
