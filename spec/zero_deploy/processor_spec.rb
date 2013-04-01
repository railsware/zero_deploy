require 'spec_helper'

module ZeroDeploy
  describe Processor do
    subject { Processor.new(command) }

      let(:command) { "cap production deploy" }

      describe "#code_checkout" do
        before { subject.checkout_code }
        its(:time_spent) { should be_within(1).of(0) }
      end

      describe "#bundle_install" do
        before { subject.checkout_code }
        its(:time_spent) { should be_within(1).of(0) }
      end

      describe "#assets_precompile" do
        before { subject.checkout_code }
        its(:time_spent) { should be_within(1).of(0) }
      end

      describe "#run_migrations" do
        before { subject.checkout_code }
        its(:time_spent) { should be_within(1).of(0) }
      end
  end
end

