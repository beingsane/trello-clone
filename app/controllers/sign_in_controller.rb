class SignInController < ApplicationController
  def index
    if @token.present?
      return redirect_to(controller: 'home_page', action: 'index')
    end
  end
end
