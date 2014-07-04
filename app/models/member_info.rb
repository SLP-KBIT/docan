class MemberInfo < ActiveRecord::Base
  belongs_to :member, foreign_key: :member_id, class_name: Member
end
