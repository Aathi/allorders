class UsersController < ApplicationController
  def login
    @fehler1 = false
    @fehler2 = false
    if params[:username ] != nil
      if register.find_by-username( params[:username]) ==nil
        @fehler1 = true
      elsif register.find_by_username(params[:username]).pass == params[:pass]
        redirect_to(:action => 'welcome')
      else
        @fehler2 = true
      end
    end
  end


  def welcome

  end
end
