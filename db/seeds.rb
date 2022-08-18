# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!([
  {
    name: "Joseph",
    email: "fulgaros@gmail.com",
    bio: "Writing everything that comes in my mind",
    password: "#{User.digest('basket')}"
  },
  {
    name: "Pascal",
    email: "jspnomo@gmail.com",
    bio: "Random guy trying to make your day funnier",
    password: "#{User.digest('basket')}"
  }
])

Post.create([
  {
    title: "Poèmes vie",
    content: "La vie est un long poème que l'on écrit soi-même.",
    author: 1
  },
  {
    title: "Poèmes bonheur",
    content: "Le bonheur en cette vie, c'est l'amour ! Il est si doux de s'aimer.",
    author: 1
  },
  {
    title: "Poèmes d'amitié",
    content: "Recueil de poèmes sur la relation amicale et les amis.",
    author:2
  },
  {
    title: "L'amitié en 6 poésies",
    content: "Ce recueil liste les meilleurs poèmes de Maxalexis sur l'amitié.",
    author: 2
  }
])


