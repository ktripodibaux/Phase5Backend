class UsersController < ApplicationController
  before_action :set_user, only: %i[ show update destroy ]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  def chats
    user = User.find(params[:id])
    # byebug
    render json: user.chats
  end

  def friends
    user = User.find(params[:id])
    # byebug
    render json: user.friends
  end



  def requests 
    user = User.find(params[:id])
    # byebug
    render json: user.requests
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def getFriends 
    user = User.find(params[:id])
    render json: user.list_friends
  end

  # PATCH/PUT /users/1
  def update
    # byebug
    if @user.update(edit_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:username, :password, :image)
    end

    def edit_params 
      params.permit(:image)
    end
end
