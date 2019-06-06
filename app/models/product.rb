# == Schema Information
#
# Table name: products
#
#  id            :integer          not null, primary key
#  name          :string
#  category_id   :integer
#  average_price :float
#  product_image :string
#  purchase_link :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Product < ApplicationRecord
    
    has_many :routine_products, :dependent => :destroy
has_many :product_concerns, :dependent => :destroy
belongs_to :category
end
