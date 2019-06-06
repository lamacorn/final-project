# == Schema Information
#
# Table name: concerns
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :text
#  example_photo :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Concern < ApplicationRecord
    
    has_many :customer_concerns, :dependent => :destroy
has_many :product_concerns, :dependent => :destroy
    
end
