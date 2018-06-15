class BooksController < ApplicationController

    def allBooks 
        @book = Book.all
        render json: @book
    end

    def singleBooks
        @book = Book.find(params[:id])
        render json: @book
    end

end
