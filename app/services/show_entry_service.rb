class ShowEntryService
  def self.apply(params)
    entry = Entry.find(params)
    entries = Entry.all

    OpenStruct.new(
      entry: EntryDecorator.new(entry),
      dates: DateComposer.new(Entry).compose,
      progress: ReadingProgressComposer.new(Entry.all).compose
    )
  end
end
