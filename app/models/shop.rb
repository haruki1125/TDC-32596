class Shop < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :price
  belongs_to :category

  has_one_attached :image

  with_options presence: true do
    validates :shop_name
    validates :info
    validates :image
  end

  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :price_id
  end
end
