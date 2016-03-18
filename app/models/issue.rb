class Issue < ActiveRecord::Base
  validates :title, :presence => true
  validates :title, length: {minimum: 5}
  belongs_to :user
  belongs_to :status
  has_many :note
end
