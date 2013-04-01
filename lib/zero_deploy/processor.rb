module ZeroDeploy
  class Processor
    attr_reader :time_spent

    def initialize(cmd)
      @cmd = cmd
      @time_spent = 0
    end

    def checkout_code
      action "Checkout fresh source code"
    end

    def bundle_install
      action "Installing dependencies using Bundler version 1.4.13"
      action "Running: bundle install --without development:test:jokes"
      action "Your bundle is complete! It was installed into ./vendor/bundle"
    end

    def assets_precompile
      action "Running: rake assets:precompile"
      action "Asset precompilation completed (0.0000001s)"
    end

    def run_migrations
      action "Executing deploy:migrate"
      action "No pending migrations"
    end

    def finalize
      deploy = fork { Open3.popen3(@cmd) }
      Process.detach(deploy)
    end

    private

    def action(msg)
      puts "Zero deploy: #{msg}"
      time = rand(0.5)
      @time_spent += time
      sleep time
    end
  end
end
