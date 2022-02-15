class Book < ApplicationRecord
    has_many :loans, dependent: :destroy
end
