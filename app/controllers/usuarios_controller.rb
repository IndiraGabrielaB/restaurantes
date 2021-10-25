#Los controladores son en plural
class UsuariosController <ApplicationController

    #GET /usuarios/nuevo
    def crear
        @usuario = Usuario.new
    end

       #GET /usuarios/:id
       def mostrar
        @usuario = Usuario.find(params[:id])
    end

    def editar

    end

    #POST /usuarios    
    def guardar
        datos_usuario = params.require(:usuario).permit(:nombre_usuario, :password, :password_confirmation)
        @usuario = Usuario.new(datos_usuario)
        if @usuario.save
            redirect_to usuario_path(@usuario)
        else 
            render :crear
        end
    end
end