# -*- encoding : utf-8 -*-
class Frontend::BaseController < ApplicationController
  layout 'frontend'
  before_action :set_locale
  before_action :find_branches

  protected
    def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
    end

    def default_url_options options = {}
      { :locale => I18n.locale }
    end

    def find_branches
      @branches = Branch.all
    end
end