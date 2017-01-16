class User < ActiveRecord::Base
  has_many :reservations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
         
  enum role: { customer: 'customer', admin: 'admin', sup_admin: 'sup_admin' }
  
  has_many :hotels
end
