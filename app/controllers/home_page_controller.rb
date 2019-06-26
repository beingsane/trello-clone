class HomePageController < ApplicationController
  def index
    unless @token.present?
      return redirect_to(controller: 'sign_in', action: 'index')
    end
  end
end
