class TipoComida < ApplicationRecord
    
    before_validation :convertir_a_minusculas
    after_save :enviar_correo
    
    has_many :restaurantes #en plural
    
    validates(:tipo, presence: true)
    validates(:tipo, uniqueness: true)
    
    private
    def convertir_a_minusculas    
        puts "ANTES DE LA VALIDACIÓN"   
        self.tipo.downcase!

        # self.tipo =self.tipo.downcase
        # @tipo.capitalize
    end

    def enviar_correo 
        puts "DESPUÉS DE GUARDAR".center(50,".")         
    end

    def imprimir_el_eliminado 
        puts "#{self.tipo} ELIMINADO".center(50,"🔴")         
    end
end
