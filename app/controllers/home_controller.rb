class HomeController < ApplicationController
  def index
     @list=Post.all
  end

  def show
    
     @postor=Post.find(params[:id])
  end

  def new
  end

  def create
    
    new=Post.new(title: params[:title], editor: params[:editor],content: params[:content])
    new.save
  
   redirect_to '/'
  end

  def edit
     @postor=Post.find(params[:id])
  end

  def update
     p_edit=Post.find(params[:id])
    p_edit.title=params[:title]
    p_edit.editor=params[:editor]
    p_edit.content=params[:content]

    p_edit.save
    
    redirect_to '/'
  end

  def destroy
    del_p=Post.find.(params[:id])
    del_p.destroy
    
    redirect_to '/'
  
  end
end
