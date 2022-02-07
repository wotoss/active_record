#estamos definindo uma Factroy de transfer
FactoryBot.define do 
 factory :transfer do
   balance_cents { Random.rand(1000..30_000) }
   #é a mesma coisa de criar um user { create(:user)} e passar ele como usuario desta tranfer.
   user
   company 
 end
end