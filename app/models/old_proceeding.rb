# == Schema Information
#
# Table name: old_proceedings
#
#  id            :integer          not null, primary key
#  title         :text
#  content       :text
#  sender_id     :integer
#  project_id    :integer
#  date          :datetime
#  type_id       :text
#  version       :integer
#  proceedint_id :integer
#  deleted_at    :datetime
#  created_at    :datetime
#  updated_at    :datetime
#

class OldProceeding < ActiveRecord::Base
end
