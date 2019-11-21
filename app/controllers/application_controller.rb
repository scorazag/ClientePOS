class ApplicationController < ActionController::Base
  def index
    render html:"Hola desde index"
  end
end
