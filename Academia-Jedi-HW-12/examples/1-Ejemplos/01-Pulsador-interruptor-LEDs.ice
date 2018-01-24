{
  "version": "1.1",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "fd00bcac-8276-40cd-a716-69597b90070b",
          "type": "basic.input",
          "data": {
            "name": "Pulsador",
            "pins": [
              {
                "index": "0",
                "name": "D13",
                "value": "144"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 256,
            "y": 192
          }
        },
        {
          "id": "393e6b83-f68f-4572-89e9-0eb402cf913f",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED7",
                "value": "104"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 464,
            "y": 192
          }
        },
        {
          "id": "bf3c0224-9c36-4ccb-b5a1-75049e2c7d10",
          "type": "basic.input",
          "data": {
            "name": "Interruptor",
            "pins": [
              {
                "index": "0",
                "name": "D12",
                "value": "143"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 256,
            "y": 312
          }
        },
        {
          "id": "b45dddd9-d953-4f40-ba1e-aecfbc45e1cd",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 464,
            "y": 312
          }
        },
        {
          "id": "52674030-725f-4762-a5c0-8fc15f9e964b",
          "type": "basic.info",
          "data": {
            "info": "<B>Ejemplo 1</B>: Un pulsador y un interruptor externos conectados\na los LEDs 7 y 0 respectivamente",
            "readonly": true
          },
          "position": {
            "x": 144,
            "y": 112
          },
          "size": {
            "width": 544,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "fd00bcac-8276-40cd-a716-69597b90070b",
            "port": "out"
          },
          "target": {
            "block": "393e6b83-f68f-4572-89e9-0eb402cf913f",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "bf3c0224-9c36-4ccb-b5a1-75049e2c7d10",
            "port": "out"
          },
          "target": {
            "block": "b45dddd9-d953-4f40-ba1e-aecfbc45e1cd",
            "port": "in"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 0,
        "y": 0
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}