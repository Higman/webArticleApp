class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :delete]

  validates :title, presence: true

  def index
    
  end

  def show
  end

  def edit
  end

  def delete
  end
end
