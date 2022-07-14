# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Hamlcop::RubyExtractor do
  subject { described_class.new(file_path: file_path, source: source).call }

  let(:file_path) { '/tmp/test.rb' }

  let(:source) do
    raise NotImplementedError
  end

  context 'with code nested under a control node' do
    let(:source) do
      <<~HAML
        - 5.times do |n|
          %th{colspan: 2}= n
      HAML
    end

    it 'detects also the nested nodes' do
      is_expected.to eq([
                          { code: '5.times', offset: 2 },
                          { code: '{colspan: 2}', offset: 22 },
                          { code: 'n', offset: 36 }
                        ])
    end
  end
end
