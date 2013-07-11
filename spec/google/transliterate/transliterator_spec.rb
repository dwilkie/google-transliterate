# encoding: utf-8

require 'spec_helper'
require './lib/google/transliterate/transliterator'

module Google
  module Transliterate
    describe Transliterator do
      describe "#transliterate!(source_script, text)" do
        def expect_transliterate(options = {}, &block)
          VCR.use_cassette(options[:cassette]) do
            yield
          end
        end

        it "should transliterate Thai" do
          expect_transliterate(:cassette => :david_likes_beer_th) do
            subject.transliterate!(
              "th", "เดวิดไลกสเบียร์"
            ).should == "Dewid lịks̄ beīyr̒"
          end
        end

        it "should transliterate Khmer" do
          expect_transliterate(:cassette => :david_likes_beer_kh) do
            subject.transliterate!(
              "kh", "ដេវិឌលៃកសបៀរ"
            ).should == "de vi d lei k sa bier"
          end
        end
      end
    end
  end
end
