class FriendsController < ApplicationController
  def index
    @friends = Friend.order("id")
      .paginate(page: params[:page], per_page: 5)
  end

  def show
    @friend = Friend.find(params[:id])
    @telephones = @friend.telephones.order("id")
      .paginate(page: params[:page], per_page: 5)
    @telephone = Telephone.new(friend_id: @friend)
  end

  def new
    @friend = Friend.new
  end

  def edit
    @friend = Friend.find(params[:id])
  end

  def create
    @friend = Friend.new(friend_params)
    if @friend.save
      redirect_to friends_path, notice: "友達を登録しました。"
    else
      render "new"
    end
  end

  def update
    @friend = Friend.find(params[:id])
    @friend.assign_attributes(friend_params)
    if @friend.save
      redirect_to friends_path, notice: "友達の情報を更新しました。"
    else
      render "edit"
    end
  end

  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
    redirect_to :friends, notice: "友達を削除しました。"
  end

  private
  def friend_params
    params.require(:friend).permit(:name)
  end
end
