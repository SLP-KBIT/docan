# == Schema Information
#
# Table name: types
#
#  id         :integer          not null, primary key
#  name       :text
#  template   :text
#  deleted_at :datetime
#  created_at :datetime
#  updated_at :datetime
#

class Type < ActiveRecord::Base
end
