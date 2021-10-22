Rails.application.routes.draw do
  
  # Usuarios

    get     'usuarios/nuevo',          to: 'usuarios#crear',         as: 'nuevo_usuario'
    post    'usuarios',                to: 'usuarios#guardar',       as: 'usuarios'
  end
