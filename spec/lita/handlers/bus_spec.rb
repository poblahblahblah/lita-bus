require "spec_helper"

describe Lita::Handlers::Bus, lita_handler: true do
  it { is_expected.to route_command("throw human under a bus").to(:toss) }

  describe "#toss" do
    it "responds with some sweet ascii" do
      send_command("toss james under a bus")
      expect(replies.last).to match(/Test User just threw someone under the bus. How awful./)
    end
  end
end
