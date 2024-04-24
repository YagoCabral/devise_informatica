# Criando processadores
Processor.create([
  { name: "Core i5", brand: "Intel", computer_id: nil },
  { name: "Core i7", brand: "Intel", computer_id: nil },
  { name: "Ryzen 5", brand: "AMD", computer_id: nil },
  { name: "Ryzen 7", brand: "AMD", computer_id: nil }
])
# Criando RAMs
Ram.create([
  { name: "Kingston Hiper X", size: 4 },
  { name: "Kingston Hiper X", size: 8 },
  { name: "Kingston Hiper X", size: 16 },
  { name: "Kingston Hiper X", size: 32 },
  { name: "Kingston Hiper X", size: 64 }
])

# Criando placas de vídeo
VideoCard.create([
  { name: "Evga Geforce RTX 2060", computer_id: nil },
  { name: "Asus ROG Strix Geforce RTX 3060", computer_id: nil },
  { name: "Gigabyte Radeon RX 6600 XT EAGLE", computer_id: nil }
])

# Criando placas-mãe
Motherboard.create([
  { name: "Asus ROG", processor_supported: "Intel", ram_supported: 16, slot: 2, integrated_video: false, computer_id: nil },
  { name: "Gigabyte Aorus", processor_supported: "AMD", ram_supported: 16, slot: 2, integrated_video: false, computer_id: nil },
  { name: "ASRock Steel Legend", processor_supported: ["Intel", "AMD"], ram_supported: 64, slot: 4, integrated_video: true, computer_id: nil }
])
