threads_count = ENV.fetch('MAX_THREADS') { 5 }
threads threads_count, threads_count

app do |env|
  sleep rand(0.1..0.4)
  body = 'Hello, World!'
  [200, { 'Content-Type' => 'text/plain', 'Content-Length' => body.length.to_s }, [body]]
end
