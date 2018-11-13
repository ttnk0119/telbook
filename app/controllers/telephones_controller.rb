class TelephonesController < ApplicationController
  def create
    @telephone = Telephone.new(telephone_params)
    @friend = Friend.find(params[:friend_id])
    @telephone.friend_id = params[:friend_id]
    if @telephone.save
      redirect_to friend_path(@friend), notice: "電話番号を追加しました。"
    else
      @telephones = @friend.telephones
      #render friend_path(@friend)
      render "friends/show"
    end
  end

  def destroy
    @friend = Friend.find(params[:friend_id])
    @telephone = Telephone.find(params[:id])
    @telephone.destroy
    redirect_to friend_path(@friend), notice: "電話番号を削除しました"
  end
    

  private
  def telephone_params
    params.require(:telephone).permit(:friend_id, :number, :cellphone)
  end

end
