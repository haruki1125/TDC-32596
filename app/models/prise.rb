class Prise < ActiveHash::Base
  include ActiveHash::Associations
  has_many :shops

  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '0 ~ 1000円' },
    { id: 3, name: '1000 ~ 2000円' },
    { id: 4, name: '2000 ~ 3000円' },
    { id: 5, name: '5000 ~ 10000円' },
    { id: 6, name: '10000円以上' }
  ]
end