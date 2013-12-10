class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :requests

has_many :replies, :through => :requests

has_many :photos, :through => :replies

has_many :expert_replies, :class_name => "Reply"

has_many :expert_photos, :through => :expert_replies, :source => :photos

def full_name                                                                                                                                                                                     
  ([first_name, last_name] - ['']).compact.join(' ')                         
end

validates :first_name, :presence => true

validates :last_name, :presence => true

end
