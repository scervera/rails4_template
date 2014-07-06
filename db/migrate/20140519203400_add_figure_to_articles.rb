class AddFigureToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :figure, :string
  end
end
