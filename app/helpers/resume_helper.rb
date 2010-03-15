module ResumeHelper
  def date_or_present(date)
    date ? date.to_s(:month_year) : 'Present'
  end
end
