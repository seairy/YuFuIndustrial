# -*- encoding : utf-8 -*-
class Cms::PagesController < Cms::BaseController
  
  def index
    @pages = Page.all
  end
  
  def show
    @page = Page.find(params[:id])
  end
  
  def new
    @page = Page.new
  end
  
  def edit
    @page = Page.find(params[:id])
  end
  
  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to [:cms, @page], notice: '创建成功！'
    else
      render action: 'new'
    end
  end
  
  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(page_params)
      redirect_to [:cms, @page], notice: '更新成功！'
    else
      render action: 'edit'
    end
  end
  
  def destroy
    @page = Page.find(params[:id])
    @page.trash
    redirect_to cms_pages_path, notice: '删除成功！'
  end

  protected
  def page_params
    params.require(:page).permit!
  end
end
