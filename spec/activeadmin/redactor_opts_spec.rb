require 'spec_helper'
require_relative '../../lib/activeadmin/redactor_opts.rb'

describe Activeadmin::Redactor::RedactorOpts do
  describe '#iframe' do
    subject { described_class.new(options) }
    context 'no options passed' do
      let(:options) {Hash.new}
      it 'returns false' do
        expect(subject.iframe).to eql(false)
      end
    end

    context 'options passed' do
      let(:options) {{iframe: true}}
      it 'returns true' do
        expect(subject.iframe).to eql(true)
      end
    end
  end
end
