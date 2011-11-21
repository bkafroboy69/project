class UsersController < ApplicationController
def new
    @user = User.new
    @title="Sign in"
  end
end
