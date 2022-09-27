# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

npcs = [
    {
        name: "Abigail",
        address: "Pierre's General Store",
        likes: "Amethyst, Banana Pudding",
        image: "https://stardewvalleywiki.com/mediawiki/images/8/88/Abigail.png"
    },
    {
        name: "Emily",
        address: "2 Willow Lane",
        likes: "Aquamarine, Cloth",
        image: "https://stardewvalleywiki.com/mediawiki/images/2/28/Emily.png"
    },
    {
        name: "Haley",
        address: "2 Willow Lane",
        likes: "Coconut, Fruit Salad",
        image: "https://stardewvalleywiki.com/mediawiki/images/1/1b/Haley.png"
    },
    {
        name: "Leah",
        address: "Leah's Cottage",
        likes: "Goat Cheese, Poppyseed Muffin",
        image: "https://stardewvalleywiki.com/mediawiki/images/e/e6/Leah.png"
    },
    {
        name: "Maru",
        address: "24 Mountain Road",
        likes: "Battery Pack, Cauliflower",
        image: "https://stardewvalleywiki.com/mediawiki/images/f/f8/Maru.png"
    },
    {
        name: "Penny",
        address: "Trailer",
        likes: "Diamond, Melon",
        image: "https://stardewvalleywiki.com/mediawiki/images/a/ab/Penny.png"
    },
    {
        name: "Alex",
        address: "1 River Road",
        likes: "Complete Breakfast, Salmon Dinner",
        image: "https://stardewvalleywiki.com/mediawiki/images/0/04/Alex.png"
    },
    {
        name: "Elliot",
        address: "Elliot's Cabin",
        likes: "Crab Cakes, Lobster",
        image: "https://stardewvalleywiki.com/mediawiki/images/b/bd/Elliott.png"
    },
    {
        name: "Harvey",
        address: "Medical Clinic",
        likes: "Coffee, Wine",
        image: "https://stardewvalleywiki.com/mediawiki/images/9/95/Harvey.png"
    },
    {
        name: "Sam",
        address: "1 Willow Lane",
        likes: "Cactus Fruit, Maple Bar",
        image: "https://stardewvalleywiki.com/mediawiki/images/9/94/Sam.png"
    },
    {
        name: "Sebastian",
        address: "24 Mountain Road",
        likes: "Sashimi, Pumpkin Soup",
        image: "https://stardewvalleywiki.com/mediawiki/images/a/a8/Sebastian.png"
    },
    {
        name: "Shane",
        address: "Marnie's Ranch",
        likes: "Beer, Pepper Poppers",
        image: "https://stardewvalleywiki.com/mediawiki/images/8/8b/Shane.png"
    },
    {
        name: "Caroline",
        address: "Pierre's General Store",
        likes: "Fish Taco, Green Tea",
        image: "https://stardewvalleywiki.com/mediawiki/images/8/87/Caroline.png"
    },
    {
        name: "Clint",
        address: "Blacksmith",
        likes: "Emerald, Gold Bar",
        image: "https://stardewvalleywiki.com/mediawiki/images/3/31/Clint.png"
    },
    {
        name: "Demetrius",
        address: "24 Mountain Road",
        likes: "Bean Hotpot, Rice Pudding",
        image: "https://stardewvalleywiki.com/mediawiki/images/f/f9/Demetrius.png"
    },
    {
        name: "Dwarf",
        address: "Eastern Cave",
        likes: "Ruby, Aquamarine",
        image: "https://stardewvalleywiki.com/mediawiki/images/e/ed/Dwarf.png"
    }
]
npcs.each do |each_npc|
    Npc.create each_npc
    puts "creating npc #{each_npc}"
end
