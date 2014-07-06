class Article < ActiveRecord::Base
	require 'carrierwave/orm/activerecord'
	
	mount_uploader :figure, FigureUploader
end
