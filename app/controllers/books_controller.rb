class BooksController < ApplicationController

    def index 
        @book = Book.all
        render json: @book
    end

    def singleBooks
        @book = Book.find(params[:id])
        render json: @book
    end

end
