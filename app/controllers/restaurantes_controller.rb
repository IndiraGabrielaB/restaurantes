# Controladores son en Plural
class RestaurantesController < ApplicationController
    
    before_action :asignar_restaurante, only: [:editar, :mostrar, :actualizar, :eliminar]
    # Get restaurantes 
    def listar
        @restaurantes = Restaurante.all
    end

    # Get restaurantes/nuevo
    def crear
        @restaurantes  = Restaurante.new
        @tipos_comidas = TipoComida.all
    end

    def editar
        @tipos_comidas = TipoComida.all
    end

    def mostrar
      
    end

    #POST /restaurantes
    def guardar
        @restaurante = Restaurante.new(params_restaurantes)
        if @restaurante.save
            redirect_to restaurantes_path #TODO: crear la ruta de todos los resturantes
        else
            @tipos_comidas = TipoComida.all
            render :crear
        end
    end

        def actualizar
            @restaurante.nombre = params_restaurante[:nombre]
            @restaurante.tipo_comida_id = params_restaurante[:tipo_comida_id]
            if @restaurante.save
                redirect_to restaurantes_path
            else
                @tipos_comidas = TipoComida.all
                render :editar
            end
        end

        def eliminar
            @restaurante.destroy
            redirect_to restaurantes_path
        end

        private 

        def asignar_restaurante
            @restaurante = Restaurante.find(params[:id])
        end
        
        def params_restaurante
            datos_restaurantes = params.require(:restaurante).permit(:nombre, :tipo_comida_id)
        end
end