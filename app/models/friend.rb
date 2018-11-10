class Friend < ActiveRecord::Base
  has_many :telephones, dependent: :destroy
end
