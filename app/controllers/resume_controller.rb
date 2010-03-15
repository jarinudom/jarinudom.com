class ResumeController < ApplicationController
  
  def index
    @resume = Resume.first
    @jobs = Job.order("(case WHEN end_date IS NULL THEN 1 ELSE 0 END) DESC, end_date DESC, start_date DESC")
  end

end
