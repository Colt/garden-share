class GardensController < ApplicationController
  before_action :authenticate, only: [:new, :edit, :create, :update, :destroy]
  
  def index
    @gardens = Garden.all
  end

  def new
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end
end
