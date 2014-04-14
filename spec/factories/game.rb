FactoryGirl.define do
  factory :game do
    team "Cincinnai Reds"
  end
  factory :player do
    name "Joey Votto"
    game
  end
end
