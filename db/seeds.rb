# seeds.rb

# Criando processadores
processors = [
  { name: "Core i5", brand: "Intel" },
  { name: "Core i7", brand: "Intel" },
  { name: "Ryzen 5", brand: "AMD" },
  { name: "Ryzen 7", brand: "AMD" }
]

processors.each do |processor_params|
  2.times do
    Processor.create(processor_params)
  end
end

# Criando RAMs
rams = [
  { name: "Kingston Hiper X", size: 4 },
  { name: "Kingston Hiper X", size: 8 },
  { name: "Kingston Hiper X", size: 16 },
  { name: "Kingston Hiper X", size: 32 },
  { name: "Kingston Hiper X", size: 64 }
]

rams.each do |ram_params|
  2.times do
    Ram.create(ram_params)
  end
end

# Criando placas de vídeo
video_cards = [
  { name: "Evga Geforce RTX 2060" },
  { name: "Asus ROG Strix Geforce RTX 3060" },
  { name: "Gigabyte Radeon RX 6600 XT EAGLE" }
]

video_cards.each do |video_card_params|
  2.times do
    VideoCard.create(video_card_params)
  end
end

# Criando placas-mãe
motherboards = [
  { name: "Asus ROG", processor_supported: "Intel", ram_supported: 16, slot: 2, integrated_video: false },
  { name: "Gigabyte Aorus", processor_supported: "AMD", ram_supported: 16, slot: 2, integrated_video: false },
  { name: "ASRock Steel Legend", processor_supported: ["Intel", "AMD"], ram_supported: 64, slot: 4, integrated_video: true }
]

motherboards.each do |motherboard_params|
  2.times do
    Motherboard.create(motherboard_params)
  end
end

puts "Seed data has been created successfully!"
