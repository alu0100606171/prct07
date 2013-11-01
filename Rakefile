task :default => :spec

desc "Ejecutar las espectativas de la clase Fraccion"
task :spec do
  sh "rspec -I. spec/fraccion_spec.rb"
end

desc "Ejecutar con documentacion"
task :doc do
  sh "rspec -I. spec/fraccion_spec.rb --format documentation"
end
