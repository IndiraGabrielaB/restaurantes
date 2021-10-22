# Modelo va en singular
class Puntaje <ApplicationRecord
    belongs_to(:tipo_comida)

    validates(:nombre, presence: true)
    validates(:nombre, uniqueness: true)
end