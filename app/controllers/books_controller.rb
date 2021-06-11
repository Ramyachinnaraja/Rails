class BooksController < ApplicationController
	
	def list
		@list = 'list of books'
		@books =  Book.all
	end

	def show
	 	@book = Book.find(params[:id])
    end
end



