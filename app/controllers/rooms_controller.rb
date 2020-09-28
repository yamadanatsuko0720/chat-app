class RoomsController < ApplicationController

  def index
  end
  
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
      #配列として受け取ったデータを含むストロングパラメーターを定義/4711
    end
  end

  def destroy
    room = Room.find(params[:id])
    #削除したいチャットルームの情報を取得
    #削除するだけでビューの表示は必要ないので@インスタンス変数ではなくてOK
    room.destroy
    #destroyメソッドを使用
    redirect_to root_path
    #destroyメソッドが実行されたらrootへリダイレクトされる
  end

  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
    #配列に対して保存を許可したい場合はバリューに[]を入れる
  end


end
