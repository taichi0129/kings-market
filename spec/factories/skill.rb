FactoryBot.define do
  factory :skill do
    date      {"2020-06-01"}
    stock     {1}
    front     {1}
    service   {1}
    order     {1}
    loss      {1}
    pop       {1}
    clean     {1}
    analysis  {1}
    info      {1}
    sale      {1}
    user
  end
end