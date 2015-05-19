# -*- encoding : utf-8 -*-
class Cms::BranchesController < Cms::BaseController
  
  def index
    @branches = Branch.all
  end
  
  def show
    @branch = Branch.find(params[:id])
  end
  
  def new
    @branch = Branch.new
  end
  
  def edit
    @branch = Branch.find(params[:id])
  end
  
  def create
    @branch = Branch.new(branch_params)
    if @branch.save
      redirect_to [:cms, @branch], notice: '创建成功！'
    else
      render action: 'new'
    end
  end
  
  def update
    @branch = Branch.find(params[:id])
    if @branch.update_attributes(branch_params)
      redirect_to [:cms, @branch], notice: '更新成功！'
    else
      render action: 'edit'
    end
  end
  
  def destroy
    @branch = Branch.find(params[:id])
    @branch.trash
    redirect_to cms_branches_path, notice: '删除成功！'
  end

  protected
  def branch_params
    params.require(:branch).permit!
  end
end
