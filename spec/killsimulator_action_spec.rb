describe Fastlane::Actions::KillsimulatorAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The killsimulator plugin is working!")

      Fastlane::Actions::KillsimulatorAction.run(nil)
    end
  end
end
