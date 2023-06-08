class Serie < ApplicationRecord
    validates :name, :synopsis, :director, presence: true
end
