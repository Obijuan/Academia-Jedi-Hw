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
          "id": "b39ffa3d-85aa-4521-84dd-4d6e9e120e6e",
          "type": "basic.output",
          "data": {
            "name": "out",
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
            "x": 408,
            "y": 112
          }
        },
        {
          "id": "b727008b-546b-4be2-93e5-69251beb4a83",
          "type": "725b7e2cb9666b5ed3183537d9c898f096dab82a",
          "position": {
            "x": 136,
            "y": 112
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "10413972-6b91-46be-99d2-9e531ab5bbd7",
          "type": "basic.info",
          "data": {
            "info": "Ejemplo \"Hola Mundo\" con la colección Academia-Jedi-HW-05\nBloque editable",
            "readonly": false
          },
          "position": {
            "x": 104,
            "y": -16
          },
          "size": {
            "width": 496,
            "height": 64
          }
        },
        {
          "id": "7d108d8c-dbee-4102-b696-a97f8eca2b12",
          "type": "basic.info",
          "data": {
            "info": "Se enciende el <b>LED0</b> de la Icezum Alhambra\nBloque Read-only",
            "readonly": true
          },
          "position": {
            "x": 144,
            "y": 200
          },
          "size": {
            "width": 384,
            "height": 48
          }
        },
        {
          "id": "0c02fb08-00b8-49f5-be4f-b41d65b7308e",
          "type": "basic.info",
          "data": {
            "info": "Ejemplo de imagen metida con HTML\n\n<img src=\"https://github.com/Obijuan/digital-electronics-with-open-FPGAs-tutorial/raw/master/wiki/portada/intro-16.jpg\" WIDTH=200>\n</img>",
            "readonly": true
          },
          "position": {
            "x": 664,
            "y": 16
          },
          "size": {
            "width": 384,
            "height": 144
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "b727008b-546b-4be2-93e5-69251beb4a83",
            "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
          },
          "target": {
            "block": "b39ffa3d-85aa-4521-84dd-4d6e9e120e6e",
            "port": "in"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": -39.5,
        "y": 93.6668
      },
      "zoom": 1
    }
  },
  "dependencies": {
    "725b7e2cb9666b5ed3183537d9c898f096dab82a": {
      "package": {
        "name": "1",
        "version": "0.1",
        "description": "Un bit constante a 1",
        "author": "Jesus Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2233.632%22%20height=%2269.34%22%20viewBox=%220%200%2031.530464%2065.006656%22%3E%3Cpath%20d=%22M3.517%2012.015L19%200l12.53%202.863-10.012%2043.262-9.746-2.227%207.7-34.532L8.03%2016.38z%22%20fill=%22green%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M17.593%2043.464l7.822%2010.472-6.56%207.919%202.27%202.043m-5.14-20.179l-4.542%2010.473-10.345%202.043.757%203.32%22%20fill=%22none%22%20stroke=%22green%22%20stroke-width=%222.196%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "3d584b0a-29eb-47af-8c43-c0822282ef05",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 512,
                "y": 160
              }
            },
            {
              "id": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
              "type": "basic.code",
              "data": {
                "code": "//-- Bit constante a 1\nassign q = 1'b1;\n\n",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 168,
                "y": 112
              },
              "size": {
                "width": 256,
                "height": 160
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
                "port": "q"
              },
              "target": {
                "block": "3d584b0a-29eb-47af-8c43-c0822282ef05",
                "port": "in"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 62,
            "y": 71.5
          },
          "zoom": 1
        }
      }
    }
  }
}