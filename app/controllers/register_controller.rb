class RegisterController < ApplicationController
  def show
  	#@register = User.find(params[:id])
  	
  end

  def new
  end

  def login
  end

  def submit
    temp = params[:login]
    @login = User.where("emailID = ? and password = ?", temp[:emailID], temp[:password])
  end

  def create
  	@register = User.new(user_params)

    @register.save
  	redirect_to register_path(@register)
  end

  private
  	def user_params
  		params.require(:register).permit(:name, :emailID, :password)  		
  	end
end