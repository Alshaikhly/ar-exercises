class Store < ActiveRecord::Base
  extend ActiveModel::Naming
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
end
