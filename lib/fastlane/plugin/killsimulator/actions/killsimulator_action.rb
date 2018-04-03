require 'fastlane/action'
require_relative '../helper/killsimulator_helper'

module Fastlane
  module Actions
    class KillsimulatorAction < Action

      def self.shell(cmd)
        require 'open3'
        exit_status = 0
        Open3.popen2e(cmd) do |stdin, stdout_err, wait_thr|
          while line = stdout_err.gets
            puts line
          end

          exit_status = wait_thr.value
        end
        exit_status
      end

      def self.run(params)
        UI.message("The killsimulator plugin is working!")
      end

      def self.description
        "Kill all the open simulatores"
      end

      def self.authors
        ["Luís Esteves"]
      end

      def self.run(options)
        self.shell('killall Simulator')
      end

      def self.is_supported?(platform)
        platform == :ios
      end
    end
  end
end
