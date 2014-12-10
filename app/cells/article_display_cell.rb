# The order is determined by the row_order attribute of the article as set by the ranked-model gem

class ArticleDisplayCell < Cell::Rails

  def display(article)
  	@articles = Article.where(:publish => true).order('row_order ASC')
    render
  end

end
