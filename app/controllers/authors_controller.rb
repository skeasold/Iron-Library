class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new
    @author.first_name = params[:author][:first_name]
    @author.last_name = params[:author][:last_name]
    @author.bio = params[:author][:bio]
    @author.save ? (redirect_to authors_path) : (render :new)
  end

  def show
    @author = Author.find_by id: params[:id]
  end

  def edit
    @author = Author.find_by id: params[:id]
  end

  def update
    @author = Author.find_by id: params[:id]
    @author.first_name = params[:author][:first_name]
    @author.last_name = params[:author][:last_name]
    @author.bio = params[:author][:bio]
    @author.save ? (redirect_to author_path) : (render :edit)
  end

  def delete
    @author = Author.find_by id: params[:id]
    @author.destroy ? (redirect_to posts_path) : (render :edit)
  end
end
