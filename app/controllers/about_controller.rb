class AboutController < ApplicationController
  layout 'layouts/about'
  before_filter :set_service

  def before_the_war
  end

  def after_the_war
  end

  def excerpts
  end

  def credits
  end

  def copyright
  end

  def map    
  end

  private

  def set_service
    @page = ShowStaticPageService.apply
  end
end
