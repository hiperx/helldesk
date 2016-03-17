class Note < ActiveRecord::Base
  belongs_to :User
  belongs_to :Issue
end
