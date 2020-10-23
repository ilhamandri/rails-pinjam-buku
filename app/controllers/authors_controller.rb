class AuthorsController < ApplicationController

  def index
    @authors = Author.all
  end

  def create
    @author = Author.create(author_params)

    if @author.save
      # if paras[:asd]
      #   return redirect_to authors_path(asd: @author.id)
      # end
      redirect_to authors_path
    else
      render 'new'
    end
  end

  def new
    @author = Author.new
  end

  def show
    @author = Author.find(params[:id])
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])

    if @author.update(author_params)
      redirect_to authors_path
    else
      render 'edit'
    end
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to authors_path
  end

  private
    def author_params
      params.require(:author).permit(:name, :age, :address)
    end


end
