class Movie < ApplicationRecord
  has_many :clients

  def to_s
    self.name
  end
end