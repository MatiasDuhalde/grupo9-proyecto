class GustosController < ApplicationController
  def new
    @gusto = Gusto.new 
  end

  def create

    @gusto = Gusto.create(gusto_params)

    if @gusto.save

      redirect_to gustos_index_path, notice:"Gusto fue creada exitosamente"
    
    else

      redirect_to gustos_index_path, notice:"Ocurrio un error al crear el gusto"
    
    end
    
  end
  

  def index
    @gustos = Gusto.all
  end

  def show
    @gusto = Gusto.find(params[:id])
  end

  def edit
    @gusto = Gusto.find(params[:id])
  end

  def update
    @gusto = Gusto.find(params[:id])

    if @gusto.update(gusto_params)
      redirect_to gusto_path(@gusto.id), notice:"Gusto modificado con exito"
    
    else
      redirect_to gusto_path(@gusto.id), notice:"Ocurrio un error al modificar el gusto"
    
    end

  end

  def destroy
    @gusto = Gusto.find(params[:id])
    @gusto.destroy
    redirect_to gustos_index_path, notice: "Gusto eliminado con exito"
    
  end



  private
    def gusto_params
      params.require(:gusto).permit(:gusto_nombre, :gusto_descripcion)
    end

end
