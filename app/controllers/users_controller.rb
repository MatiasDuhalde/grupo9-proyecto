class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def add_gusto
    @user = User.find(params[:user_id])
    @gusto = Gusto.find(params[:gusto_id])
    message = if !@user.gustos.include?(@gusto) && @user.gustos << @gusto
                "Se agregó el gusto #{@gusto.nombre} correctamente."
              else
                "No se pudo agregar el gusto #{@gusto.nombre}."
              end
    respond_to do |format|
      format.html { redirect_to gustos_index_path, notice: message }
      format.json { head :no_content }
    end
  end

  def remove_gusto
    @user = User.find(params[:user_id])
    @gusto = Gusto.find(params[:gusto_id])
    message = if @user.gustos.delete(@gusto)
                "Se quitó el gusto #{@gusto.nombre} correctamente."
              else
                "No se pudo quitar el gusto #{@gusto.nombre}."
              end
    respond_to do |format|
      format.html { redirect_to gustos_index_path, notice: message }
      format.json { head :no_content }
    end
  end
end
