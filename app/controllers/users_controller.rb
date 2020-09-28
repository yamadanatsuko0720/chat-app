#編集機能の実装に必要なコントローラー
class UsersController < ApplicationController
  def edit
  end
  #Userモデルの編集を行うためのアクション
  #ビューを表示させるだけなのでアクションの設定のみでOK

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  #Userモデルの更新を行うためのアクション
  #current_userは現在ログインしているユーザーの情報を取得
  #現在ログインしているユーザーの情報をuser_paramsで取得した情報に更新する
  #updateに成功した場合はredirect_toでroot(チャット画面)にリダイレクト
  #失敗した場合はrender :editでeditのビューを表示させる

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
  #Userモデルのparamsの中のnameとemailのキーだけ取得する
