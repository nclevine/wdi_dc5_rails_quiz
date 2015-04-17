class Circus < ActiveRecord::Base
  has_many :entertainers, dependent: :destroy
  validates :name, presence: true
  validates :image_url, presence: true
end
