class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :project_id
      t.string :name
      t.string :email
      t.text :body

      t.timestamps
    end
  end
end
