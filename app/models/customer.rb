# frozen_string_literal: true

class Customer < ApplicationRecord
  has_many :visits, dependent: :destroy

  def full_name
    "#{first} #{middle} #{last}"
  end
end
