class Category < ActiveHash::Base
  include ActiveHash::Associations
  has_many :shops

  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '焼肉' },
    { id: 3, name: '寿司' },
    { id: 4, name: 'ラーメン' },
    { id: 5, name: '居酒屋' },
    { id: 6, name: 'cafe' },
    { id: 7, name: 'その他' }
  ]
end