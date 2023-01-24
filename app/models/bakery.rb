class Bakery < ActiveRecord::Base
  has_many :baked_goods, dependent: :destroy
end
