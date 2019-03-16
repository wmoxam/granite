struct Granite::Date
  FORMAT_REGEX = /(\d{4,})-(\d{2,})-(\d{2,})/

  property day : UInt8
  property month : UInt8
  property year : UInt16

  def initialize
    @day = 1
    @month = 1
    @year = 1970
  end

  def initialize(@year, @month, @day)
  end

  def initialize(date)
    match = FORMAT_REGEX.match(date.to_s)

    if match
      @year = match[1].to_u16
      @month = match[2].to_u8
      @day = match[3].to_u8
    else
      @day = 1
      @month = 1
      @year = 1970
    end
  end
end
