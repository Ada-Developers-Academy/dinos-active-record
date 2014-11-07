Dino.delete_all
Egg.delete_all

File.open("public/dino_names.txt").each_line do |name|
  dino = Dino.create(name: Faker::Name.name, genus: name, height: rand(56), length: rand(120))
  dino.genus.scan(/[xyz]/).size.times do |n|
    dino.eggs.create(shell_color: Faker::Commerce.color, name: Faker::Name.name)
  end
end
