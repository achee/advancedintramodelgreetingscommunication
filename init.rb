current_dir=File.expand_path(File.dirname(__FILE__))
file=current_dir + '/../../../public/index.html'

`mv #{file} #{file}.old` if File.exists?(file)
`cp #{current_dir}/lib/assets/index.html #{current_dir}/../../../public/`