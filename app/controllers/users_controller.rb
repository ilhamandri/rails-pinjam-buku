class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def create
        @user = User.create(user_params)
        if @user.save
          redirect_to users_path, notice: "Data berhasil ditambahkan"
        else
          render 'new'
        end
    end

    def new
        @user = User.new
    end

    def edit
      @user = User.find(params[:id])
    end

    def show
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])

      if @user.update(user_params)
        redirect_to users_path
      else
        render :edit
      end
    end

    def destroy
      @user = User.find_by(id: params[:id])
      @user.destroy
      redirect_to users_path
    end

    def book_list
      @book_list = "Book List"
      # binding.pry
      @print = params[:user_id]
    end

    private

        def user_params
            params.require(:user).permit(:username, :password, :name, :address, :handphone )
        end
end
