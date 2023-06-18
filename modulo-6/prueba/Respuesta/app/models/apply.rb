class Apply < ApplicationRecord

    enum :status, [:error, :active, :approved, :rejected]

    belongs_to :job
    belongs_to :user
 
end