class Supermarket < ApplicationRecord
  has_many :items
  has_many :customers
  validates_presence_of :name
  validates_presence_of :location
end