class AddSubtitleToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :subtitle, :string
  end
end
