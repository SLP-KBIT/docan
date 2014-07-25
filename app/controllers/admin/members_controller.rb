class Admin::MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def new
    @member = Member.new
  end

  def create
    @member =  Member.new(member_params)
    if @member.save
      flash[:success] = "登録しました。"
      redirect_to admin_members_path
    else
      render 'new'
    end
  end

  def destroy
    Member.where(id: params[:id]).first.destroy
    flash[:destroy] = "削除しました。"
    redirect_to admin_members_path
  end

  private

  def member_params
    params.require(:member).permit(
      :name,
      :account,
      :is_admin,
      :password,
      :password_confirmation
    )
  end
end
