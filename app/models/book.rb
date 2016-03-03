class Book < ActiveRecord::Base
  belongs_to :author
  attachment :photo_id
end
