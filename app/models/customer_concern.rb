# == Schema Information
#
# Table name: customer_concerns
#
#  id          :integer          not null, primary key
#  concern_id  :integer
#  customer_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CustomerConcern < ApplicationRecord
    
    belongs_to :customer
    belongs_to :concern

    
end
