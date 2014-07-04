# -*- coding: utf-8 -*-
class Member < ActiveRecord::Base
  has_secure_password

  has_many :member_info
  
  def is_admin?
    return "○" if is_admin
  end
end
