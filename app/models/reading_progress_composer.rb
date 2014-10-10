class ReadingProgressComposer
  attr_reader :entries

  def initialize(entries)
    @entries = entries
  end

  def compose
    @entries.count
  end
end
