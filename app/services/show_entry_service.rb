class ShowEntryService
  def self.apply(params)
    entry = Entry.find(params)
    entries = Entry.all
    paginator = PaginationComposer.new(entry)

    OpenStruct.new(
      entry: EntryDecorator.new(entry),
      dates: DateComposer.new(Entry).compose,
      progress: ReadingProgressComposer.new(Entry.all).compose,
      next: paginator.next(entries),
      previous: paginator.previous(entries)
    )
  end
end
