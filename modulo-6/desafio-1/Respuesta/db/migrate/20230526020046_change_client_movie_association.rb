class ChangeClientMovieAssociation < ActiveRecord::Migration[6.0]
  def change
    remove_reference :movies, :client, foreign_key: true
    add_reference :clients, :movie, foreign_key: true
  end
end
