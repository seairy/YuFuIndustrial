class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :code, limit: 50, null: false
      t.string :name, limit: 50, null: false
      t.string :poster, limit: 100
      t.text :zh_content, :en_content, limit: 30000
      t.timestamps null: false
    end
  end
end
