class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '肉' },
    { id: 3, name: '肉加工品' },
    { id: 4, name: '魚介' },
    { id: 5, name: '海藻' },
    { id: 6, name: '魚介加工品' },
    { id: 7, name: '卵' },
    { id: 8, name: 'いも' },
    { id: 9, name: '乳製品' },
    { id: 10, name: '大豆製品' },
    { id: 11, name: 'きのこ' },
    { id: 12, name: '豆' },
    { id: 13, name: '果物' },
    { id: 14, name: '野菜' },
    { id: 15, name: '主食' },
    { id: 16, name: 'おかず' },
    { id: 17, name: 'お菓子' },
    { id: 18, name: '飲み物' },
    { id: 19, name: '強化食品' },
    { id: 20, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :ingredients

end