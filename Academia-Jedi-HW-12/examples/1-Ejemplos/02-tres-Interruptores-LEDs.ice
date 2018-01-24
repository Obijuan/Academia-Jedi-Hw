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
          "id": "a8166097-0b53-4fc8-b262-2fc63ead21d3",
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
            "y": 48
          }
        },
        {
          "id": "98595930-7561-46fb-90dd-41ff18397897",
          "type": "basic.input",
          "data": {
            "name": "Interruptor",
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
            "y": 120
          }
        },
        {
          "id": "ed0235f2-627c-460a-a906-dd39473f3249",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED6",
                "value": "102"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 464,
            "y": 120
          }
        },
        {
          "id": "71abb172-a5b5-445e-93fc-800f0136155b",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED4",
                "value": "99"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 464,
            "y": 216
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
            "y": 288
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
                "name": "LED3",
                "value": "98"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 464,
            "y": 288
          }
        },
        {
          "id": "88329416-acc8-4356-baa3-d31a1bddd410",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED1",
                "value": "96"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 464,
            "y": 392
          }
        },
        {
          "id": "52038472-6c4f-48fa-a092-48f3911f553a",
          "type": "basic.input",
          "data": {
            "name": "Interruptor",
            "pins": [
              {
                "index": "0",
                "name": "D11",
                "value": "142"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 256,
            "y": 472
          }
        },
        {
          "id": "ad5e0ac5-46d2-4e9e-a449-4e27a8b86fb3",
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
            "y": 472
          }
        },
        {
          "id": "d7e7d11b-38a7-4411-8e61-43b33135f708",
          "type": "basic.info",
          "data": {
            "info": "<B>Ejemplo 2</B>: Mostrar el estado de 3 interruptores\nen los LEDs",
            "readonly": true
          },
          "position": {
            "x": 624,
            "y": 96
          },
          "size": {
            "width": 448,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "bf3c0224-9c36-4ccb-b5a1-75049e2c7d10",
            "port": "out"
          },
          "target": {
            "block": "b45dddd9-d953-4f40-ba1e-aecfbc45e1cd",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "98595930-7561-46fb-90dd-41ff18397897",
            "port": "out"
          },
          "target": {
            "block": "a8166097-0b53-4fc8-b262-2fc63ead21d3",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "52038472-6c4f-48fa-a092-48f3911f553a",
            "port": "out"
          },
          "target": {
            "block": "ad5e0ac5-46d2-4e9e-a449-4e27a8b86fb3",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "98595930-7561-46fb-90dd-41ff18397897",
            "port": "out"
          },
          "target": {
            "block": "ed0235f2-627c-460a-a906-dd39473f3249",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "bf3c0224-9c36-4ccb-b5a1-75049e2c7d10",
            "port": "out"
          },
          "target": {
            "block": "71abb172-a5b5-445e-93fc-800f0136155b",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "52038472-6c4f-48fa-a092-48f3911f553a",
            "port": "out"
          },
          "target": {
            "block": "88329416-acc8-4356-baa3-d31a1bddd410",
            "port": "in"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": -28.4688,
        "y": 13.8599
      },
      "zoom": 0.8031
    }
  },
  "dependencies": {}
}