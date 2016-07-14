use Rack::Static,
  urls:['/img', '/js', '/css'],
  root:'www'

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('www/index.html', File::RDONLY)
  ]
}
