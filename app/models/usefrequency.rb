# == Schema Information
#
# Table name: usefrequencies
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Usefrequency < ApplicationRecord
    
    has_many :routine_products, :foreign_key => "use_frequency_id", :dependent => :destroy

    
end
