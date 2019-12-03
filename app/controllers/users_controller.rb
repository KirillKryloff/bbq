class UsersController < ApplicationController

  # Девайзовский фильтр, который посылает незалогинившихся юзеров
  # Просматривать профили могут и анонимы
  before_action :authenticate_user!, except: [:show]
  # Задаем объект @user для шаблонов и экшенов
  before_action :set_current_user, except: [:show]
  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_current_user
    @user = current_user
  end

  # Пропишем, что разрешено передавать в params
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
