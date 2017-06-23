class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :delete]

  def index
    
  end

  def show
  end

  def new
  end

  def create
    user = User.find(paramas[:user_id])
    User.articles.create(params.require(:article).permit(:title, :content))
    redirect_to user(users)
  end

  def edit
  end

  def delete
  end
end
