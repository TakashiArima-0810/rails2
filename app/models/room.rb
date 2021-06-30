class Room < ApplicationRecord
    mount_uploader :room_image, RoomImageUploader
    
    has_many :reservations
    belongs_to :user, optional: true
end
