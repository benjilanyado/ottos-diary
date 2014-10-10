class ShowAboutPageService
  def self.apply
    OpenStruct.new(
      dates: DateComposer.new(Entry).compose
    )
  end
end
