class CreateSeries < ActiveRecord::Migration[7.0]
  def change
    create_table :series do |t|
      t.string :name
      t.text :synopsis
      t.string :director

      t.timestamps
    end
  end
end
