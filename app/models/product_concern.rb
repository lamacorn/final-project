# == Schema Information
#
# Table name: product_concerns
#
#  id         :integer          not null, primary key
#  concern_id :integer
#  product_id :integer
#  good_for   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductConcern < ApplicationRecord
    
    belongs_to :product
    belongs_to :concern
    
end
