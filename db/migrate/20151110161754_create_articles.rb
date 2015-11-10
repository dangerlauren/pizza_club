class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :author
      t.date :date
      t.string :headline
      t.text :text

      t.timestamps null: false
    end
  end
end
