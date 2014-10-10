class EntriesController < ApplicationController
  layout 'layouts/entry'

  def show
    @page = ShowEntryService.apply(params[:id])
  end
end
