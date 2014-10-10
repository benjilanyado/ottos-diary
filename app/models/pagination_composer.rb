class PaginationComposer
  attr_reader :entry

  def initialize(entry)
    @entry = entry
  end

  def next(entries)
    number = nil

    entries.each_with_index do |value, index|
      if value.id == entry.id
        number = index + 1
      end
    end

    entries[number]
  end

  def previous(entries)
    number = nil

    entries.each_with_index do |value, index|
      if value.id == entry.id
        number = index - 1
      end
    end

    entries[number] unless number == -1
  end
end
