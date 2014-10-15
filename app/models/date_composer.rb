class DateComposer
  attr_accessor :entries

  YEARS = ['1915', '1916', '1917', '1918', '1919', '1920']
  MONTHS = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']

  def initialize(entries)
    @entries = entries
  end

  def compose
    objects = []

    YEARS.each do |year|
      entries_by_year = entries.where(year: year).order('created_at ASC')
      collated_months = { 'January' => [], 'February' => [], 'March' => [], 'April' => [], 'May' => [], 'June' => [], 'July' => [], 'August' => [], 'September' => [], 'October' => [], 'November' => [], 'December' => []}
      entries_by_year.each do |entry|
        MONTHS.each do |month|
          if entry.month == month
            collated_months[month].push(entry)
          end
        end
      end

      objects.push(OpenStruct.new(year: year, entries: collated_months))
    end

    objects
  end
end
