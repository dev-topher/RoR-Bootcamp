class Client < ApplicationRecord
  belongs_to :movie, optional: true

  def to_s
    self.name
  end
end