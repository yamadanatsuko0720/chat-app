#rootパス表示用に作成
class MessagesController < ApplicationController
  def index
    @message = Message.new
    @room = Room.find(params[:room_id])
    @messages = @room.messages.includes(:user)
    #チャットルームに紐づく全てのメッセージをincludesメソッドで取得/4863
  end

  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)
    if  @message.save
      redirect_to room_messages_path(@room)
    else
      @messages = @room.messages.includes(:user)
      #indexの表示の時と同様に表示させるメッセージを定義しておく必要がある/4863
      render :index
    end
  end
  #投稿されたメッセージの保存を許可してDBに保存させる/4861

  private

  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end

end
