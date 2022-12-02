class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :body

      t.timestamps
    end
    add_index :articles, :title, unique: true
  end
end
