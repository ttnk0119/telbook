class FriendsController < ApplicationController
  def index
    @friends = Friend.order("id")
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
