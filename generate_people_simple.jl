using DataFrames, CSV


### Generate 32 random people simple


name_list = ["Maria ", "Pilipp ", "Santiago ", "Francesco ", "Jacqueline ", "Erik ", "Paola ", "Giorgia ", "Laura ", "Danyiil ",
"Steven ", "Bersa ", "Carlone ", "Liukk ", "Marta ", "Gioia ", "Mikaela ", "Beatriz ", "Tommaso ", "Vladimir ", "Maurice "]
cognom_list = ["Trussot", "Da Vinci", "Johnson", "Maric", "Vallejo", "Musk", "Giorgetti", "Volta", "Galilei", "Levi Montalcini",
"Bruno", "Churchill", "Oppenheimer", "Einstein", "Picasso", "Curie", "Fornero", "Merini", "MacGrannit", "Silente", "Popo Rubeus"]

random_people = String[]

function RandomPeople(random_people :: Array{String})

    for _ in 1:32
        first_name = name_list[rand(1:end)]
        last_name = cognom_list[rand(1:end)]
        
        local person = string(first_name, last_name)
        push!(random_people, person)
    end
    return random_people
end


random_names = String[]
random_cognoms = String[]


for _ in 1:32
    first_name = name_list[rand(1:end)]
    last_name = cognom_list[rand(1:end)]
    push!(random_names, first_name)
    push!(random_cognoms, last_name)
end


df_people = DataFrame("Name" => random_names, "Surname" => random_cognoms)
CSV.write("/Users/francescoaldoventurelli/Downloads/random_people.csv", df_people)