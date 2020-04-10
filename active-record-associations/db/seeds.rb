TigerRoar.destroy_all
Tiger.destroy_all

gerald = Tiger.create(name: "Gerald", color: "Blue")
holly = Tiger.create(name: "Holly", color: "Green")

go_go_go = Roar.create(message: "Go! Go! Go!")
yay_tigers = Roar.create(message: "Yay tigers!")
rawr = Roar.create(message: "RAWR")

10.times do
  TigerRoar.create(volume: (rand(10) + 1), tiger_id: Tiger.ids.sample, roar_id: Roar.ids.sample)
end