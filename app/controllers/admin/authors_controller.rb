class Admin::AuthorsController < Admin::AdminController
  before_action :set_author, only: [:edit, :update, :destroy]

  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new author_params
    if @author.save
      redirect_to admin_authors_path
    end
  end

  def edit
  end

  def update
    if @author.update author_params
      redirect_to admin_authors_path
    end
  end

  def destroy
    @author.destroy
    redirect_to admin_authors_path
  end

  private

  def author_params
    params.require(:author).permit :name
  end

  def set_author
    @author = Author.find(params[:id])
  end

end
