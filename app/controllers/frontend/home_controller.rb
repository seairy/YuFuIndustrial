# -*- encoding : utf-8 -*-
class Frontend::HomeController < Frontend::BaseController
  def index
    @page = Page.home
  end

  def about
    @page = Page.about
    render 'content'
  end

  def contact
    @page = Page.contact
    render 'content'
  end
end