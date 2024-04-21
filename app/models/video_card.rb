class VideoCard < ApplicationRecord
  belongs_to :computer, optional: true
end
