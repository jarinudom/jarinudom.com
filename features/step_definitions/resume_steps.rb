Given 'a job with position "$position" and employer "$employer"' do |position, employer|
  Job.make(:position => position, :employer => employer)
end
