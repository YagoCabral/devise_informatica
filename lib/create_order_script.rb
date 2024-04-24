#Exemplo de JSON a ser enviado para criação de um Pedido que dará certo.
{
  "customer": {
    "name": "Maria"
  },
  "computer": {
    "processor": {
      "name": "Core i5",
      "brand": "Intel"
    },
    "motherboard": {
      "name": "Asus ROG",
      "processor_supported": "Intel",
      "ram_supported": 16,
      "slot": 2,
      "integrated_video": false
    },
    "rams": [
      {
        "name": "Kingston Hiper X",
        "size": 8
      },
      {
        "name": "Kingston Hiper X",
        "size": 8
      }
    ],
    "video_card": {
      "name": "Evga Geforce RTX 2060 6GB"
    }
  }
}

#Exemplo de JSON a ser enviado para criação de um Pedido que dará errado. (validate referente aos processadores suportados da placa mãe)
{
  "customer": {
    "name": "Jorge"
  },
  "computer": {
    "processor": {
      "name": "Ryzen 5",
      "brand": "AMD"
    },
    "motherboard": {
      "name": "Asus ROG",
      "processor_supported": "Intel",
      "ram_supported": 16,
      "slot": 2,
      "integrated_video": false
    },
    "rams": [
      {
        "name": "Kingston Hiper X",
        "size": 8
      },
      {
        "name": "Kingston Hiper X",
        "size": 8
      }
    ],
    "video_card": {
      "name": "Evga Geforce RTX 2060 6GB"
    }
  }
}

#Exemplo de JSON a ser enviado para criação de um Pedido que dará errado. (validate referente aos slots suportados da placa mãe)
{
  "customer": {
    "name": "João"
  },
  "computer": {
    "processor": {
      "name": "Core i5",
      "brand": "Intel"
    },
    "motherboard": {
      "name": "Asus ROG",
      "processor_supported": "Intel",
      "ram_supported": 16,
      "slot": 2,
      "integrated_video": false
    },
    "rams": [
      {
        "name": "Kingston Hiper X",
        "size": 4
      },
      {
        "name": "Kingston Hiper X",
        "size": 4
      },
      {
        "name": "Kingston Hiper X",
        "size": 4
      }
    ],
    "video_card": {
      "name": "Evga Geforce RTX 2060 6GB"
    }
  }
}

#Exemplo de JSON a ser enviado para criação de um Pedido que dará errado. (validate referente ao total de RAM suportados da placa mãe)
{
  "customer": {
    "name": "Debora"
  },
  "computer": {
    "processor": {
      "name": "Core i5",
      "brand": "Intel"
    },
    "motherboard": {
      "name": "Asus ROG",
      "processor_supported": "Intel",
      "ram_supported": 16,
      "slot": 2,
      "integrated_video": false
    },
    "rams": [
      {
        "name": "Kingston Hiper X",
        "size": 16
      },
      {
        "name": "Kingston Hiper X",
        "size": 16
      }
    ],
    "video_card": {
      "name": "Evga Geforce RTX 2060 6GB"
    }
  }
}

#Exemplo de JSON a ser enviado para criação de um Pedido que dará errado. (validate referente a placa mãe nao ter video integrado e nao existir pedido de placa de video tambem)
{
  "customer": {
    "name": "João"
  },
  "computer": {
    "processor": {
      "name": "Core i5",
      "brand": "Intel"
    },
    "motherboard": {
      "name": "Asus ROG",
      "processor_supported": "Intel",
      "ram_supported": 16,
      "slot": 2,
      "integrated_video": false
    },
    "rams": [
      {
        "name": "Kingston Hiper X",
        "size": 4
      },
      {
        "name": "Kingston Hiper X",
        "size": 4
      }
    ]
  }
}