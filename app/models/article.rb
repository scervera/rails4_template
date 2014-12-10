class Article < ActiveRecord::Base
	require 'carrierwave/orm/activerecord'
	mount_uploader :figure, FigureUploader

# This is the gem that enables dragging and reordering articles using the row_position integer value
	include RankedModel
  	ranks :row_order

  	
end
