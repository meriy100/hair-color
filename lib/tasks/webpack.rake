namespace :webpack do
  desc 'Run webpack build before assets:precompile'
  task :build do
    sh 'npm install; npm run release'
  end
end

task 'assets:precompile' => ['webpack:build']
