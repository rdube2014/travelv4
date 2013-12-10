class Reply < ActiveRecord::Base



has_many :photos

belongs_to :user

belongs_to :request



end
