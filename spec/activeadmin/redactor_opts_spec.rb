require 'spec_helper'
require_relative '../../lib/activeadmin/redactor_opts.rb'

describe Activeadmin::Redactor::RedactorOpts do
  subject { described_class.new(options) }
  
  describe '#iframe' do
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

  describe '#fullpage' do
    context 'no options passed' do
      let(:options) {Hash.new}
      it 'returns false' do
        expect(subject.fullpage).to eql(false)
      end
    end

    context 'options passed' do
      let(:options) {{fullpage: true}}
      it 'returns true' do
        expect(subject.fullpage).to eql(true)
      end
    end
  end

  describe '#focus' do
    context 'no options passed' do
      let(:options) {Hash.new}
      it 'returns false' do
        expect(subject.focus).to eql(false)
      end
    end

    context 'options passed' do
      let(:options) {{focus: true}}
      it 'returns true' do
        expect(subject.focus).to eql(true)
      end
    end
  end

  describe '#css' do
    context 'no options passed' do
      let(:options) {Hash.new}
      it 'returns empty array' do
        expect(subject.css).to eql([])
      end
    end

    context 'options passed' do
      let(:options) {{css: ['application.css', 'http://www.example.com/style.css']}}
      it 'returns unmodified array' do
        expect(subject.css).to eql(
          ['application.css', 'http://www.example.com/style.css']
        )
      end
    end
  end

  describe '#minheight' do
    context 'no options passed' do
      let(:options) {Hash.new}
      it 'returns false' do
        expect(subject.minheight).to eql(false)
      end
    end

    context 'options passed' do
      let(:options) {{minheight: 'window.innerHeight - 100'}}
      it 'returns unmodified string' do
        expect(subject.minheight).to eql('window.innerHeight - 100')
      end
    end
  end

  describe '#imageupload' do
    context 'no options passed' do
      let(:options) {Hash.new}
      it 'returns false' do
        expect(subject.imageupload).to eql(false)
      end
    end

    context 'options passed' do
      let(:options) {{imageupload: '/foo/bar/path'}}
      it 'returns unmodified string' do
        expect(subject.imageupload).to eql('/foo/bar/path')
      end
    end
  end

  describe '#plugins' do
    context 'no options passed' do
      let(:options) {Hash.new}
      it 'returns empty array' do
        expect(subject.plugins).to eql([])
      end
    end

    context 'options passed' do
      let(:options) {{plugins: ['admin/fontfamily.js']}}
      it 'returns unmodified array' do
        expect(subject.plugins).to eql(['admin/fontfamily.js'])
      end
    end
  end

end
