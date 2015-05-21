# -*- encoding : utf-8 -*-
class Frontend::BranchesController < Frontend::BaseController
  def show
    @branch = Branch.find(params[:id])
    @title = @branch.zh_name
  end
end