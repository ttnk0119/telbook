class Friend < ActiveRecord::Base
  has_many :telephones, dependent: :destroy

  validates :name, presence: true,
    length: { maximum: 10, allow_blank: true }
end
