class AuthorsController < ApplicationController

  before_action do
    @current_user = User.find_by id: session[:user_id]
    redirect_to login_path, alert: "Please login to continue." if @current_user.blank?
  end

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
    @author.save ? (redirect_to authors_path, notice: "New Author Created!") : (render :new)
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
    @author.save ? (redirect_to author_path, notice: "Author Updated!") : (render :edit)
  end

  def delete
    @author = Author.find_by id: params[:id]
    @author.destroy ? (redirect_to authors_path, alert: "Author Deleted!") : (render :edit)
  end
end
