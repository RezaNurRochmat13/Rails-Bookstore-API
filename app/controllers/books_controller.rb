class BooksController < ApplicationController

    def allBooks 
        @book = Book.all
        render json: @book
    end

    def singleBooks
        @book = Book.find(params[:id])
        render json: @book
    end

    def createNewBooks
        @book = Book.new(book_name: params[:book_name], book_writer: params[:book_writer], 
        book_publisher: params[:book_publisher], book_description: params[:book_description])
        
        if @book.save
            render json: @book, status: 200
        else
            render json: {error: 'Insert data failed'}, status: 400
        end 
    end

    def updateBooks
        @book = Book.find(params[:id])
        if @book.update(book_name: params[:book_name], book_writer: params[:book_writer], 
            book_publisher: params[:book_publisher], book_description: params[:book_description])
            render json: @book, status: 200
        else
            render json: {error: 'Process not completed'}, status: 400
        end
    end

    def deleteBooks
        @book = Book.find(params[:id])
        if @book.destroy
            render json: {status: 200}
        else
            render json: {status: 400}
        end
    end

end
