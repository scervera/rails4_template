class AddRowOrderToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :row_order, :integer
  end
end
