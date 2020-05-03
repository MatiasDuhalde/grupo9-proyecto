class ComunasController < ApplicationController
  def index
    @comunas = Comuna.all
  end

  def new
    @comuna_especifica = Comuna.new
  end

  def show
    @comuna = Comuna.find(params[:id])
  end

  def create
    @comuna = Comuna.create(comuna_params)
    if @comuna.save
      redirect_to comunas_index_path, notice: "Comuna fue creada exitosamente"
    else
      redirect_to comunas_index_path, notice: "Ocurrió un error al crear la comuna"
    end
  end

  def edit
    @comuna = Comuna.find(params[:id])
  end

  def update
    @comuna = Comuna.find(params[:id])
    if @comuna.update(comuna_params)
      redirect_to comuna_path(@comuna.id), notice: "Comuna modificada con éxito"
    else
      redirect_to comuna_path(@comuna.id), notice: "Ocurrio un error al modificar la comuna"
    end
  end

  def destroy
    @comuna = Comuna.find(params[:id])
    @comuna.destroy
    redirect_to comunas_index_path, notice: "Comuna eliminada con éxito"
  end

  private

  def comuna_params
    params.require(:comuna).permit(:nombre_comuna)
  end
end
