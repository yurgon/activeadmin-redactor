require 'spec_helper'
require_relative '../../lib/activeadmin/viewport_opts.rb'

describe Activeadmin::Redactor::ViewportOpts do
  subject { described_class.new(options) }

  describe '#stylesheets' do
    context 'no options passed' do
      let(:options) {Hash.new}
      it 'returns array with single element \'activeadmin-redactor\'' do
        expect(subject.stylesheets).to eql(['activeadmin-redactor'])
      end
    end

    context 'options passed' do
      let(:options) {{stylesheets: ['foo.css', 'bar.css']}}
      it 'returns stylesheets with activeadmin-redactor prepended' do
        expect(subject.stylesheets).to eql(['activeadmin-redactor', 'foo.css', 'bar.css'])
      end
    end
  end

  describe '#layout' do
    context 'no options passed' do
      let(:options) {Hash.new}
      it 'returns default layout' do
        expect(subject.layout).to eql('redactor')
      end
    end

    context 'options passed' do
      let(:options) {{layout: 'foobar'}}
      it 'returns unmodified layout' do
        expect(subject.layout).to eql('foobar')
      end
    end
  end

  describe '#template' do
    context 'no options passed' do
      let(:options) {Hash.new}
      it 'returns default template redactor/editor' do
        expect(subject.template).to eql('redactor/editor')
      end
    end

    context 'options passed' do
      let(:options) {{template: 'foo/bar'}}
      it 'returns unmodified template' do
        expect(subject.template).to eql('foo/bar')
      end
    end
  end
end
