class DateComposer
  attr_accessor :entries

  YEARS = ['1915', '1916', '1917', '1918', '1919', '1920']

  def initialize(entries)
    @entries = entries
  end

  def compose
    objects = []

    YEARS.each do |year|
      objects.push(OpenStruct.new(year: year, entries: entries.where(year: year).order('created_at ASC')))
    end

    objects
  end
end
