# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Task.delete_all
Job.delete_all
(1...50).each do |job_id|
  job = Job.create(name: "Job #{job_id}")
  (1..10).each do |task_id|
    Task.create(name: "Task #{job.id}#{task_id}", description: "A task", time_required: rand(20) + 1, job: job)
  end
end
