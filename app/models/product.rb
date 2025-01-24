class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :name, format: { with: /\A[a-zA-Z]+\z/,
  message: "only allows letters" }
  belongs_to :supplier
  has_many :images
end


def is_discounted?
  if @product.price <= 10
    true
  else
    false
  end
  def tax
    taxed = @product.price * 0.09
    taxed
  end
  def total
    taxed = @product.price * 0.09
    total = taxed + @product.price
    total
  end
end
