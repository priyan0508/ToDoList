class WorkitemsController < ApplicationController
  def index
  
    @workitems = Workitem.all 
  end

  def show
    @workitem = Workitem.find(params[:id])
  end

  def new
    @workitem = Workitem.new
  end

  def create
    @workitem = Workitem.new(workitem_params)

    if @workitem.save
      redirect_to @workitem
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @workitem = Workitem.find(params[:id])
  end

  def update
    @workitem = Workitem.find(params[:id])

    if @workitem.update(workitem_params)
      redirect_to @workitem
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @workitem = Workitem.find(params[:id])
    @workitem.destroy

    redirect_to root_path, status: :see_other
  end



  private
  def workitem_params
    params.require(:workitem).permit(:title)
  end


end
