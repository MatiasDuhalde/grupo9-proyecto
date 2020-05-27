class MatchesController < ApplicationController

    def create 
        @liker_id = params[:liker_id]
        @liked_id = params[:liked_id]
        @accept = params[:accept]
        @n_rejections = params[:n_rejections]
        @liked_bool_local = params[:liked_bool_local]
        @liker_bool_local = params[:liker_bool_local]

        @diccionario = {"accept" => @accept, "n_rejections" => @n_rejections, "liked_bool_local" => @liked_bool_local,
                    "liker_bool_local" => @liker_bool_local, "liker_id" => @liker_id, "liked_id" => @liked_id}
        
        @match = Match.create(@diccionario)
        if @match.save
            redirect_to users_index_path, notice: "Fue enviada la solicitud de match exitosamente"
        else
            redirect_to users_index_path, notice: "Ocurrió un error"
        end

    end


    def show_especial 
    
    end

    def update
        @match_id = params[:match_id]
        @accept = params[:accept]
        
        @diccionario = {"accept" => @accept}

        @match = Match.find(@match_id)

        if @match.update(@diccionario)
            redirect_to matches_show_especial_path, notice: "Se ha realizado el match correctamente!"
        else
            redirect_to matches_show_especial_path, notice: "Ocurrió un error"
        end

    end


    def update_rejections

        @match_id = params[:match_id]
        @n_rejections = params[:n_rejections]

        @diccionario = {"n_rejections" => @n_rejections}

        @match = Match.find(@match_id)

        if @match.update(@diccionario)
            redirect_to matches_show_especial_path, notice: "Se ha rechazado el match correctamente!"
        else
            redirect_to matches_show_especial_path, notice: "Ocurrió un error"
        end
        
    end


    def management_local_view

        @match_id = params[:match_id]
        @match = Match.find(@match_id)

        @locals = Local.all
    
    end

    def update_local_and_boolean

        @match_id = params[:match_id]
        @user_type = params[:user_type]
        @local_id = params[:local_id]

        @match = Match.find(@match_id)

        if  @user_type == "liker"

            @diccionario = {"local_id" => @local_id, "liker_bool_local" => true}

            if @match.update(@diccionario)
                redirect_to matches_show_especial_path, notice: "Se ha actualizado el local correctamente!"
            else
                redirect_to matches_show_especial_path, notice: "Ocurrió un error"
            end

        
        elsif @user_type == "liked"

            @diccionario = {"local_id" => @local_id, "liked_bool_local" => true}

            if @match.update(@diccionario)
                redirect_to matches_show_especial_path, notice: "Se ha actualizado el local correctamente!"
            else
                redirect_to matches_show_especial_path, method: :patch, notice: "Ocurrió un error"
            end


        end
    
    end

    def accept_local

        @match_id = params[:match_id]
        @user_type = params[:user_type]

        @match = Match.find(@match_id)

        if  @user_type == "liker"

            @diccionario = {"liker_bool_local" => true}

            if @match.update(@diccionario)
                redirect_to matches_show_especial_path, notice: "Se ha actualizado el local correctamente!"
            else
                redirect_to matches_show_especial_path, notice: "Ocurrió un error"
            end

        
        elsif @user_type == "liked"

            @diccionario = {"liked_bool_local" => true}

            if @match.update(@diccionario)
                redirect_to matches_show_especial_path, notice: "Se ha actualizado el local correctamente!"
            else
                redirect_to matches_show_especial_path, notice: "Ocurrió un error"
            end


        end

    
    end 


    def change_local

        @match_id = params[:match_id]
        @user_type = params[:user_type]
        @local_id = params[:local_id]

        @match = Match.find(@match_id)

        if  @user_type == "liker"

            @diccionario = {"liker_bool_local" => true, "liked_bool_local" => false, "local_id" => @local_id}

            if @match.update(@diccionario)
                redirect_to matches_show_especial_path, notice: "Se ha actualizado el local correctamente!"
            else
                redirect_to matches_show_especial_path, notice: "Ocurrió un error"
            end

        
        elsif @user_type == "liked"

            @diccionario = {"liked_bool_local" => true, "liker_bool_local" => false, "local_id" => @local_id}

            if @match.update(@diccionario)
                redirect_to matches_show_especial_path, notice: "Se ha actualizado el local correctamente!"
            else
                redirect_to matches_show_especial_path, notice: "Ocurrió un error"
            end


        end


    
    end


end
