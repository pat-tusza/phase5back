class User < ApplicationRecord
    has_many :watcheds
    has_many :members, through: :watcheds
end
