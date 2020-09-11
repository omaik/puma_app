# frozen_string_literal: true
require 'rest_client'
threads_count = ENV.fetch('THREADS_COUNT') { 5 }.to_i

def endless_pooling
  loop do
    begin
      RestClient.post(ENV['URL'], {})
    rescue StandardError => e
      puts e.inspect
    end
  end
end

threads_count.times.map { Thread.new { endless_pooling } }.each(&:join)
