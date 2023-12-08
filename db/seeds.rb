<<<<<<< HEAD
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
=======
cats = [
        {
        name: 'Kevin',
        age: 9,
        enjoys: 'Talking to the dogs walking by the window',
        image: 'https://hips.hearstapps.com/hmg-prod/images/cute-cat-photos-1593441022.jpg'
        },
        {
            name: 'Joseph',
            age: 10,
            enjoys: 'Grapple with bigger cats',
            image: 'https://images.saymedia-content.com/.image/t_share/MTk2NzY3MjA5ODc0MjY5ODI2/top-10-cutest-cat-photos-of-all-time.jpg'
        },
        {
            name: 'AC',
            age: 13,
            enjoys: 'Watch TV and eat Pizza',
            image: 'https://d1hjkbq40fs2x4.cloudfront.net/2016-07-16/files/cat-sample_1313.jpg'
        }
]

cats.each do |cat|
    Cat.create cat
    puts "creating cat #{cat}"
end
>>>>>>> 235f1bb9c77b4799a8410eabf38728478109e466
