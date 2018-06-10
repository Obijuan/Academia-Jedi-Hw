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
          "id": "f448270a-4a12-4c3e-a693-208450291c49",
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
            "x": 472,
            "y": 96
          }
        },
        {
          "id": "8460320d-622f-4a7d-8ece-f9e90c96853b",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "range": "[1:0]",
            "pins": [
              {
                "index": "1",
                "name": "LED1",
                "value": "96"
              },
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 912,
            "y": 128
          }
        },
        {
          "id": "83041850-96d9-48b6-9488-fd4d5dd0071f",
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
            "x": 472,
            "y": 192
          }
        },
        {
          "id": "2c12ae3f-245f-4f56-9b2a-a4358a801794",
          "type": "725b7e2cb9666b5ed3183537d9c898f096dab82a",
          "position": {
            "x": 168,
            "y": 96
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "b28896f1-f0b9-41cb-a44e-21c117e21d1e",
          "type": "725b7e2cb9666b5ed3183537d9c898f096dab82a",
          "position": {
            "x": 168,
            "y": 192
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "fa6a6cb1-adc5-41bc-a109-5d4feb7daab9",
          "type": "ceff2da3577d3e4da3ad522a234b993cfc71e21a",
          "position": {
            "x": 656,
            "y": 144
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "4e9943c4-25c3-4ed6-8f97-94547787c81b",
          "type": "basic.info",
          "data": {
            "info": "**Dos circuitos equivalentes, para encender 2 LEDs**",
            "readonly": true
          },
          "position": {
            "x": 448,
            "y": -64
          },
          "size": {
            "width": 384,
            "height": 32
          }
        },
        {
          "id": "018b401b-fd35-4a34-97c5-b1d0ccc44412",
          "type": "basic.info",
          "data": {
            "info": "Usando 2 cables **independientes**",
            "readonly": true
          },
          "position": {
            "x": 176,
            "y": 32
          },
          "size": {
            "width": 288,
            "height": 40
          }
        },
        {
          "id": "b14bcd55-4d77-4515-a7c2-a5fc6e3cac7c",
          "type": "basic.info",
          "data": {
            "info": "Usando un **bus de 2 bits**",
            "readonly": true
          },
          "position": {
            "x": 744,
            "y": 40
          },
          "size": {
            "width": 240,
            "height": 40
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "2c12ae3f-245f-4f56-9b2a-a4358a801794",
            "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
          },
          "target": {
            "block": "f448270a-4a12-4c3e-a693-208450291c49",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "b28896f1-f0b9-41cb-a44e-21c117e21d1e",
            "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
          },
          "target": {
            "block": "83041850-96d9-48b6-9488-fd4d5dd0071f",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "fa6a6cb1-adc5-41bc-a109-5d4feb7daab9",
            "port": "6a253ddf-22b2-43cd-ba6f-561bd1af6970"
          },
          "target": {
            "block": "8460320d-622f-4a7d-8ece-f9e90c96853b",
            "port": "in"
          },
          "size": 2
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
    },
    "ceff2da3577d3e4da3ad522a234b993cfc71e21a": {
      "package": {
        "name": "Valor_3_2bits",
        "version": "0.0.1",
        "description": "Valor constante 3 para bus de 2 bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22137.022%22%20height=%22304.627%22%20viewBox=%220%200%20128.45774%20285.58757%22%3E%3Cg%20font-weight=%22400%22%20font-family=%22Ubuntu%20Mono%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctext%20style=%22line-height:125%25;-inkscape-font-specification:'Ubuntu%20Mono'%22%20x=%22293.115%22%20y=%22648.344%22%20font-size=%22335.399%22%20fill=%22green%22%20transform=%22translate(-312.904%20-436.037)%22%3E%3Ctspan%20x=%22293.115%22%20y=%22648.344%22%3E3%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;-inkscape-font-specification:'Ubuntu%20Mono'%22%20x=%22341.722%22%20y=%22721.624%22%20font-size=%2283.077%22%20transform=%22translate(-312.904%20-436.037)%22%3E%3Ctspan%20x=%22341.722%22%20y=%22721.624%22%3E11%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "6a253ddf-22b2-43cd-ba6f-561bd1af6970",
              "type": "basic.output",
              "data": {
                "name": "k",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 928,
                "y": 256
              }
            },
            {
              "id": "ad7918eb-22dd-4b6c-949f-e428f5a55530",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "3",
                "local": true
              },
              "position": {
                "x": 728,
                "y": 152
              }
            },
            {
              "id": "cfb4d1d2-7686-45c7-9af0-0293f03a9881",
              "type": "1577535d38e0077281a8de7dc00933b07ec4f543",
              "position": {
                "x": 728,
                "y": 256
              },
              "size": {
                "width": 96,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "cfb4d1d2-7686-45c7-9af0-0293f03a9881",
                "port": "603ddbc9-28cf-4ecc-a0c6-a5a2ce3b0b26"
              },
              "target": {
                "block": "6a253ddf-22b2-43cd-ba6f-561bd1af6970",
                "port": "in"
              },
              "size": 2
            },
            {
              "source": {
                "block": "ad7918eb-22dd-4b6c-949f-e428f5a55530",
                "port": "constant-out"
              },
              "target": {
                "block": "cfb4d1d2-7686-45c7-9af0-0293f03a9881",
                "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
              }
            }
          ]
        }
      }
    },
    "1577535d38e0077281a8de7dc00933b07ec4f543": {
      "package": {
        "name": "Constante-2bits",
        "version": "0.0.1",
        "description": "Valor genérico constante, de 2 bits. Su valor se introduce como parámetro. Por defecto vale 0",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22145.608%22%20height=%22247.927%22%20viewBox=%220%200%20136.50729%20232.43134%22%3E%3Ctext%20style=%22line-height:125%25;-inkscape-font-specification:'Ubuntu%20Mono'%22%20x=%22293.115%22%20y=%22648.344%22%20font-weight=%22400%22%20font-size=%22335.399%22%20font-family=%22Ubuntu%20Mono%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22green%22%20transform=%22translate(-316.929%20-415.913)%22%3E%3Ctspan%20x=%22293.115%22%20y=%22648.344%22%3Ek%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "603ddbc9-28cf-4ecc-a0c6-a5a2ce3b0b26",
              "type": "basic.output",
              "data": {
                "name": "k",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 960,
                "y": 248
              }
            },
            {
              "id": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 728,
                "y": 112
              }
            },
            {
              "id": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
              "type": "basic.code",
              "data": {
                "code": "assign k = VALUE;",
                "params": [
                  {
                    "name": "VALUE"
                  }
                ],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "k",
                      "range": "[1:0]",
                      "size": 2
                    }
                  ]
                }
              },
              "position": {
                "x": 672,
                "y": 248
              },
              "size": {
                "width": 208,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "k"
              },
              "target": {
                "block": "603ddbc9-28cf-4ecc-a0c6-a5a2ce3b0b26",
                "port": "in"
              },
              "size": 2
            },
            {
              "source": {
                "block": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
                "port": "constant-out"
              },
              "target": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "VALUE"
              }
            }
          ]
        }
      }
    }
  }
}