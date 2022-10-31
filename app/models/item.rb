class Item < ApplicationRecord
  belongs_to :supermarket
  validates_presence_of :name
  validates_presence_of :price
end