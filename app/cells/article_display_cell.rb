class ArticleDisplayCell < Cell::Rails

  def display(article)
  	@articles = Article.where(:publish => true).order('created_at DESC')
    render
  end

end
