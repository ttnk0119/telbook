class Telephone < ActiveRecord::Base
  belongs_to :friend

  validates :number, presence: true,
    format: { with: /\A[-()0-9]+\z/ },
    length: { maximum: 15 },
    uniqueness: true
end
