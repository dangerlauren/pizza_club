class AddImageLinkToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :image_link, :text
  end
end
