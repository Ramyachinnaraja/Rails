class LoginController < ApplicationController
   http_basic_authenticate_with name: "abc", password: "secret", except: [:index, :show]

def index
  @login = 'welcome login'
end
  def login
    @login = 'login page'
  end
end
 
