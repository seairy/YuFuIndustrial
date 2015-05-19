class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :zh_name, :en_name, limit: 100, null: false
      t.string :zh_short_name, :en_short_name, limit: 100, null: false
      t.string :logo, limit: 100
      t.string :poster, limit: 100
      t.text :zh_description, :en_description, limit: 30000
      t.string :zh_short_description, :en_short_description, limit: 150
      t.integer :position, limit: 1, null: false
      t.timestamps null: false
    end
  end
end
