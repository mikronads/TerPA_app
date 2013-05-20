class SmartmodelsController < ApplicationController
  def new
  @smartmodel = Smartmodel.new
  end
  
  def create
  @smartmodel = Smartmodel.new(params[:smartmodel])
  if @smartmodel.save
  redirect_to :action => :show, :id => @smartmodel.id
  else 
   render 'new'
  end
  end
  
  def show
  @smartmodel = Smartmodel.find(params[:id])
  end
  
  def index
  @smartmodels = Smartmodel.all
  end
  
  def edit
  @smartmodel = Smartmodel.find(params[:id])
  end
  
  def update
  @smartmodel = Smartmodel.find(params[:id])
 
  if @smartmodel.update_attributes(params[:smartmodel])
    redirect_to :action => :show, :id => @smartmodel.id
  else
    render 'edit'
  end 
  end
  
  def destroy
  @smartmodel = Smartmodel.find(params[:id])
  @smartmodel.destroy
 
  redirect_to :action => :index
end
end
