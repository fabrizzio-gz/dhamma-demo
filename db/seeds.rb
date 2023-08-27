Author.destroy_all
Quote.destroy_all

authors = Author.create!([
  {
    name: "Gautama Buddha",
    yob: 483,
    is_bce: true
  },
  {
    name: "Ray Bradbury",
    yob: 1920
  },
  {
    name: "Pema Chödrön",
    yob: 1936
  },
  {
    name: "Thich Nhat Hanh",
    yob: 1926
  }
])

puts "Created #{authors.length} authors"

buddha, ray, pema, thich = authors

quotes = Quote.create!([
  {
    author: buddha,
    message: "No one saves us but ourselves. No one can and no one may. We ourselves must walk the path."
  },
  {
    author: buddha,
    message: "You only lose what you cling to."
  },
  {
    author: ray,
    message: "Learning to let go should be learned before learning to get. Life should be touched, not strangled. You’ve got to relax, let it happen at times, and at others move forward with it."
  },
  {
    author: pema,
    message: "If we learn to open our hearts, anyone, including the people who drive us crazy, can be our teacher."
  },
  {
    author: thich,
    message: "Many people think excitement is happiness.... But when you are excited you are not peaceful. True happiness is based on peace."
  }
])

puts "Added #{quotes.length} quotes"