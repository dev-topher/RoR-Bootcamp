class DocumentaryFilm < ApplicationRecord
    validates :name, :synopsis, :director, presence: true
end
