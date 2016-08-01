class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
has_one :student , dependent: :destroy
has_one :admin, :dependent => :destroy

mount_uploader :path, UserpUploader
end
