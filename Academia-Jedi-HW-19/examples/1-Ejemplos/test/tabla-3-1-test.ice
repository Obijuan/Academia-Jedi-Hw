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
          "id": "3ecf0405-c18d-4623-be36-e1d2b9919cfc",
          "type": "basic.input",
          "data": {
            "name": "i2",
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
            "x": 624,
            "y": 520
          }
        },
        {
          "id": "7f019a96-862d-476b-8de4-9deed384988f",
          "type": "basic.output",
          "data": {
            "name": "D10",
            "pins": [
              {
                "index": "0",
                "name": "D10",
                "value": "141"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1168,
            "y": 552
          }
        },
        {
          "id": "b388a29b-bcaa-4f05-bfcc-345a742f51aa",
          "type": "basic.input",
          "data": {
            "name": "i1",
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
            "x": 624,
            "y": 592
          }
        },
        {
          "id": "d5eda325-f140-4cbf-9eed-852fbaa4b150",
          "type": "basic.input",
          "data": {
            "name": "i0",
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
            "x": 624,
            "y": 664
          }
        },
        {
          "id": "3fba052e-5d27-40c2-800b-ee2815f5ddab",
          "type": "basic.memory",
          "data": {
            "name": "Table_1",
            "list": "0\n0\n1\n0\n0\n0\n1\n0",
            "local": false
          },
          "position": {
            "x": 888,
            "y": 304
          },
          "size": {
            "width": 96,
            "height": 176
          }
        },
        {
          "id": "6385fa0c-0d54-4a53-baab-f9321d19eae0",
          "type": "basic.memory",
          "data": {
            "name": "Table_2",
            "list": "0\n0\n0\n0\n1\n0\n0\n0",
            "local": false
          },
          "position": {
            "x": 1048,
            "y": 304
          },
          "size": {
            "width": 96,
            "height": 176
          }
        },
        {
          "id": "4460e758-af18-46c0-9039-8223dbf1a55a",
          "type": "d177aeeec19c70f29f8a91d80a7d3073a60d4641",
          "position": {
            "x": 936,
            "y": 536
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
            "block": "3ecf0405-c18d-4623-be36-e1d2b9919cfc",
            "port": "out"
          },
          "target": {
            "block": "4460e758-af18-46c0-9039-8223dbf1a55a",
            "port": "d32f2cfa-80cf-42d1-b81d-28f860b4651b"
          }
        },
        {
          "source": {
            "block": "b388a29b-bcaa-4f05-bfcc-345a742f51aa",
            "port": "out"
          },
          "target": {
            "block": "4460e758-af18-46c0-9039-8223dbf1a55a",
            "port": "ace53645-b2e3-46be-beae-4ada8d69586e"
          },
          "vertices": [
            {
              "x": 784,
              "y": 608
            }
          ]
        },
        {
          "source": {
            "block": "d5eda325-f140-4cbf-9eed-852fbaa4b150",
            "port": "out"
          },
          "target": {
            "block": "4460e758-af18-46c0-9039-8223dbf1a55a",
            "port": "561eb4e1-8d5e-48ed-be5f-2e0009ca1648"
          },
          "vertices": [
            {
              "x": 816,
              "y": 664
            }
          ]
        },
        {
          "source": {
            "block": "4460e758-af18-46c0-9039-8223dbf1a55a",
            "port": "a27d660d-90c7-4b16-9727-ea799771b851"
          },
          "target": {
            "block": "7f019a96-862d-476b-8de4-9deed384988f",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "6385fa0c-0d54-4a53-baab-f9321d19eae0",
            "port": "memory-out"
          },
          "target": {
            "block": "4460e758-af18-46c0-9039-8223dbf1a55a",
            "port": "c71c44ac-0500-4eb5-9c1c-4ea21cd78377"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": -485,
        "y": -252.5
      },
      "zoom": 1
    }
  },
  "dependencies": {
    "d177aeeec19c70f29f8a91d80a7d3073a60d4641": {
      "package": {
        "name": "Tabla 3x1",
        "version": "0.1",
        "description": "Circuito combinacional de 3 entradas y 1 salida",
        "author": "Juan González Gómez y Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22184.803%22%20height=%22197.944%22%20viewBox=%220%200%20173.25325%20185.57257%22%3E%3Cg%20transform=%22translate(-181.933%20-240.254)%22%20stroke=%22#000%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22%3E%3Crect%20width=%22170.253%22%20height=%22182.573%22%20x=%22183.433%22%20y=%22241.754%22%20ry=%2219.969%22%20fill=%22#3e8db8%22%20stroke-width=%223%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22274.019%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22274.413%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22274.413%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22309.826%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22310.219%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22310.219%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22346.025%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22346.419%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22346.419%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22381.832%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22382.225%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22382.225%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "d32f2cfa-80cf-42d1-b81d-28f860b4651b",
              "type": "basic.input",
              "data": {
                "name": "i2",
                "clock": false
              },
              "position": {
                "x": 8,
                "y": 264
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
                "x": 8,
                "y": 336
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
              "id": "561eb4e1-8d5e-48ed-be5f-2e0009ca1648",
              "type": "basic.input",
              "data": {
                "name": "i0",
                "clock": false
              },
              "position": {
                "x": 8,
                "y": 408
              }
            },
            {
              "id": "c71c44ac-0500-4eb5-9c1c-4ea21cd78377",
              "type": "basic.memory",
              "data": {
                "name": "",
                "list": "0\n0\n0\n0\n0\n0\n0\n0",
                "local": false
              },
              "position": {
                "x": 328,
                "y": 32
              },
              "size": {
                "width": 96,
                "height": 176
              }
            },
            {
              "id": "48c38eba-4e12-44d9-a55b-a93def6a27db",
              "type": "basic.code",
              "data": {
                "code": "wire q;\nreg [0:0] tabla[0:7];\n\nwire [2:0] i = {i2, i1, i0};\n\n//-- Read the table\nassign q = tabla[i];\n\n//-- Init table from DATA parameters\ninitial begin\n  if (DATA) $readmemh(DATA, tabla);\nend",
                "params": [
                  {
                    "name": "DATA"
                  }
                ],
                "ports": {
                  "in": [
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
                "x": 184,
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
                "block": "c71c44ac-0500-4eb5-9c1c-4ea21cd78377",
                "port": "memory-out"
              },
              "target": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "DATA"
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
              }
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
                "block": "d32f2cfa-80cf-42d1-b81d-28f860b4651b",
                "port": "out"
              },
              "target": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "i2"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 125,
            "y": 37.5
          },
          "zoom": 1
        }
      }
    }
  }
}