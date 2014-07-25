# == Schema Information
#
# Table name: members
#
#  id              :integer          not null, primary key
#  account         :text
#  password_digest :text
#  name            :text
#  is_admin        :boolean
#  deleted_at      :datetime
#  created_at      :datetime
#  updated_at      :datetime
#

class Member < ActiveRecord::Base
  has_secure_password
  acts_as_paranoid

  has_many :member_info

  validates :account, presence: { message: 'アカウント名を入力してください' }
  validates :name, presence: { message: '氏名を入力してください' }
  validates :password_digest, presence: { message: 'パスワードを入力してください' }
  validates :is_admin, inclusion: { in: [true, false] }
  
  def mark
    return "○" if is_admin
  end
end
