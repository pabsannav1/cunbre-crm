class User < ApplicationRecord
  has_many :user_extension
  has_many :invoice
  has_many :vat

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
