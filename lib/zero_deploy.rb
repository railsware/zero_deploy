require "benchmark"
require_relative "zero_deploy/processor"

module ZeroDeploy
  extend self

  def deploy(cmd)
    processor = Processor.new(cmd)
    puts "Zero deploy started... Fasten your seatbelt!"
    puts ""

    time = Benchmark.realtime do
      processor.checkout_code
      processor.bundle_install
      processor.assets_precompile
      processor.run_migrations
      processor.finalize
    end

    puts ""
    puts "Deploy completed in #{processor.time_spent.round(3)}s."
    puts "Which is quite close to Zero!"
  end

end
