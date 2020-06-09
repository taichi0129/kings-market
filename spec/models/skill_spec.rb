require 'rails_helper'
describe Skill do
  describe '#create' do
    it "スキル項目及び日付が全て入力されていれば登録できること" do
      skill = build(:skill)
      expect(skill).to be_valid
    end

    it "dateが無い場合は登録できないこと" do
      skill = build(:skill, date: "")
      skill.valid?
      expect(skill.errors[:date]).to include("を入力してください")
    end

    it "stockが空の場合は登録できないこと" do
      skill = build(:skill, stock: "")
      skill.valid?
      expect(skill.errors[:stock]).to include("を入力してください")
    end

    it "frontが空の場合は登録できないこと" do
      skill = build(:skill, front: "")
      skill.valid?
      expect(skill.errors[:front]).to include("を入力してください")
    end

    it "serviceが空の場合は登録できないこと" do
      skill = build(:skill, service: "")
      skill.valid?
      expect(skill.errors[:service]).to include("を入力してください")
    end

    it "orderが空の場合は登録できないこと" do
      skill = build(:skill, order: "")
      skill.valid?
      expect(skill.errors[:order]).to include("を入力してください")
    end

    it "lossが空の場合は登録できないこと" do
      skill = build(:skill, loss: "")
      skill.valid?
      expect(skill.errors[:loss]).to include("を入力してください")
    end

    it "popが空の場合は登録できないこと" do
      skill = build(:skill, pop: "")
      skill.valid?
      expect(skill.errors[:pop]).to include("を入力してください")
    end

    it "cleanが空の場合は登録できないこと" do
      skill = build(:skill, clean: "")
      skill.valid?
      expect(skill.errors[:clean]).to include("を入力してください")
    end

    it "analysisが空の場合は登録できないこと" do
      skill = build(:skill, analysis: "")
      skill.valid?
      expect(skill.errors[:analysis]).to include("を入力してください")
    end

    it "infoが空の場合は登録できないこと" do
      skill = build(:skill, info: "")
      skill.valid?
      expect(skill.errors[:info]).to include("を入力してください")
    end

    it "saleが空の場合は登録できないこと" do
      skill = build(:skill, sale: "")
      skill.valid?
      expect(skill.errors[:sale]).to include("を入力してください")
    end
  end
end