Rails.application.routes.draw do
  
  # Usuarios

    get     'usuarios/nuevo',           to: 'usuarios#crear',          as: 'nuevo_usuario'
    get     'usuarios/:id',             to: 'usuarios#mostrar',        as: 'usuario'
    get     'usuarios/:id/editar',      to: 'usuarios#editar',         as: 'editar_usuario'

    post    'usuarios',                 to: 'usuarios#guardar',        as: 'usuarios'
  end
