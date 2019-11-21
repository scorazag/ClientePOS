class UeasController < ApplicationController

  def ueas
  end


  def consultar
    @zip_code = params[:zip_code]
    @zip_code1 = params[:zip_code1]
    buscar = @zip_code.to_s
    buscar1 = @zip_code1.to_s

    cliente = Savon.client(wsdl:'http://aisii.azc.uam.mx:8080/ServiciosConsultaRuby/ConsultaAcademicoService?wsdl')
    response = cliente.call(:buscar_salon,message: { profesor: buscar,horario:buscar1})
    finalRes = response.to_hash
    finalR = finalRes[:buscar_salon_response]

    render html: finalR[:return]

  end

  def pregunta2
    @preg2 = params[:preg2]
    buscar = @preg2.to_s

    cliente = Savon.client(wsdl:'http://aisii.azc.uam.mx:8080/ServiciosConsultaRuby/ConsultaAcademicoService?wsdl')

    response = cliente.call(:buscar_uea_programacion,message: { busqueda: "Taller"})
    puts response

    finalRes = response.to_hash
    finalR = finalRes[:buscar_uea_programacion_response]

    render html: finalR[:return]

  end

  def pregunta3
    @preg3 = params[:preg3]
    @preg3b = params[:preg3b]
    buscar = @preg3.to_s
    buscar1 = @preg3b.to_s
    cliente = Savon.client(wsdl:'http://aisii.azc.uam.mx:8080/ServiciosConsultaRuby/ConsultaAcademicoService?wsdl')
    response = cliente.call(:buscar_uea_dia,message: { dia1: buscar})
    puts response

    finalRes = response.to_hash
    finalR = finalRes[:buscar_uea_dia_response]

    render html: finalR[:return]
  end

  def pregunta4
    @preg4 = params[:preg4]
    buscar = @preg4.to_s

    cliente = Savon.client(wsdl:'http://aisii.azc.uam.mx:8080/ServiciosConsultaRuby/ConsultaAcademicoService?wsdl')
    response = cliente.call(:buscar_uea_tronco,message: { tronco: buscar})

    finalRes = response.to_hash
    finalR = finalRes[:buscar_uea_tronco_response]
    render html: finalR[:return]
  end

  def pregunta5
    @preg5 = params[:preg5]
    buscar = @preg5.to_s
    cliente = Savon.client(wsdl:'http://aisii.azc.uam.mx:8080/ServiciosConsultaRuby/ConsultaAcademicoService?wsdl')
    response = cliente.call(:suma_creditos_area,message: { areaConcentracion: buscar})
    finalRes = response.to_hash
    finalR = finalRes[:suma_creditos_area_response]

    render html: finalR[:return]
  end

  def pregunta6
    @preg6 = params[:preg6]
    buscar = @preg6.to_s
    cliente = Savon.client(wsdl:'http://aisii.azc.uam.mx:8080/ServiciosConsultaRuby/ConsultaAcademicoService?wsdl')
    response = cliente.call(:creditos_uea,message: { nombreUEA:buscar})
    finalRes = response.to_hash
    finalR = finalRes[:creditos_uea_response]
    render html: finalR[:return]
  end

  def pregunta7
    @preg7 = params[:preg7]
    buscar = @preg7.to_s
    cliente = Savon.client(wsdl:'http://aisii.azc.uam.mx:8080/ServiciosConsultaRuby/ConsultaAcademicoService?wsdl')
    response = cliente.call(:obtener_clave_ue_ade_area,message: { areaConcentracion: buscar})
    finalRes = response.to_hash
    finalR = finalRes[:obtener_clave_ue_ade_area_response]
    render html: finalR[:return]
  end

end
