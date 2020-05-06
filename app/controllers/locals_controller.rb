class LocalsController < ApplicationController
  def index
    @locals = Local.all
  end

  def show
    @local = Local.find(params[:id])
  end

  def destroy
    @local = Local.find(params[:id])
    @local.destroy
    redirect_to locals_index_path, notice: "Local eliminado con éxito"
  end
end
