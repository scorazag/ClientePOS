class ProfesorController < ApplicationController
  def index
    
  end


  def pregunta1
    @preg1 = params[:preg1]
    @preg1b = params[:preg1b]
    buscar = @preg1.to_s
    buscarb = @pre1b.to_s
    cliente = Savon.client(wsdl:'http://aisii.azc.uam.mx:8080/ServiciosConsultaRuby/ConsultaAcademicoService?wsdl')

    response = cliente.call(:buscar_salon,message: { profesor: buscar,horario:buscarb})
    finalRes = response.to_hash
    finalR = finalRes[:buscar_salon_response]
    render html: finalR[:return]
  end

  def pregunta2
    @preg2 = params[:preg2]
    buscar = @preg2.to_s
    cliente = Savon.client(wsdl:'http://aisii.azc.uam.mx:8080/ServiciosConsultaRuby/ConsultaAcademicoService?wsdl')
    response = cliente.call(:buscar_horario_profesor,message: { profesor: buscar})
    finalRes = response.to_hash
    finalR = finalRes[:buscar_horario_profesor_response]
    render html: finalR[:return]
  end

  def pregunta3
    @preg3 = params[:preg3]
    buscar = @preg3.to_s
    cliente = Savon.client(wsdl:'http://aisii.azc.uam.mx:8080/ServiciosConsultaRuby/ConsultaAcademicoService?wsdl')
    response = cliente.call(:buscar_uea_profesor,message: { mat: buscar})
    finalRes = response.to_hash
    finalR = finalRes[:buscar_uea_profesor_response]
    render html: finalR[:return]
  end

  def pregunta4
    @preg4 = params[:preg4]
    buscar = @preg4.to_s
    cliente = Savon.client(wsdl:'http://aisii.azc.uam.mx:8080/ServiciosConsultaRuby/ConsultaAcademicoService?wsdl')

    response = cliente.call(:buscar_cubiculo_asesoria_prof,message: { profesor: buscar})
    finalRes = response.to_hash
    finalR = finalRes[:buscar_cubiculo_asesoria_prof_response]
    render html: finalR[:return]

  end

  def pregunta5
    @preg5 = params[:preg5]
    buscar = @preg5.to_s
    cliente = Savon.client(wsdl:'http://aisii.azc.uam.mx:8080/ServiciosConsultaRuby/ConsultaAcademicoService?wsdl')

    response = cliente.call(:buscar_asesoria,message: { mat: buscar})
    finalRes = response.to_hash
    finalR = finalRes[:buscar_asesoria_response]
    render html: finalR[:return]
  end

  def pregunta6
    @preg6 = params[:preg6]
    buscar = @preg6.to_s
    cliente = Savon.client(wsdl:'http://aisii.azc.uam.mx:8080/ServiciosConsultaRuby/ConsultaAcademicoService?wsdl')

    response = cliente.call(:buscar_profesor_dep,message: { dep: buscar})
    finalRes = response.to_hash
    finalR = finalRes[:buscar_profesor_dep_response]
    render html: finalR[:return]
  end

end
