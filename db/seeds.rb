class Seed
  def self.begin
    seed = Seed.new
    seed.generate_groups
  end

  def rando_group
    which = rand(0..3)
    orginal_choices = [
      Faker::StarTrek.character,
      Faker::StarTrek.location,
      Faker::StarTrek.specie,
      Faker::StarTrek.villain
    ]
    return orginal_choices[which]
  end

  def generate_groups
    15.times do |i|
      group = Group.create!(
        subject: rando_group
      )
      puts "Created group: #{group.subject} at position #{i}"
    end
  end
end

Seed.begin
