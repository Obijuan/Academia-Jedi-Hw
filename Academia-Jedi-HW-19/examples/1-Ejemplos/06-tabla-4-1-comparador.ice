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
          "id": "733ddb53-818b-459e-8ffc-c5f1642f0211",
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
            "x": 96,
            "y": 40
          }
        },
        {
          "id": "41e113a2-93c2-4950-ad95-91a4aba45dc2",
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
            "x": 96,
            "y": 112
          }
        },
        {
          "id": "a4085879-be2a-4040-8155-eb317ca8da79",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "D9",
                "value": "139"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 568,
            "y": 160
          }
        },
        {
          "id": "806087d2-bb11-493f-977d-9239aca3c711",
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
            "x": 96,
            "y": 216
          }
        },
        {
          "id": "316cafbf-d1cd-4b43-b387-2f4ad16ed43f",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "D10",
                "value": "141"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 96,
            "y": 280
          }
        },
        {
          "id": "92d45545-934f-49cb-94d7-29d21b308c7d",
          "type": "basic.memory",
          "data": {
            "name": "Comparador",
            "list": "1\n0\n0\n0\n0\n1\n0\n0\n0\n0\n1\n0\n0\n0\n0\n1",
            "local": false,
            "format": 10
          },
          "position": {
            "x": 384,
            "y": -184
          },
          "size": {
            "width": 112,
            "height": 272
          }
        },
        {
          "id": "81594549-e64b-49cc-b0ff-977e144cef3c",
          "type": "basic.info",
          "data": {
            "info": "**Ejemplo 6**: Comparador de 2 bits  \n\nEl LED se enciende cuando los numeros correspondientes a los bits i3, i2 y  \ni1,i0 son iguales",
            "readonly": true
          },
          "position": {
            "x": 120,
            "y": -336
          },
          "size": {
            "width": 560,
            "height": 96
          }
        },
        {
          "id": "26763239-f2f0-406b-8c53-3d6bfa297dc4",
          "type": "basic.info",
          "data": {
            "info": "**Tabla de verdad**\n\n| Fila | i3     | i2     | i1     | i0     | Salida |\n|------|--------|--------|--------|--------|--------|\n|  0   |  **0** | **0**  |  **0** |  **0** | **1**  |\n|  1   |  0     | 0      |  0     |  1     |   0    |\n|  2   |  0     | 0      |  1     |  0     |   0    |\n|  3   |  0     | 0      |  1     |  1     |   0    |\n|  4   |  0     | 1      |  0     |  0     |   0    |\n|  5   |  **0** | **1**  | **0**  | **1**  |  **1** |\n|  6   |  0     | 1      |  1     |  0     |   0    |\n|  7   |  0     | 1      |  1     |  1     |   0    |\n|  8   |  1     | 0      |  0     |  0     |   0    |\n|  9   |  1     | 0      |  0     |  1     |   0    |\n| 10   |  **1** | **0**  | **1**  | **0**  |  **1** |\n| 11   |  1     | 0      |  1     |  1     |   0    |\n| 12   |  1     | 1      |  0     |  0     |   0    |\n| 13   |  1     | 1      |  0     |  1     |   0    |\n| 14   |  1     | 1      |  1     |  0     |   0    |\n| 15   |  **1** | **1**  | **1**  | **1**  |  **1** |\n",
            "readonly": true
          },
          "position": {
            "x": 728,
            "y": -352
          },
          "size": {
            "width": 400,
            "height": 320
          }
        },
        {
          "id": "49512572-90d8-4c34-9543-5061a580dd94",
          "type": "46ebf5816f497c9fd58e437224c28b96109e1615",
          "position": {
            "x": 392,
            "y": 128
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "a1edc93e-52c2-4b30-8fc0-1abc17e5038c",
          "type": "basic.info",
          "data": {
            "info": "**Número 1**",
            "readonly": true
          },
          "position": {
            "x": 104,
            "y": 0
          },
          "size": {
            "width": 128,
            "height": 48
          }
        },
        {
          "id": "0f49d9da-be84-4aa5-931e-86e8a9bd7729",
          "type": "basic.info",
          "data": {
            "info": "**Número 2**",
            "readonly": true
          },
          "position": {
            "x": 96,
            "y": 184
          },
          "size": {
            "width": 128,
            "height": 48
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "49512572-90d8-4c34-9543-5061a580dd94",
            "port": "a27d660d-90c7-4b16-9727-ea799771b851"
          },
          "target": {
            "block": "a4085879-be2a-4040-8155-eb317ca8da79",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "92d45545-934f-49cb-94d7-29d21b308c7d",
            "port": "memory-out"
          },
          "target": {
            "block": "49512572-90d8-4c34-9543-5061a580dd94",
            "port": "5121a69e-9312-4485-bd1e-915ad38f5770"
          }
        },
        {
          "source": {
            "block": "733ddb53-818b-459e-8ffc-c5f1642f0211",
            "port": "out"
          },
          "target": {
            "block": "49512572-90d8-4c34-9543-5061a580dd94",
            "port": "c43387d0-9dec-490a-b872-af16f8033080"
          },
          "vertices": [
            {
              "x": 304,
              "y": 96
            }
          ]
        },
        {
          "source": {
            "block": "41e113a2-93c2-4950-ad95-91a4aba45dc2",
            "port": "out"
          },
          "target": {
            "block": "49512572-90d8-4c34-9543-5061a580dd94",
            "port": "d32f2cfa-80cf-42d1-b81d-28f860b4651b"
          },
          "vertices": [
            {
              "x": 272,
              "y": 160
            }
          ]
        },
        {
          "source": {
            "block": "806087d2-bb11-493f-977d-9239aca3c711",
            "port": "out"
          },
          "target": {
            "block": "49512572-90d8-4c34-9543-5061a580dd94",
            "port": "ace53645-b2e3-46be-beae-4ada8d69586e"
          },
          "vertices": [
            {
              "x": 280,
              "y": 224
            }
          ]
        },
        {
          "source": {
            "block": "316cafbf-d1cd-4b43-b387-2f4ad16ed43f",
            "port": "out"
          },
          "target": {
            "block": "49512572-90d8-4c34-9543-5061a580dd94",
            "port": "561eb4e1-8d5e-48ed-be5f-2e0009ca1648"
          },
          "vertices": [
            {
              "x": 304,
              "y": 256
            }
          ]
        }
      ]
    }
  },
  "dependencies": {
    "46ebf5816f497c9fd58e437224c28b96109e1615": {
      "package": {
        "name": "Tabla 4x1",
        "version": "0.1",
        "description": "Circuito combinacional de 4 entradas y 1 salida",
        "author": "Juan González Gómez y Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22184.803%22%20height=%22197.944%22%20viewBox=%220%200%20173.25325%20185.57257%22%3E%3Cg%20transform=%22translate(-181.933%20-240.254)%22%20stroke=%22#000%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22%3E%3Crect%20width=%22170.253%22%20height=%22182.573%22%20x=%22183.433%22%20y=%22241.754%22%20ry=%2219.969%22%20fill=%22#3e8db8%22%20stroke-width=%223%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22274.019%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22274.413%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22274.413%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22309.826%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22310.219%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22310.219%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22346.025%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22346.419%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22346.419%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22381.832%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22382.225%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22382.225%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c43387d0-9dec-490a-b872-af16f8033080",
              "type": "basic.input",
              "data": {
                "name": "i3",
                "clock": false
              },
              "position": {
                "x": -8,
                "y": 240
              }
            },
            {
              "id": "d32f2cfa-80cf-42d1-b81d-28f860b4651b",
              "type": "basic.input",
              "data": {
                "name": "i2",
                "clock": false
              },
              "position": {
                "x": -8,
                "y": 312
              }
            },
            {
              "id": "a27d660d-90c7-4b16-9727-ea799771b851",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 640,
                "y": 336
              }
            },
            {
              "id": "ace53645-b2e3-46be-beae-4ada8d69586e",
              "type": "basic.input",
              "data": {
                "name": "i1",
                "clock": false
              },
              "position": {
                "x": -8,
                "y": 384
              }
            },
            {
              "id": "561eb4e1-8d5e-48ed-be5f-2e0009ca1648",
              "type": "basic.input",
              "data": {
                "name": "i0",
                "clock": false
              },
              "position": {
                "x": -8,
                "y": 456
              }
            },
            {
              "id": "5121a69e-9312-4485-bd1e-915ad38f5770",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "",
                "local": false
              },
              "position": {
                "x": 352,
                "y": 152
              }
            },
            {
              "id": "48c38eba-4e12-44d9-a55b-a93def6a27db",
              "type": "basic.code",
              "data": {
                "code": "wire q;\nreg [0:0] tabla[0:15];\n\nwire [3:0] i = {i3, i2, i1, i0};\n\n//-- Read the table\nassign q = tabla[i];\n\n//-- Init table from DATA parameters\ninitial begin\n  if (DATA) $readmemh(DATA, tabla);\nend",
                "params": [
                  {
                    "name": "DATA"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "i3"
                    },
                    {
                      "name": "i2"
                    },
                    {
                      "name": "i1"
                    },
                    {
                      "name": "i0"
                    }
                  ],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 208,
                "y": 264
              },
              "size": {
                "width": 384,
                "height": 208
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "q"
              },
              "target": {
                "block": "a27d660d-90c7-4b16-9727-ea799771b851",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "ace53645-b2e3-46be-beae-4ada8d69586e",
                "port": "out"
              },
              "target": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "i1"
              },
              "vertices": [
                {
                  "x": 160,
                  "y": 408
                }
              ]
            },
            {
              "source": {
                "block": "561eb4e1-8d5e-48ed-be5f-2e0009ca1648",
                "port": "out"
              },
              "target": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "i0"
              }
            },
            {
              "source": {
                "block": "c43387d0-9dec-490a-b872-af16f8033080",
                "port": "out"
              },
              "target": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "i3"
              }
            },
            {
              "source": {
                "block": "d32f2cfa-80cf-42d1-b81d-28f860b4651b",
                "port": "out"
              },
              "target": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "i2"
              }
            },
            {
              "source": {
                "block": "5121a69e-9312-4485-bd1e-915ad38f5770",
                "port": "constant-out"
              },
              "target": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "DATA"
              }
            }
          ]
        }
      }
    }
  }
}