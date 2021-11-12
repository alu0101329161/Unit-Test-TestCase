task :default => :re


desc "Prueba unitarias clase regular expressions"
task :re do
  sh "ruby -I. test/tc_regular_expression.rb"
end

desc "Pruebas simple"
task :simple do
   sh "ruby -I. test/tc_regular_expression.rb --name /simple/"
end

