class Customer < ApplicationRecord
  has_many :visits, dependent: :destroy
end
