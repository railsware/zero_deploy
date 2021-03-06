require_relative "zero_deploy/processor"

module ZeroDeploy
  extend self

  def deploy(cmd)
    processor = Processor.new(cmd)
    puts "Zero deploy started... Fasten your seatbelt!"
    puts ""

    processor.checkout_code
    processor.bundle_install
    processor.assets_precompile
    processor.run_migrations
    processor.finalize

    puts ""
    puts "Deploy completed in #{processor.time_spent.round(3)}s."
    puts "Which is quite close to Zero!"

    puts ""
    puts "Interested in the magic behind this gem?"
    puts "Check this out: http://bit.ly/XaCkIF"
  end

end
