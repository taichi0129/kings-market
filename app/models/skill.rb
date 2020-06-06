class Skill < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :date, :stock, :front, :service, :order, :loss, :pop, :clean, :analysis, :info, :sale, presence: :true

  def set_date
    date.strftime("%Y年 %m月 %d日")
  end
  def sum_skill
    stock + front + service + order + loss + pop + clean + analysis + info + sale
  end
end
