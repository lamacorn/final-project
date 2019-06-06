# == Schema Information
#
# Table name: customers
#
#  id              :integer          not null, primary key
#  email           :string
#  firstname       :string
#  lastname        :string
#  photo           :string
#  birthday        :date
#  address_street  :string
#  address_city    :string
#  address_state   :string
#  address_zipcode :string
#  notes           :text
#  optin_email     :boolean
#  optin_texts     :boolean
#  phone           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Customer < ApplicationRecord
    
    has_many :routines, :dependent => :destroy
    has_many :customer_concerns, :dependent => :destroy
    
end
