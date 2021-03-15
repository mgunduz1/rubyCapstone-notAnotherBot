require_relative '../lib/replies'
require_relative '../lib/book'
require 'spec_helper'
require 'telegram/bot'

describe BookRec do
  let(:book_rec) { BookRec.new }
  describe '#initialize' do
    it 'returning values of random selection' do
      test_pick = book_rec.randomgood
      expect(test_pick.class).to eq(String)
    end
  end

  describe '#initialize' do
    it 'returning values of random selection' do
      test_pick = book_rec.randomtgood
      expect(test_pick.class).to eq(String)
    end
  end

  describe '#initialize' do
    it 'returning values of random selection' do
      test_pick = book_rec.randomwtgood
      expect(test_pick.class).to eq(String)
    end
  end

  describe '#initialize' do
    it 'returning value of best selection possible' do
      test_pick = book_rec.certainbest
      expect(test_pick.class).to eq(String)
    end
  end

  describe '#randomgood' do
    it 'works correct' do
      result = book_rec.randomgood
      expect(result).not_to be_nil
    end
  end

  describe '#randomtgood' do
    it 'works correct' do
      result = book_rec.randomtgood
      expect(result).not_to be_nil
    end
  end

  describe '#randomwtgood' do
    it 'works correct' do
      result = book_rec.randomwtgood
      expect(result).not_to be_nil
    end
  end

  describe '#randomgood' do
    it 'works correct' do
      res = book_rec.randomgood
      expect(res.class).to_not be_an(Integer)
    end
  end

  describe '#randomtgood' do
    it 'works correct' do
      res = book_rec.randomtgood
      expect(res.class).to_not be_an(Integer)
    end
  end

  describe '#randomwtgood' do
    it 'works correct' do
      res = book_rec.randomwtgood
      expect(res.class).to_not be_an(Integer)
    end
  end
end

describe ReplyOptions do
  let(:keys) { ReplyOptions.new }
  describe '#initialize' do
    it 'values of keyboard options' do
      res = keys.first_base
      expect(res).not_to be_nil
    end
  end

  describe '#initialize' do
    it 'values of keyboard options' do
      res = keys.second_base
      expect(res).not_to be_nil
    end
  end

  describe '#initialize' do
    it 'values of keyboard options' do
      res = keys.first_base
      expect(res.class).to eq(Array)
    end
  end

  describe '#initialize' do
    it 'values of keyboard options' do
      res = keys.first_base
      expect(res.class).to_not be_an(Array)
    end
  end

  describe '#initialize' do
    it 'values of keyboard options' do
      res = keys.second_base
      expect(res.class).to eq(Array)
    end
  end

  describe '#initialize' do
    it 'values of keyboard options' do
      res = keys.second_base
      expect(res.class).to_not be_an(Array)
    end
  end
end
