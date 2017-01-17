class Room < ActiveRecord::Base
  belongs_to :hotel
  validates :name, presence: true
  belongs_to :reservation
   has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/rooms/missing.gif"
   validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
