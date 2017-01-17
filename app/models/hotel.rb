class Hotel < ActiveRecord::Base
    has_many :rooms
    validates :name, :description, presence:true
    belongs_to :user
    has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/hotels/missing.gif"
    validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
