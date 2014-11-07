Dino.delete_all
Egg.delete_all

File.open("public/dino_names.txt").each_line do |name|
  name = name.chomp
  dino = Dino.create(name: Faker::Name.name, genus: name, height: name.length * 1.5, length: name.length * 2.5)
  dino.genus.scan(/[xyz]/).size.times do |n|
    dino.eggs.create(shell_color: Faker::Commerce.color, name: Faker::Name.name)
  end
end
