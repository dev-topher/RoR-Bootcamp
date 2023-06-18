class CreateJob < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|

      t.string :title
      t.string :image
      t.integer :status, default: 1
      t.text :description

      t.timestamps
    end
  end
end
