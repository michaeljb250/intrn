class UsersController < ApplicationController

  def Index
    @users = User.where.not(id: current_user.id)
  end
end
