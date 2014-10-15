module PaginationHelper
  def next_entry(params, entries)
    params = params.to_i + 1
    link_to 'Next entry', entry_path(params), class: 'next' unless params == entries.count + 1
  end

  def previous_entry(params, entries)
    params = params.to_i - 1
    link_to 'Previous entry', entry_path(params ), class: 'previous' unless params == 0
  end
end
