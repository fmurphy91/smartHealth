class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_attached_file :poster, styles: { medium: "400x600#" }
         validates_attachment_content_type :poster, content_type: /\Aimage\/.*\Z/
  has_one :doctor
end
