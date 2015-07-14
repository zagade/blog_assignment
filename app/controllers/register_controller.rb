class RegisterController < ApplicationController
  def show
  	#@register = User.find(params[:id])
  	
  end

  def newuser
  end

  def login
  end

  def submit
    temp = params[:login]
    @login = User.where("address = ? and password = ?", temp[:address], temp[:password])
  end

  def create
  	@register = User.new(user_params)

    @register.save
  	redirect_to register_path(@register)
  end

  private
  	def user_params
  		params.require(:register).permit(:name, :address, :password)  		
  	end
end