require 'spec_helper'
require 'book'
require 'replies'
require 'telegram/bot'

describe BookRec do
  describe '#initialize' do
    it 'returning values of random selection' do
      book_rec = BookRec.new
      test_pick = book_rec.randomgood
      expect(test_pick.class).to eq(String)
    end
  end

  describe '#initialize' do
    it 'returning values of random selection' do
      book_rec = BookRec.new
      test_pick = book_rec.randomtgood
      expect(test_pick.class).to eq(String)
    end
  end

  describe '#initialize' do
    it 'returning values of random selection' do
      book_rec = BookRec.new
      test_pick = book_rec.randomwtgood
      expect(test_pick.class).to eq(String)
    end
  end

  describe '#initialize' do
    it 'returning value of best selection possible' do
      book_rec = BookRec.new
      test_pick = book_rec.certainbest
      expect(test_pick.class).to eq(String)
    end
  end

  describe '#randomgood' do
    it 'works correct' do
      book_rec = BookRec.new
      result = book_rec.randomgood
      expect(result).not_to be_nil
    end
  end

  describe '#randomtgood' do
    it 'works correct' do
      book_rec = BookRec.new
      result = book_rec.randomtgood
      expect(result).not_to be_nil
    end
  end

  describe '#randomwtgood' do
    it 'works correct' do
      book_rec = BookRec.new
      result = book_rec.randomwtgood
      expect(result).not_to be_nil
    end
  end
end

describe ReplyOptions do
  describe '#initialize' do
    it 'values of keyboard options' do
      keys = ReplyOptions.new
      res = keys.first_base
      expect(res).not_to be_nil
    end
  end

  describe '#initialize' do
    it 'values of keyboard options' do
      keys = ReplyOptions.new
      res = keys.second_base
      expect(res).not_to be_nil
    end
  end

  describe '#initialize' do
    it 'values of keyboard options' do
      keys = ReplyOptions.new
      res = keys.first_base
      expect(res.class).to eq(Array)
    end
  end

  describe '#initialize' do
    it 'values of keyboard options' do
      keys = ReplyOptions.new
      res = keys.second_base
      expect(res.class).to eq(Array)
    end
  end
end
