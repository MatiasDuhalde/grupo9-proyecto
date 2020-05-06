class LocalsController < ApplicationController
  def index
    @locals = Local.all
  end

  def show
    @local = Local.find(params[:id])
  end
end
