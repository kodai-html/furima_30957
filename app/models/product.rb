class Product < ApplicationRecord
  belongs_to :users
  has_one :purchases
  has_one_attached

  validates :image, presence: true
  validates :name, presence: true
  validates :explain, presence: true
  validates :category_id, presence: true
  validates :state_id, presence: true
  validates :burden_id, presence: true
  validates :area_id, presence: true
  validates :date_id, presence: true
  validates :price, presence: true
  validates :fee, presence: true
  validates :profit, presence: true
end
