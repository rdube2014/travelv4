class Reply < ActiveRecord::Base



has_many :photos

belongs_to :user

belongs_to :request

validates :reply_text, :presence => true

end
