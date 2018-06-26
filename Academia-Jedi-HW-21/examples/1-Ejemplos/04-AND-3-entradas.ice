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
          "id": "2f97f8a2-d9eb-4db3-aff3-72c5e7743b07",
          "type": "basic.input",
          "data": {
            "name": "",
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
            "x": 136,
            "y": 136
          }
        },
        {
          "id": "2713bc05-b29d-437f-a59e-5500d3522937",
          "type": "basic.input",
          "data": {
            "name": "",
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
            "x": 136,
            "y": 200
          }
        },
        {
          "id": "ad5420df-83e7-4e60-b84c-10a2d5ea3c4c",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "D0",
                "value": "119"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 560,
            "y": 200
          }
        },
        {
          "id": "6a6e16f4-e574-4b92-9cdd-4a0fa00c4d21",
          "type": "basic.input",
          "data": {
            "name": "",
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
            "x": 136,
            "y": 264
          }
        },
        {
          "id": "463e655b-288d-48fe-81ff-d859d1dab1c6",
          "type": "ddeb50a0718582b481c5c85a25ec534d1bdbffa0",
          "position": {
            "x": 368,
            "y": 184
          },
          "size": {
            "width": 96,
            "height": 96
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "2f97f8a2-d9eb-4db3-aff3-72c5e7743b07",
            "port": "out"
          },
          "target": {
            "block": "463e655b-288d-48fe-81ff-d859d1dab1c6",
            "port": "5881e418-3ee2-403c-8a72-f2a78a237a0c"
          }
        },
        {
          "source": {
            "block": "2713bc05-b29d-437f-a59e-5500d3522937",
            "port": "out"
          },
          "target": {
            "block": "463e655b-288d-48fe-81ff-d859d1dab1c6",
            "port": "f5b03833-7381-486b-9d4f-fe3844fdbfe9"
          }
        },
        {
          "source": {
            "block": "6a6e16f4-e574-4b92-9cdd-4a0fa00c4d21",
            "port": "out"
          },
          "target": {
            "block": "463e655b-288d-48fe-81ff-d859d1dab1c6",
            "port": "36dac096-8a5c-4798-933e-5f42012ef4dc"
          }
        },
        {
          "source": {
            "block": "463e655b-288d-48fe-81ff-d859d1dab1c6",
            "port": "f6b2a7f0-8f02-4ec0-b1d0-da2897aa3f68"
          },
          "target": {
            "block": "ad5420df-83e7-4e60-b84c-10a2d5ea3c4c",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {
    "ddeb50a0718582b481c5c85a25ec534d1bdbffa0": {
      "package": {
        "name": "AND-3",
        "version": "0.1",
        "description": "Puerta AND de 3 entradas",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22336.09%22%20height=%22194.045%22%20version=%221%22%3E%3Cpath%20d=%22M174.656%20190.045H78.304V4h96.352s87.463%208.625%2087.463%2091.94c0%2083.311-87.463%2094.105-87.463%2094.105z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2045.668h74.018M4.057%20144.812h74.018M262.707%2094.778h69.326%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2292.894%22%20y=%22114.587%22%20font-weight=%22400%22%20font-size=%2258.054%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2292.894%22%20y=%22114.587%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EAND%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M4.057%2094.729h74.018%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "5881e418-3ee2-403c-8a72-f2a78a237a0c",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 120,
                "y": 160
              }
            },
            {
              "id": "f5b03833-7381-486b-9d4f-fe3844fdbfe9",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 120,
                "y": 232
              }
            },
            {
              "id": "f6b2a7f0-8f02-4ec0-b1d0-da2897aa3f68",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 632,
                "y": 232
              }
            },
            {
              "id": "36dac096-8a5c-4798-933e-5f42012ef4dc",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 120,
                "y": 304
              }
            },
            {
              "id": "5d8ad13b-e276-4b22-b2e1-99af83b78cad",
              "type": "basic.info",
              "data": {
                "info": "**Puertos de entrada**",
                "readonly": true
              },
              "position": {
                "x": 104,
                "y": 120
              },
              "size": {
                "width": 208,
                "height": 40
              }
            },
            {
              "id": "4aa666dd-015b-4d56-8453-0e4990dc5a9c",
              "type": "basic.info",
              "data": {
                "info": "**Puerto de salida**",
                "readonly": true
              },
              "position": {
                "x": 616,
                "y": 192
              },
              "size": {
                "width": 208,
                "height": 40
              }
            },
            {
              "id": "eed4fb45-b863-4713-8beb-d51e420b71a9",
              "type": "b2090f68ef94fd3c5c0eaea93eb6ba7e80aff0b6",
              "position": {
                "x": 304,
                "y": 176
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "12dcb780-5815-4f32-b9dd-22e988590bd7",
              "type": "b2090f68ef94fd3c5c0eaea93eb6ba7e80aff0b6",
              "position": {
                "x": 472,
                "y": 232
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "3671f663-c5cf-4fee-bf3b-aa817f3fa4e9",
              "type": "basic.info",
              "data": {
                "info": "**Puerta AND de tres entradas**",
                "readonly": true
              },
              "position": {
                "x": 280,
                "y": 16
              },
              "size": {
                "width": 280,
                "height": 56
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "5881e418-3ee2-403c-8a72-f2a78a237a0c",
                "port": "out"
              },
              "target": {
                "block": "eed4fb45-b863-4713-8beb-d51e420b71a9",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "f5b03833-7381-486b-9d4f-fe3844fdbfe9",
                "port": "out"
              },
              "target": {
                "block": "eed4fb45-b863-4713-8beb-d51e420b71a9",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "12dcb780-5815-4f32-b9dd-22e988590bd7",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "f6b2a7f0-8f02-4ec0-b1d0-da2897aa3f68",
                "port": "in"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "eed4fb45-b863-4713-8beb-d51e420b71a9",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "12dcb780-5815-4f32-b9dd-22e988590bd7",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "36dac096-8a5c-4798-933e-5f42012ef4dc",
                "port": "out"
              },
              "target": {
                "block": "12dcb780-5815-4f32-b9dd-22e988590bd7",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              },
              "vertices": []
            }
          ]
        }
      }
    },
    "b2090f68ef94fd3c5c0eaea93eb6ba7e80aff0b6": {
      "package": {
        "name": "AND",
        "version": "1.0.1",
        "description": "Puerta AND",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22336.09%22%20height=%22194.045%22%20version=%221%22%3E%3Cpath%20d=%22M174.656%20190.045H78.304V4h96.352s87.463%208.625%2087.463%2091.94c0%2083.311-87.463%2094.105-87.463%2094.105z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2045.668h74.018M4.057%20144.812h74.018m184.632-50.034h69.326%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2292.894%22%20y=%22114.587%22%20font-weight=%22400%22%20font-size=%2258.054%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2292.894%22%20y=%22114.587%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EAND%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 88
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 784,
                "y": 152
              }
            },
            {
              "id": "97b51945-d716-4b6c-9db9-970d08541249",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 224
              }
            },
            {
              "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "type": "basic.code",
              "data": {
                "code": "//-- Puerta AND\n\n//-- module and (input wire a, input wire b,\n//--             output wire c);\n\nassign c = a & b;\n\n//-- endmodule",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    },
                    {
                      "name": "b"
                    }
                  ],
                  "out": [
                    {
                      "name": "c"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              },
              "size": {
                "width": 464,
                "height": 272
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "97b51945-d716-4b6c-9db9-970d08541249",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "b"
              }
            },
            {
              "source": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        }
      }
    }
  }
}