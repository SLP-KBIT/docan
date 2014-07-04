# == Schema Information
#
# Table name: proceedings
#
#  id         :integer          not null, primary key
#  title      :text
#  content    :text
#  sender_id  :integer
#  project_id :integer
#  date       :datetime
#  type_id    :text
#  version    :integer
#  deleted_at :datetime
#  created_at :datetime
#  updated_at :datetime
#

class Proceeding < ActiveRecord::Base
end
