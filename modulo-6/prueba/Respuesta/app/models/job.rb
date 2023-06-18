class Job < ApplicationRecord

    enum :status, [:error, :active, :ended]

    has_many :applies

    has_one_attached :image

    validates :title, presence: true
    validates :image, presence: true
    validates :description, presence: true

    def to_s
        self.title
    end

end