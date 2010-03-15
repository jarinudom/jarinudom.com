Given 'a resume' do
  Resume.make
end

Given "the following jobs exist:" do |jobs_table|
  jobs_table.hashes.each do |hash|
    Job.make(hash)
  end
end
