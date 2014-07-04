# -*- coding: utf-8 -*-
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

  has_many :member_info
  
  def is_admin?
    return "○" if is_admin
  end
end
