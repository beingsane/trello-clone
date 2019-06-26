class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :data_trivial

  # Antes de qualquer requisição e recuperado da sessão alguns dados triviais
  def data_trivial
    @token = session[:token]
  end
end
