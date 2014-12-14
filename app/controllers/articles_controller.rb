class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  layout :resolve_layout
  #layout "no-side", :only => [:edit, :new, :create, :index]
  #layout "interior", :only => [:show]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.paginate(:page => params[:page], :per_page => 5).order('created_at DESC')
  end

  def manage
    @articles = Article.rank(:row_order).all
  end

  def update_row_order
    @article = Article.find(article_params[:article_id])
    #@article = Article.find(article_params[:id])
    @article.row_order_position = article_params[:row_order_position]
    @article.save

    render nothing: true # this is a POST action, updates sent via AJAX, no view rendered
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:article_id, :title, :author, :publish, :subtitle, :figure, :content, :row_order_position, :row_order)
    end

    def resolve_layout
      case action_name
      when "edit", "new", "create", "manage"
        "base"
      when "show", "index"
        "interior_left"
      else
        "base"
    end

  end
end
