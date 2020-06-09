require 'rails_helper'
describe User do
  describe '#create' do
    it "nameが無い場合は登録できないこと" do
      user = build(:user, name: "")
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
    end

    it "emailが無い場合は登録できないこと" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end

    it "passwordが無い場合は登録できないこと" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end

    it "nameが11文字以上の場合は登録できないこと" do
      user = build(:user, name: "a" * 11)
      user.valid?
      expect(user.errors[:name]).to include("は10文字以内で入力してください")
    end

    it "nameが10文字の場合は登録できること" do
      user = build(:user, name: "a" * 10)
      expect(user).to be_valid
    end

    it "emailが重複している場合は登録できないこと" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("はすでに存在します")
    end

    it "passwordが5文字以下の場合は登録できないこと" do
      user = build(:user, password: "11111")
      user.valid?
      expect(user.errors[:password]).to include("は6文字以上で入力してください")
    end

    it "passwordが6文字以上の場合は登録できること" do
      user = build(:user, password: "111111")
      expect(user).to be_valid
    end

    it "name,email,passwordが存在すれば登録できること" do
      user = build(:user)
      expect(user).to be_valid
    end
  end
end