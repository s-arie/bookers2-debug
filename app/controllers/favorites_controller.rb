class FavoritesController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    @favorite = Favorite.new(book_id: book.id)
    @favorite.user_id = current_user.id
    @favorite.save
    render 'replace_btn'
  end

  def destroy
    book = Book.find(params[:book_id])
    @favorite = Favorite.find_by(book_id: book.id)
    @favorite.user_id = current_user.id
    @favorite.destroy
    render 'replace_btn'
  end
end