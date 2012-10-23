task :defaul => :test

desc "Run /bin ppt_main.rb tijeras"
task :tijeras do
	sh "Ruby -Ilib bin/pptmain.rb tijeras"
end


desc "Run test/tc_rps.rb"
task :test do
	sh "ruby -Ilib test/tc_ppt.rb"
end

desc "a specific test    "
task :t, :test_name do |t, args|
	test_name = args [ :test_name] || 'test_play'
	sh "ruby -w -Ilib test/tc_ppt.rb --name  #{test_name}"
end

