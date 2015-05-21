# -*- encoding : utf-8 -*-
class Frontend::HomeController < Frontend::BaseController
  def index
    @page = Page.home
    @title = '首页'
  end

  def about
    @page = Page.about
    @title = '关于裕福'
    render 'content'
  end

  def contact
    @page = Page.contact
    @title = '联系我们'
    render 'content'
  end
end