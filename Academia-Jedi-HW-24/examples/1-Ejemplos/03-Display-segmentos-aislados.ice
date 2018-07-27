{
  "version": "1.2",
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
          "id": "b8717a7f-06be-4c6c-a03d-bafbe94f17bf",
          "type": "basic.output",
          "data": {
            "name": "a",
            "pins": [
              {
                "index": "0",
                "name": "GP6",
                "value": "49"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 296,
            "y": 224
          }
        },
        {
          "id": "1f2bf5a4-04cf-4509-81b8-ab6721f20c73",
          "type": "basic.output",
          "data": {
            "name": "d",
            "pins": [
              {
                "index": "0",
                "name": "GP3",
                "value": "41"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 640,
            "y": 224
          }
        },
        {
          "id": "43c594e8-865a-43d7-8346-267703bab0a3",
          "type": "725b7e2cb9666b5ed3183537d9c898f096dab82a",
          "position": {
            "x": 480,
            "y": 224
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "e90939bf-6a0d-41e7-9d52-53670c9e8239",
          "type": "725b7e2cb9666b5ed3183537d9c898f096dab82a",
          "position": {
            "x": 136,
            "y": 224
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "e4a02f16-1aed-480c-b53e-0a8b639ec9b5",
          "type": "basic.info",
          "data": {
            "info": "## Ejemplo 3: Segmentos aislados\n\nEjemplo de prueba para encender segmentos aislados  \nde un display de 7 segmentos de **cátodo común**  \nSe encienden los segmentos **a** y **d**",
            "readonly": true
          },
          "position": {
            "x": 120,
            "y": 0
          },
          "size": {
            "width": 568,
            "height": 96
          }
        },
        {
          "id": "2441721b-fc23-4a76-8584-8c71c3b7294c",
          "type": "basic.info",
          "data": {
            "info": "**Segmento a**",
            "readonly": true
          },
          "position": {
            "x": 296,
            "y": 168
          },
          "size": {
            "width": 128,
            "height": 32
          }
        },
        {
          "id": "ad1fe529-d134-43b1-a763-9e836371b855",
          "type": "basic.info",
          "data": {
            "info": "**Segmento d**",
            "readonly": true
          },
          "position": {
            "x": 640,
            "y": 176
          },
          "size": {
            "width": 128,
            "height": 32
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "43c594e8-865a-43d7-8346-267703bab0a3",
            "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
          },
          "target": {
            "block": "1f2bf5a4-04cf-4509-81b8-ab6721f20c73",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "e90939bf-6a0d-41e7-9d52-53670c9e8239",
            "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
          },
          "target": {
            "block": "b8717a7f-06be-4c6c-a03d-bafbe94f17bf",
            "port": "in"
          },
          "vertices": []
        }
      ]
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
        }
      }
    }
  }
}