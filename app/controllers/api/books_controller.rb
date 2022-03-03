module Api
  class BooksController < ApplicationController
    def index
      books = Book.ransack(params[:q]).result(distinct: true)
      books = books.map do |book|
        book
      end
      render json: books
    end

    def create
    end

    def show
    end

    def update
    end

    def edit
    end

    def destroy
    end
  end
end
