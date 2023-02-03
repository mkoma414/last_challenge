class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_one_attached :image
  belongs_to :payment_user
  belongs_to :user
  belongs_to :category
  belongs_to :status
  belongs_to :payment_user
  belongs_to :prefecture
  belongs_to :days_to_deliver
  belongs_to :order
end
