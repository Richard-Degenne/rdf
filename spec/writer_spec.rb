# -*- encoding: utf-8 -*-
require File.join(File.dirname(__FILE__), 'spec_helper')
require 'rdf/ntriples'

describe RDF::Writer do
  describe ".for" do
    [
      :ntriples,
      'etc/doap.nt',
      {file_name:      'etc/doap.nt'},
      {file_extension: 'nt'},
      {content_type:   'application/n-triples'},
      {content_type:   'text/plain'},
    ].each do |arg|
      it "discovers with #{arg.inspect}" do
        expect(RDF::Writer.for(arg)).to eq RDF::NTriples::Writer
      end
    end
  end
end
