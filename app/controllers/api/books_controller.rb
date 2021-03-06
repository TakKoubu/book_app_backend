module Api
  class BooksController < ApplicationController
    def index
      books = Book.ransack(params[:q]).result(distinct: true)
      render json: books
    end

    def create
    end

    def show
      book = Book.find(params[:id])
      render json: book
    end

    def update
    end

    def edit
    end

    def destroy
    end
  end
end
