require 'bundler/gem_tasks'
require 'rake/testtask'
 
Rake::TestTask.new do |t|
  t.test_files = FileList['test/*_test.rb']
  t.ruby_opts = ['-rubygems'] if defined? Gem
  t.ruby_opts << '-I.'
  t.verbose = true
end
 
task :default => :test
