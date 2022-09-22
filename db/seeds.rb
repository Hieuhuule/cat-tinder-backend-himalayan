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
        likes: "Amethyst",
        image: "https://stardewvalleywiki.com/mediawiki/images/8/88/Abigail.png"
    },
    {
        
        name: "Emily",
        address: "2 Willow Lane",
        likes: "Aquamarine",
        image: "https://stardewvalleywiki.com/mediawiki/images/2/28/Emily.png"
    },
    {
        
        name: "Haley",
        address: "2 Willow Lane",
        likes: "Coconut",
        image: "https://stardewvalleywiki.com/mediawiki/images/1/1b/Haley.png"
    }
]
npcs.each do |each_npc|
    Npc.create each_npc
    puts "creating npc #{each_npc}"
end
