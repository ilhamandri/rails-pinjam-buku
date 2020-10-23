class RentalsController < ApplicationController

  def index
    @rentals = Rental.all

    # @user_name = Author.find_by(id: Rental.ids).name
    # @book_title = Book.find_by(id: Rental.ids).title
  end

  def create
    @rental = Rental.create(rental_params)
    @rental.save
    redirect_to rentals_path
  end

  def new
    @rental = Rental.new

  end


  private
    def rental_params
      params.require(:rental).permit(:day, :book_id, :user_id)
    end

end
