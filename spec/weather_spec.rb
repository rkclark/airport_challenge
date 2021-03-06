require "weather.rb"

describe Weather do
  subject(:weather) { described_class }

  describe ".sunny?" do

    it { is_expected.to respond_to(:sunny?) }

    context "random generator sets status to sunny" do
      it ".sunny returns true" do
        allow(weather).to receive(:randomize) { 21 }
        expect(weather).to be_sunny
      end
    end

    context "random generator sets status to not sunny" do
      it ".sunny returns false" do
        allow(weather).to receive(:randomize) { 20 }
        expect(weather).not_to be_sunny
      end
    end
  end
end
