class Issue < ActiveRecord::Base
  validates :title, :presence => true
  validates :title, length: {minimum: 5}
  belongs_to :user
end
