# == Schema Information
#
# Table name: member_infos
#
#  id              :integer          not null, primary key
#  member_id       :integer
#  student_number  :text
#  phone_number    :text
#  birthday        :datetime
#  position        :text
#  twitter_account :text
#  labo            :text
#  deleted_at      :datetime
#  created_at      :datetime
#  updated_at      :datetime
#

class MemberInfo < ActiveRecord::Base
  belongs_to :member, foreign_key: :member_id, class_name: Member
end
