class User < ApplicationRecord
    has_many :micro_posts
    validates :name ,:email,presence: true

end
