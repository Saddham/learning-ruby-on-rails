class MainController < ApplicationController
  def index
    #render("index")
  end

  def about
    @created_by = "Saddham Pathan"
    @id = params['id']
    @page = params[:page]
    #render('about')
  end

  def hello
    redirect_to(action: 'index') #Route to the root route if no controller specified
  end
end
