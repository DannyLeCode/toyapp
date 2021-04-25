class Customer < ApplicationRecord
  validates :username, presence: true, length: { maximum: 25 }
  validates :email, presence: true, length: { maximum: 100 },
 format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i}
end
