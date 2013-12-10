class Request < ActiveRecord::Base

has_many :replies

belongs_to :user

def full_name                                                                                                                                                                                     
  ([first_name, last_name] - ['']).compact.join(' ')                         
end

validates :request_text, :presence => true

validates :travel_to_city, :presence => true

end
