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
          "id": "4bc0f89d-c4d9-4da7-8645-059c40ee52fc",
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
            "x": -256,
            "y": -120
          }
        },
        {
          "id": "a17ec369-095a-4d53-a4db-adc2ee010d54",
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
            "x": -256,
            "y": -56
          }
        },
        {
          "id": "98d45091-732a-4a3e-99ea-8df5a3834177",
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
            "x": 168,
            "y": -40
          }
        },
        {
          "id": "c24d4466-0462-453e-abff-3864871065aa",
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
            "x": -256,
            "y": 8
          }
        },
        {
          "id": "f1dab0ba-018b-49e5-aeaf-f15dc7edc39a",
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
            "x": -256,
            "y": 72
          }
        },
        {
          "id": "599d62f5-00c7-4576-b0cd-899da6a7dba1",
          "type": "basic.memory",
          "data": {
            "name": "",
            "list": "1\n0\n0\n1\n0\n1\n1\n0\n0\n1\n1\n0\n1\n0\n0\n1",
            "local": false
          },
          "position": {
            "x": -24,
            "y": -384
          },
          "size": {
            "width": 104,
            "height": 272
          }
        },
        {
          "id": "f7ff3e5a-bae7-4bd3-b45a-f2adca86f69d",
          "type": "basic.info",
          "data": {
            "info": "**Paridad**",
            "readonly": true
          },
          "position": {
            "x": 184,
            "y": -88
          },
          "size": {
            "width": 120,
            "height": 48
          }
        },
        {
          "id": "a86d9cd1-0f37-46a1-9258-a281d5578089",
          "type": "basic.info",
          "data": {
            "info": "0: impar  \n1: par ",
            "readonly": true
          },
          "position": {
            "x": 280,
            "y": -96
          },
          "size": {
            "width": 152,
            "height": 48
          }
        },
        {
          "id": "64442f24-5996-489b-a3d0-5cb3d3db9e9b",
          "type": "basic.info",
          "data": {
            "info": "**Solución ejercicio 19.3:** (5 Bitpoints) Detector de paridad de 4 bits\n\nDiseñar un **circuito combinacional** de **4 bits de entrada** y uno de salida  \ncapaz de detectar si el número de 1's en sus entradas es **par**. En ese caso, se  \nencenderá el LED conectado a su salida. Si el número es impar, se apagará  \nEste tipo de circuitos se llaman **detectores de paridad**, y se usan mucho en  \ncomunicaciones para comprobar la integridad de la información recibida. La  \nentrada **0000** tiene **paridad par** (0 es par)",
            "readonly": true
          },
          "position": {
            "x": -312,
            "y": -544
          },
          "size": {
            "width": 648,
            "height": 136
          }
        },
        {
          "id": "385069a0-4243-4047-bbbe-ad614394e77d",
          "type": "basic.info",
          "data": {
            "info": "**Interruptores externos**",
            "readonly": true
          },
          "position": {
            "x": -288,
            "y": -160
          },
          "size": {
            "width": 208,
            "height": 40
          }
        },
        {
          "id": "a68fd599-8dcd-4e28-857e-38345a4650a7",
          "type": "basic.info",
          "data": {
            "info": "**Tabla de verdad**\n\n| Fila     | i3     | i2     | i1     | i0     | Salida |\n|----------|--------|--------|--------|--------|--------|\n|  **0**   |  **0** | **0**  |  **0** |  **0** | **1**  |\n|  1       |  0     | 0      |  0     |  1     |   0    |\n|  2       |  0     | 0      |  1     |  0     |   0    |\n|  **3**   |  **0** | **0**  |  **1** |  **1** | **1**  |\n|  4       |  0     | 1      |  0     |  0     |   0    |\n|  **5**   |  **0** | **1**  | **0**  | **1**  |  **1** |\n|  **6**   |  **0** | **1**  | **1**  | **0**  | **1**  |\n|  7       |  0     | 1      |  1     |  1     |   0    |\n|  8       |  1     | 0      |  0     |  0     |   0    |\n|  **9**   |  **1** | **0**  |  **0** |  **1** | **1**  |\n| **10**   |  **1** | **0**  | **1**  | **0**  |  **1** |\n| 11       |  1     | 0      |  1     |  1     |   0    |\n| **12**   |  **1** | **1**  |  **0** |  **0** | **1**  |\n| 13       |  1     | 1      |  0     |  1     |   0    |\n| 14       |  1     | 1      |  1     |  0     |   0    |\n| 15       |  **1** | **1**  | **1**  | **1**  |  **1** |\n",
            "readonly": true
          },
          "position": {
            "x": 376,
            "y": -536
          },
          "size": {
            "width": 448,
            "height": 328
          }
        },
        {
          "id": "19eb0525-307f-411c-ab0c-7b2f6a794e2b",
          "type": "46ebf5816f497c9fd58e437224c28b96109e1615",
          "position": {
            "x": -16,
            "y": -72
          },
          "size": {
            "width": 96,
            "height": 128
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "599d62f5-00c7-4576-b0cd-899da6a7dba1",
            "port": "memory-out"
          },
          "target": {
            "block": "19eb0525-307f-411c-ab0c-7b2f6a794e2b",
            "port": "5121a69e-9312-4485-bd1e-915ad38f5770"
          }
        },
        {
          "source": {
            "block": "4bc0f89d-c4d9-4da7-8645-059c40ee52fc",
            "port": "out"
          },
          "target": {
            "block": "19eb0525-307f-411c-ab0c-7b2f6a794e2b",
            "port": "c43387d0-9dec-490a-b872-af16f8033080"
          }
        },
        {
          "source": {
            "block": "a17ec369-095a-4d53-a4db-adc2ee010d54",
            "port": "out"
          },
          "target": {
            "block": "19eb0525-307f-411c-ab0c-7b2f6a794e2b",
            "port": "d32f2cfa-80cf-42d1-b81d-28f860b4651b"
          }
        },
        {
          "source": {
            "block": "c24d4466-0462-453e-abff-3864871065aa",
            "port": "out"
          },
          "target": {
            "block": "19eb0525-307f-411c-ab0c-7b2f6a794e2b",
            "port": "ace53645-b2e3-46be-beae-4ada8d69586e"
          },
          "vertices": [
            {
              "x": -80,
              "y": 8
            }
          ]
        },
        {
          "source": {
            "block": "f1dab0ba-018b-49e5-aeaf-f15dc7edc39a",
            "port": "out"
          },
          "target": {
            "block": "19eb0525-307f-411c-ab0c-7b2f6a794e2b",
            "port": "561eb4e1-8d5e-48ed-be5f-2e0009ca1648"
          }
        },
        {
          "source": {
            "block": "19eb0525-307f-411c-ab0c-7b2f6a794e2b",
            "port": "a27d660d-90c7-4b16-9727-ea799771b851"
          },
          "target": {
            "block": "98d45091-732a-4a3e-99ea-8df5a3834177",
            "port": "in"
          }
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