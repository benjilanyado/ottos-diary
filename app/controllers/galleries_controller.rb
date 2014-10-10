class GalleriesController < ApplicationController
  layout 'layouts/entry'

  def show
    @page = ShowStaticPageService.apply
  end
end
