class Category < ApplicationRecord
    has_many :produtos, dependent: :nullify
end
