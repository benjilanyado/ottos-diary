class AboutController < ApplicationController
  layout 'layouts/about'
  before_filter :set_service

  def who_is_otto
  end

  def what_happened_to_otto
  end

  def excerpts
  end

  def credits
  end

  def copyright
  end

  private

  def set_service
    @page = ShowAboutPageService.apply
  end
end
