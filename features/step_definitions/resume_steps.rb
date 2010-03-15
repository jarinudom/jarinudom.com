Given 'a resume exists' do
  Resume.make
end

Given "the following jobs exist:" do |jobs_table|
  jobs_table.hashes.each do |hash|
    hash[:end_date] = (hash[:end_date] == "") ? nil : Date.parse(hash[:end_date])
    Job.make(hash)
  end
end

Given "the following skills exist:" do |skills_table|
  skills_table.hashes.each do |hash|
    Skill.make(hash)
  end
end