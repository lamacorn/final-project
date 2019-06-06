# == Schema Information
#
# Table name: routine_products
#
#  id               :integer          not null, primary key
#  routine_id       :integer
#  product_id       :integer
#  use_frequency_id :integer
#  note             :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class RoutineProduct < ApplicationRecord
    
    belongs_to :product
    belongs_to :routine
    belongs_to :use_frequency, :class_name => "Usefrequency"


end
