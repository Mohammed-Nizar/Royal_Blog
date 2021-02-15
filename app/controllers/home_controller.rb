class HomeController < ApplicationController

  def index
    flash[:alert] = 'User not found.'
    render 'home/createBlog'
  end

  def login
    @em = params[:address]
    @pw = params[:password]
    puts @em,@pw
    puts 'nizar----------------------------------'
    @email = User.all

    @email.each do |f|
      puts f.email
    end

    @user = User.find_by_email(params[:address])
    if @user
      puts 'got it'
    end

    if @user && @user.valid_password?(params[:password])
      puts 'clear'
      render 'createBlog'
    else
      render 'loginPage'
      flash[:alert] = 'User not found.'
      puts 'not'
    end
  end

  def add_Item
    @bike = Bike.new(primary_key: params[:bikeId], name: params[:name], rent: params[:price])
    @bike.save
    render 'createBlog'
  end

  def view_list
    @bikes = Bike.all
    render 'view_list'
  end

  def delete_data
    Bike.destroy(params[:id])
    render "view_list"
  end

end
