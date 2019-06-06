# == Schema Information
#
# Table name: routines
#
#  id           :integer          not null, primary key
#  customer_id  :integer
#  active       :boolean
#  createdby_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Routine < ApplicationRecord
    
    belongs_to :customer
    has_many :routine_products, :dependent => :destroy
    belongs_to :createdby, :class_name => "Coach"
    
    
end
