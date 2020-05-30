class LocalsController < ApplicationController
  def index
    @locals = Local.all
    @promedios
  end

  def show
    @local = Local.find(params[:id])
    @promedio = get_promedio_local(@local)
  end

  def destroy
    @local = Local.find(params[:id])
    @local.destroy
    redirect_to locals_index_path, notice: "Local eliminado con éxito"
  end

  def get_promedio_local(local)
    a = 0.0
    local.reviews.each do |review|
      a += review.calificacion
    end
    b = local.reviews.length
    b != 0 ? a / b : 0
  end

  helper_method :get_promedio_local
end
