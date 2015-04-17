class Entertainer < ActiveRecord::Base
  belongs_to :circus

  validates :name, presence: true
  validates :specialty, presence: true
  validates :circus_id, presence: true
end
