class Blog < ActiveRecord::Base
 has_many :comments
 validates :title, presence: true,
                   length: { minimum: 5 } 
end