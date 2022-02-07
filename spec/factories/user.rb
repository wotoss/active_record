FactoryBot.define do
#vamos usar a gem FactoryBot e a gem Faker
   factory :user do
    name { Faker::Name.first_name }
    email { Faker::Internet.email }
    #estou criando um array de string este %w [Female, Male]
    #percente w %w => gera um array de string
    # sample => eu estou pegando um deles (pode ser um como o outro)
    gender { %w[Female Male].sample } 
    #aqui eu estou fazendo um (range ruby) => vai pegar um numero entre 10..30
    age { Random.rand(10..30) }
    #coloquei um (_) poque se não o rubocoop reclama.
    #ele pede este anderline por questões de estetica de codigo.
    balance_cents { Random.rand(100..100_000) }
 end
end