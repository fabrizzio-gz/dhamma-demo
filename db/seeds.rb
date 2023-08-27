Author.destroy_all

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
