class PagesController < ApplicationController

layout :colocar_layout

  def home
  	@tipo_servicios = TipoServicio.all
  end

  def index
  end

  def home_admin
  end

  def colocar_layout
  	puts usuario_signed_in?
  	puts current_usuario

  	if usuario_signed_in?
  		"administrador"
  	else
  		"application"
  	end
  end
end
