class CreateApplies < ActiveRecord::Migration[7.0]
  def change
    create_table :applies do |t|

      t.text :application
      t.integer :status, default: 1
      
      t.references :user, null: false, foreign_key: true
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
