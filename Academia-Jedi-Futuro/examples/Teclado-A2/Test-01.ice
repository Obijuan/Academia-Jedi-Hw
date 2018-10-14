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
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "f81b2d55-2452-449d-92a6-8dfd7aed7387",
          "type": "basic.output",
          "data": {
            "name": "Fila",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "D3",
                "value": "3"
              },
              {
                "index": "2",
                "name": "D2",
                "value": "4"
              },
              {
                "index": "1",
                "name": "D1",
                "value": "1"
              },
              {
                "index": "0",
                "name": "D0",
                "value": "2"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1968,
            "y": -952
          }
        },
        {
          "id": "56422583-962c-4d1c-ac80-cb6ff237d436",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "range": "[6:0]",
            "pins": [
              {
                "index": "6",
                "name": "D13",
                "value": "64"
              },
              {
                "index": "5",
                "name": "D12",
                "value": "63"
              },
              {
                "index": "4",
                "name": "D11",
                "value": "21"
              },
              {
                "index": "3",
                "name": "D10",
                "value": "22"
              },
              {
                "index": "2",
                "name": "D9",
                "value": "19"
              },
              {
                "index": "1",
                "name": "D8",
                "value": "20"
              },
              {
                "index": "0",
                "name": "D7",
                "value": "9"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 2384,
            "y": -784
          }
        },
        {
          "id": "4c5fa26d-fcb1-479d-b084-6128f12d3613",
          "type": "basic.input",
          "data": {
            "name": "Col",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "DD3",
                "value": "117"
              },
              {
                "index": "2",
                "name": "DD2",
                "value": "116"
              },
              {
                "index": "1",
                "name": "DD1",
                "value": "115"
              },
              {
                "index": "0",
                "name": "DD0",
                "value": "114"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 1592,
            "y": -712
          }
        },
        {
          "id": "4fa553dd-70eb-4560-909e-8076b3ad48c2",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "LED7",
                "value": "37"
              },
              {
                "index": "6",
                "name": "LED6",
                "value": "38"
              },
              {
                "index": "5",
                "name": "LED5",
                "value": "39"
              },
              {
                "index": "4",
                "name": "LED4",
                "value": "41"
              },
              {
                "index": "3",
                "name": "LED3",
                "value": "42"
              },
              {
                "index": "2",
                "name": "LED2",
                "value": "43"
              },
              {
                "index": "1",
                "name": "LED1",
                "value": "44"
              },
              {
                "index": "0",
                "name": "LED0",
                "value": "45"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 2224,
            "y": -552
          }
        },
        {
          "id": "2567fa9e-d54a-491b-92b1-2b17579bec4d",
          "type": "fa0a5e4acef8e9c148dc4c7d7e8f918f565477cd",
          "position": {
            "x": 2032,
            "y": -704
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "a3a199bb-5946-431c-9397-61ed68900a2e",
          "type": "7b4337a92f7f91647ae69eb13d0d79ec07b1c53c",
          "position": {
            "x": 2224,
            "y": -688
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "0b6b82d0-afcf-43dc-9caa-30beb21ab39d",
          "type": "d014cb3dfd6b6e5082638cf2bc2db2c35c5b37a8",
          "position": {
            "x": 2032,
            "y": -496
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "bfd140fa-72d2-4dcc-bba5-99ca6a13637f",
          "type": "e9780264b1177d6d0a114ac5e5b01624eb298bc7",
          "position": {
            "x": 1784,
            "y": -704
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
            "block": "2567fa9e-d54a-491b-92b1-2b17579bec4d",
            "port": "f655c5c0-0157-4195-89ac-f92c5b3f8e0b"
          },
          "target": {
            "block": "a3a199bb-5946-431c-9397-61ed68900a2e",
            "port": "ad153a4b-fef0-423f-a84d-61a59c3283e5"
          },
          "size": 4
        },
        {
          "source": {
            "block": "a3a199bb-5946-431c-9397-61ed68900a2e",
            "port": "41c13e73-0b44-430e-94c9-a32415133ae4"
          },
          "target": {
            "block": "56422583-962c-4d1c-ac80-cb6ff237d436",
            "port": "in"
          },
          "size": 7
        },
        {
          "source": {
            "block": "4c5fa26d-fcb1-479d-b084-6128f12d3613",
            "port": "out"
          },
          "target": {
            "block": "bfd140fa-72d2-4dcc-bba5-99ca6a13637f",
            "port": "4c5fa26d-fcb1-479d-b084-6128f12d3613"
          },
          "size": 4
        },
        {
          "source": {
            "block": "bfd140fa-72d2-4dcc-bba5-99ca6a13637f",
            "port": "47523dfa-4d31-41ec-b716-b14fdeb1d22d"
          },
          "target": {
            "block": "2567fa9e-d54a-491b-92b1-2b17579bec4d",
            "port": "ee31ca02-b981-4474-a62e-85f20302435c"
          },
          "size": 4
        },
        {
          "source": {
            "block": "bfd140fa-72d2-4dcc-bba5-99ca6a13637f",
            "port": "aa141194-8252-4c93-9b51-62155ff5d18b"
          },
          "target": {
            "block": "0b6b82d0-afcf-43dc-9caa-30beb21ab39d",
            "port": "26aba23f-8567-4e9b-bd45-c26724030f33"
          },
          "vertices": [
            {
              "x": 1896,
              "y": -512
            }
          ]
        },
        {
          "source": {
            "block": "bfd140fa-72d2-4dcc-bba5-99ca6a13637f",
            "port": "b4ae4f5d-cde5-401f-a3f1-28ef8513cf57"
          },
          "target": {
            "block": "f81b2d55-2452-449d-92a6-8dfd7aed7387",
            "port": "in"
          },
          "size": 4
        },
        {
          "source": {
            "block": "0b6b82d0-afcf-43dc-9caa-30beb21ab39d",
            "port": "e2091457-8509-494f-96fc-4a2907d9575f"
          },
          "target": {
            "block": "4fa553dd-70eb-4560-909e-8076b3ad48c2",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "bfd140fa-72d2-4dcc-bba5-99ca6a13637f",
            "port": "aa141194-8252-4c93-9b51-62155ff5d18b"
          },
          "target": {
            "block": "2567fa9e-d54a-491b-92b1-2b17579bec4d",
            "port": "065ea371-8398-43b3-8341-287c234a3acb"
          }
        }
      ]
    }
  },
  "dependencies": {
    "fa0a5e4acef8e9c148dc4c7d7e8f918f565477cd": {
      "package": {
        "name": "Registro",
        "version": "0.1",
        "description": "Registro de 4 bits",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22519.236%22%20height=%22279.911%22%20viewBox=%220%200%20137.38127%2074.059853%22%3E%3Cpath%20d=%22M41.506%2040.152l13.608%2016.672-6.918-20.534%22%20fill=%22#ccc%22%20stroke=%22#000%22%20stroke-width=%221.092%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M34.122%2032.088L24.89%2012.475l-6.45%203.724-2.07-3.583L37.276.546l2.07%203.584-6.093%203.517%2012.03%2018.223s5.4-2.025%208.536.74c3.136%202.766%202.52%204.92%202.887%204.772L33.017%2045.02s-2.849-3.695-2.16-6.795c.687-3.1%203.265-6.137%203.265-6.137z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%221.092%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cg%20transform=%22translate(-93.518%20-22.665)%20scale(1.09073)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20cx=%22100.602%22%20cy=%2273.815%22%20r=%2214.559%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cg%20stroke=%22#000%22%20stroke-width=%221.442%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%3E%3Cpath%20d=%22M81.95%2040.152l13.607%2016.672L88.64%2036.29%22%20fill=%22#ccc%22%20stroke-width=%221.0924880399999999%22/%3E%3Cpath%20d=%22M74.566%2032.088l-9.232-19.613-6.451%203.724-2.069-3.583L77.719.546l2.069%203.584-6.092%203.517%2012.03%2018.223s5.399-2.025%208.535.74c3.137%202.766%202.52%204.92%202.887%204.772L73.46%2045.02s-2.848-3.695-2.16-6.795c.688-3.1%203.266-6.137%203.266-6.137z%22%20fill=%22red%22%20stroke-width=%221.0924880399999999%22/%3E%3C/g%3E%3Cg%20stroke=%22#000%22%20stroke-width=%221.442%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%3E%3Cpath%20d=%22M121.637%2040.152l13.608%2016.672-6.918-20.534%22%20fill=%22#ccc%22%20stroke-width=%221.0924880399999999%22/%3E%3Cpath%20d=%22M114.253%2032.088l-9.232-19.613-6.45%203.724-2.07-3.583L117.407.546l2.07%203.584-6.093%203.517%2012.03%2018.223s5.4-2.025%208.536.74c3.136%202.766%202.52%204.92%202.887%204.772L113.147%2045.02s-2.848-3.695-2.16-6.795c.688-3.1%203.266-6.137%203.266-6.137z%22%20fill=%22red%22%20stroke-width=%221.0924880399999999%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "096f61b6-6d5c-4907-9512-e65b25969458",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 80,
                "y": 176
              }
            },
            {
              "id": "ee31ca02-b981-4474-a62e-85f20302435c",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 80,
                "y": 248
              }
            },
            {
              "id": "f655c5c0-0157-4195-89ac-f92c5b3f8e0b",
              "type": "basic.output",
              "data": {
                "name": "q",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 632,
                "y": 248
              }
            },
            {
              "id": "065ea371-8398-43b3-8341-287c234a3acb",
              "type": "basic.input",
              "data": {
                "name": "load",
                "clock": false
              },
              "position": {
                "x": 80,
                "y": 312
              }
            },
            {
              "id": "f3b434e4-0c8f-4dd7-90c7-305189a807f1",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 376,
                "y": 56
              }
            },
            {
              "id": "32106310-bfdc-41db-9a7c-2dadd5016c3f",
              "type": "basic.code",
              "data": {
                "code": "localparam N = 4;\n\nreg [N-1:0] q = INI;\n\nalways @(posedge clk)\n  if (load)\n    q <= d;",
                "params": [
                  {
                    "name": "INI"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "d",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "load"
                    }
                  ],
                  "out": [
                    {
                      "name": "q",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 280,
                "y": 176
              },
              "size": {
                "width": 288,
                "height": 200
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "f3b434e4-0c8f-4dd7-90c7-305189a807f1",
                "port": "constant-out"
              },
              "target": {
                "block": "32106310-bfdc-41db-9a7c-2dadd5016c3f",
                "port": "INI"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "065ea371-8398-43b3-8341-287c234a3acb",
                "port": "out"
              },
              "target": {
                "block": "32106310-bfdc-41db-9a7c-2dadd5016c3f",
                "port": "load"
              }
            },
            {
              "source": {
                "block": "096f61b6-6d5c-4907-9512-e65b25969458",
                "port": "out"
              },
              "target": {
                "block": "32106310-bfdc-41db-9a7c-2dadd5016c3f",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "ee31ca02-b981-4474-a62e-85f20302435c",
                "port": "out"
              },
              "target": {
                "block": "32106310-bfdc-41db-9a7c-2dadd5016c3f",
                "port": "d"
              },
              "size": 4
            },
            {
              "source": {
                "block": "32106310-bfdc-41db-9a7c-2dadd5016c3f",
                "port": "q"
              },
              "target": {
                "block": "f655c5c0-0157-4195-89ac-f92c5b3f8e0b",
                "port": "in"
              },
              "size": 4
            }
          ]
        }
      }
    },
    "7b4337a92f7f91647ae69eb13d0d79ec07b1c53c": {
      "package": {
        "name": "DisplayHEX",
        "version": "0.1",
        "description": "DisplayHEX. Decodificador de binario a hexadecimal-7 segmentos. Cátodo común",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22165.784%22%20height=%22222.76%22%20viewBox=%220%200%2043.863567%2058.938523%22%3E%3Crect%20width=%2242.906%22%20height=%2257.981%22%20x=%226.108%22%20y=%22-145.921%22%20ry=%22.555%22%20fill=%22#8a7a7a%22%20stroke=%22#000%22%20stroke-width=%22.958%22%20stroke-linejoin=%22round%22%20transform=%22translate(-5.63%20146.4)%22/%3E%3Cg%20transform=%22translate(-5.63%20146.4)%22%3E%3Cpath%20d=%22M14.12-121.766c-.188-.61%202.966-16.632%203.196-16.837.23-.204%201.125-.742%201.355-.716.23.026%202.916%202.968%203.018%203.3.102.333-2.318%2014.76-2.557%2015.148-.18.292-1.765%201.97-2.353%201.92-.588-.052-2.471-2.204-2.66-2.815zM19.592-139.652l2.276%202.764%2016.007-.18s3.708-2.814%203.478-3.454c-.23-.64-1.177-1.1-1.177-1.1s-18.027-.128-18.999.205c-.971.332-1.687%201.049-1.687%201.28%200%20.23.102.485.102.485zM35.86-120.476c-.319-.835%202.55-15.94%202.694-16.193.145-.253%203.2-2.696%203.67-2.642.47.055%201.32.742%201.447%201.122.127.38-2.44%2016.428-2.604%2016.808-.162.38-2.404%202.57-3.001%202.624-.597.054-1.887-.884-2.206-1.719zM19.84-120.367c.718-.191%2014.133-.158%2014.818-.008.684.15%202.143%201.512%202.169%202.344.025.832-1.509%201.868-2.123%202.252-.613.384-14.626.333-15.086.102-.46-.23-2.302-1.919-2.302-2.482%200-.563%201.806-2.018%202.524-2.209zM12.893-114.857c.344-.682%202.684-2.508%203.4-2.534.716-.025%201.586%201.1%201.688%201.69.102.588-2.685%2016.682-3.068%2017.296-.384.614-2.813%202.815-3.427%202.84-.614.026-1.687-1.228-1.764-1.842-.077-.614%202.826-16.769%203.17-17.45zM15.756-98.2c.939-.44%2016.037-.55%2016.596-.307.558.243%202.608%202.2%202.66%202.994.05.793-1.382%201.867-1.97%201.97-.588.102-19.51.716-20.047.384-.537-.333-1.074-.998-1.125-1.459-.051-.46%202.948-3.142%203.886-3.582zM32.53-99.966c-.35-1.035%202.336-14.684%202.553-15.118.217-.435%201.49-2.029%202.314-1.954.824.074%202.17%201.592%202.423%202.28.253.687-1.829%2018.785-3.313%2018.83-1.484.043-3.625-3.002-3.976-4.038z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%22.958%22/%3E%3Cellipse%20cx=%2243.78%22%20cy=%22-97.407%22%20rx=%222.875%22%20ry=%222.877%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%22.958%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:1.25%22%20x=%22100.815%22%20y=%22242.206%22%20font-weight=%22400%22%20font-size=%2210.583%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22/%3E%3Ctext%20style=%22line-height:1.25%22%20x=%226.245%22%20y=%22-88.731%22%20font-weight=%22400%22%20font-size=%2213.108%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.328%22%3E%3Ctspan%20x=%226.245%22%20y=%22-88.731%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22#ff0%22%3EHEX%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "41c13e73-0b44-430e-94c9-a32415133ae4",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[6:0]",
                "size": 7
              },
              "position": {
                "x": 704,
                "y": 360
              }
            },
            {
              "id": "ad153a4b-fef0-423f-a84d-61a59c3283e5",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 104,
                "y": 360
              }
            },
            {
              "id": "cdd743bb-3b27-43ef-88a6-f33405eb3e8d",
              "type": "basic.code",
              "data": {
                "code": "reg o;\n\nalways @(*) \nbegin\n\tcase(i)\n      4'h0: o = 7'b111_1110;\n      4'h1: o = 7'b011_0000;\n      4'h2: o = 7'b110_1101;\n      4'h3: o = 7'b111_1001;\n      4'h4: o = 7'b011_0011;\n      4'h5: o = 7'b101_1011;\n      4'h6: o = 7'b101_1111;\n      4'h7: o = 7'b111_0000;\n      4'h8: o = 7'b111_1111;\n      4'h9: o = 7'b111_1011;\n      4'hA: o = 7'b111_0111;\n      4'hB: o = 7'b001_1111;\n      4'hC: o = 7'b100_1110;\n      4'hD: o = 7'b011_1101;\n      4'HE: o = 7'b100_1111;\n      4'hF: o = 7'b100_0111;\n      default: o = 7'b0000000;\n\tendcase\nend\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ],
                  "out": [
                    {
                      "name": "o",
                      "range": "[6:0]",
                      "size": 7
                    }
                  ]
                }
              },
              "position": {
                "x": 304,
                "y": 200
              },
              "size": {
                "width": 320,
                "height": 376
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "cdd743bb-3b27-43ef-88a6-f33405eb3e8d",
                "port": "o"
              },
              "target": {
                "block": "41c13e73-0b44-430e-94c9-a32415133ae4",
                "port": "in"
              },
              "size": 7
            },
            {
              "source": {
                "block": "ad153a4b-fef0-423f-a84d-61a59c3283e5",
                "port": "out"
              },
              "target": {
                "block": "cdd743bb-3b27-43ef-88a6-f33405eb3e8d",
                "port": "i"
              },
              "size": 4
            }
          ]
        }
      }
    },
    "d014cb3dfd6b6e5082638cf2bc2db2c35c5b37a8": {
      "package": {
        "name": "Contador-8bits-up-rst",
        "version": "0.1",
        "description": "Contador módulo M, ascendente, de 8 bits, con reset ",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22327.118%22%20height=%22304.435%22%20viewBox=%220%200%2086.549973%2080.548402%22%3E%3Cdefs%3E%3Cmarker%20id=%22a%22%20orient=%22auto%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M2.308%200l-3.46%202v-4z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22%20stroke=%22#00f%22%20stroke-width=%22.5332%22/%3E%3C/marker%3E%3C/defs%3E%3Cg%20transform=%22translate(-59.162%20-4.54)%22%3E%3Cpath%20d=%22M138.803%2048.49V16.91%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%222.806%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20marker-end=%22url(#a)%22/%3E%3Crect%20rx=%222.807%22%20ry=%222.807%22%20y=%225.289%22%20x=%2299.747%22%20height=%2247.849%22%20width=%2229.538%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%221.497%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20transform=%22scale(.94516%201.05802)%22%20y=%2240.921%22%20x=%22108.575%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%228.982%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%221.497%22%3E%3Ctspan%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2240.921%22%20x=%22108.575%22%20font-weight=%22700%22%20font-size=%2235.656%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M100.868%2030.283h27.764%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222.245%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20rx=%222.807%22%20ry=%222.807%22%20y=%225.289%22%20x=%2266.333%22%20height=%2247.849%22%20width=%2229.538%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%221.497%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20transform=%22scale(.94516%201.05802)%22%20y=%2240.921%22%20x=%2273.223%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%228.982%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%221.497%22%3E%3Ctspan%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2240.921%22%20x=%2273.223%22%20font-weight=%22700%22%20font-size=%2235.656%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M67.454%2030.283h27.764%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222.245%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Cg%20transform=%22matrix(1.00937%200%200%201.00937%20-27.38%20-4.42)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(1.00937%200%200%201.00937%2028.939%20-4.42)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c90da543-4b9c-4f4c-a5fa-7e1166ee1dd3",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 264,
                "y": 176
              }
            },
            {
              "id": "e2091457-8509-494f-96fc-4a2907d9575f",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 800,
                "y": 200
              }
            },
            {
              "id": "743b5299-2d89-4783-b7c9-12a5b36df406",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 264,
                "y": 280
              }
            },
            {
              "id": "cc17ff4d-1c27-4dc3-a14c-da730d54750e",
              "type": "basic.output",
              "data": {
                "name": "ov"
              },
              "position": {
                "x": 800,
                "y": 352
              }
            },
            {
              "id": "26aba23f-8567-4e9b-bd45-c26724030f33",
              "type": "basic.input",
              "data": {
                "name": "cnt",
                "clock": false
              },
              "position": {
                "x": 264,
                "y": 376
              }
            },
            {
              "id": "eb9f9c33-e717-43f0-98eb-dbd9c278fa8c",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "256",
                "local": false
              },
              "position": {
                "x": 528,
                "y": 48
              }
            },
            {
              "id": "b35ae5de-a490-4f7b-9200-ac52cd3f333e",
              "type": "basic.info",
              "data": {
                "info": "**Parámetro**: Módulo del contador",
                "readonly": true
              },
              "position": {
                "x": 472,
                "y": 32
              },
              "size": {
                "width": 280,
                "height": 56
              }
            },
            {
              "id": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
              "type": "basic.code",
              "data": {
                "code": "//-- Numero de bits del contador\nlocalparam N = 8; \n\n//-- En contadores de N bits:\n//-- M = 2 ** N\n\n//-- Internamente usamos un bit mas\n//-- (N+1) bits\nreg [N:0] qi = 0;\n\nalways @(posedge clk)\n  if (rst | ov)\n    qi <= 0;\n  else\n    if (cnt)\n      qi <= qi + 1;\n      \nassign q = qi;\n\n//-- Comprobar overflow\nassign ov = (qi == M);\n    ",
                "params": [
                  {
                    "name": "M"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "rst"
                    },
                    {
                      "name": "cnt"
                    }
                  ],
                  "out": [
                    {
                      "name": "q",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "ov"
                    }
                  ]
                }
              },
              "position": {
                "x": 408,
                "y": 160
              },
              "size": {
                "width": 336,
                "height": 296
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "743b5299-2d89-4783-b7c9-12a5b36df406",
                "port": "out"
              },
              "target": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "rst"
              }
            },
            {
              "source": {
                "block": "eb9f9c33-e717-43f0-98eb-dbd9c278fa8c",
                "port": "constant-out"
              },
              "target": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "M"
              }
            },
            {
              "source": {
                "block": "26aba23f-8567-4e9b-bd45-c26724030f33",
                "port": "out"
              },
              "target": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "cnt"
              }
            },
            {
              "source": {
                "block": "c90da543-4b9c-4f4c-a5fa-7e1166ee1dd3",
                "port": "out"
              },
              "target": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "ov"
              },
              "target": {
                "block": "cc17ff4d-1c27-4dc3-a14c-da730d54750e",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "q"
              },
              "target": {
                "block": "e2091457-8509-494f-96fc-4a2907d9575f",
                "port": "in"
              },
              "size": 8
            }
          ]
        }
      }
    },
    "e9780264b1177d6d0a114ac5e5b01624eb298bc7": {
      "package": {
        "name": "Teclado-4x4-A2",
        "version": "0.1",
        "description": "Controlador de teclado de 4x4 teclas (para A2)",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22241.38%22%20height=%22250.269%22%20viewBox=%220%200%2063.865258%2066.216949%22%3E%3Crect%20width=%2260.316%22%20height=%2266.217%22%20x=%2280.214%22%20y=%2294.204%22%20ry=%224.501%22%20fill=%22#213047%22%20transform=%22translate(-80.214%20-94.204)%22/%3E%3Cg%20transform=%22translate(-80.214%20-94.204)%22%3E%3Crect%20width=%2256.003%22%20height=%2260.5%22%20x=%2282.544%22%20y=%2297.003%22%20ry=%223.731%22%20fill=%22#fff%22/%3E%3Crect%20width=%2254.024%22%20height=%2258.608%22%20x=%2283.506%22%20y=%2297.863%22%20ry=%223.019%22%20fill=%22#213047%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%208.963%2010.828)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22-24.039%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22-14.967%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#369de0%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%2021.483%2010.828)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22-24.039%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22-14.967%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#369de0%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%2033.629%2010.828)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22-24.039%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22-14.967%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#369de0%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%208.963%2010.828)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22357.808%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22366.879%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#b44c65%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%208.963%2023.038)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22-24.039%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22-14.967%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#369de0%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%2021.483%2023.038)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22-24.039%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22-14.967%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#369de0%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%2033.629%2023.038)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22-24.039%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22-14.967%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#369de0%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%208.963%2023.038)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22357.808%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22366.879%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#b44c65%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%208.963%2035.144)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22-24.039%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22-14.967%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#369de0%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%2021.483%2035.144)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22-24.039%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22-14.967%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#369de0%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%2033.629%2035.144)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22-24.039%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22-14.967%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#369de0%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%208.963%2035.144)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22357.808%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22366.879%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#b44c65%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%2021.483%2047.457)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22-24.039%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22-14.967%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#369de0%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%20-28.495%2047.56)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22357.808%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22366.879%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#b44c65%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%20-3.04%2047.56)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22357.808%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22366.879%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#b44c65%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%209.377%2047.56)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22357.808%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22366.879%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#b44c65%22/%3E%3C/g%3E%3Cg%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%2292.254%22%20y=%22110.986%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%2292.254%22%20y=%22110.986%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E1%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22104.878%22%20y=%22111.193%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22104.878%22%20y=%22111.193%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E2%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22117.295%22%20y=%22111.193%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22117.295%22%20y=%22111.193%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E3%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22129.35%22%20y=%22111.297%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22129.35%22%20y=%22111.297%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3EA%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%2292.254%22%20y=%22122.886%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%2292.254%22%20y=%22122.886%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E4%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22104.878%22%20y=%22123.093%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22104.878%22%20y=%22123.093%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E5%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22117.295%22%20y=%22123.093%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22117.295%22%20y=%22123.093%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E6%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22129.35%22%20y=%22123.196%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22129.35%22%20y=%22123.196%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3EB%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%2292.254%22%20y=%22135.178%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%2292.254%22%20y=%22135.178%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E7%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22104.878%22%20y=%22135.385%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22104.878%22%20y=%22135.385%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E8%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22117.295%22%20y=%22135.385%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22117.295%22%20y=%22135.385%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E9%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22129.35%22%20y=%22135.488%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22129.35%22%20y=%22135.488%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3EC%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%2236.52%22%20y=%22172.679%22%20transform=%22rotate(-19.926%20-308.246%20181.215)%22%20font-weight=%22400%22%20font-size=%229.435%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.59%22%3E%3Ctspan%20x=%2236.52%22%20y=%22172.679%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E*%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22104.732%22%20y=%22147.896%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22104.732%22%20y=%22147.896%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E0%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22117.295%22%20y=%22147.896%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22117.295%22%20y=%22147.896%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E#%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22129.569%22%20y=%22147.78%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22129.569%22%20y=%22147.78%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3ED%3C/tspan%3E%3C/text%3E%3Cg%20transform=%22matrix(.46866%200%200%20.46866%209.752%2023.088)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20cx=%22100.602%22%20cy=%2273.815%22%20r=%2214.559%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "b4ae4f5d-cde5-401f-a3f1-28ef8513cf57",
              "type": "basic.output",
              "data": {
                "name": "Fila",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 2464,
                "y": -800
              }
            },
            {
              "id": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -152,
                "y": -744
              }
            },
            {
              "id": "47523dfa-4d31-41ec-b716-b14fdeb1d22d",
              "type": "basic.output",
              "data": {
                "name": "cod",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 2280,
                "y": -552
              }
            },
            {
              "id": "4c5fa26d-fcb1-479d-b084-6128f12d3613",
              "type": "basic.input",
              "data": {
                "name": "Col",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -328,
                "y": -80
              }
            },
            {
              "id": "aa141194-8252-4c93-9b51-62155ff5d18b",
              "type": "basic.output",
              "data": {
                "name": "clicked"
              },
              "position": {
                "x": 2136,
                "y": 368
              }
            },
            {
              "id": "550449eb-0171-42a0-bbb5-2cfcf9301594",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "10",
                "local": true
              },
              "position": {
                "x": 1200,
                "y": -128
              }
            },
            {
              "id": "57abbd52-12f6-44fe-8076-4c1592b9328b",
              "type": "basic.memory",
              "data": {
                "name": "Codigo-teclas",
                "list": "1\n2\n3\nA\n4\n5\n6\nB\n7\n8\n9\nC\nF\n0\nE\nD",
                "local": true,
                "format": 16
              },
              "position": {
                "x": 1720,
                "y": -840
              },
              "size": {
                "width": 120,
                "height": 248
              }
            },
            {
              "id": "bc1bb099-0931-40fa-8ecc-df8eed967e0a",
              "type": "3bfe20ce12a1017a3d0c324d97fac7a471e413ad",
              "position": {
                "x": 208,
                "y": 456
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "68a5432b-dc3c-440c-ad54-a08147de0794",
              "type": "ec2da447d7f051eef8a0640ae0eaf0776c0f51e8",
              "position": {
                "x": 1200,
                "y": -24
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "e2af24df-b6ba-466a-b173-16cc75669d5b",
              "type": "8e2728307baccbf26c01cdb87bcfba8ca64a435c",
              "position": {
                "x": 560,
                "y": 504
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "95e1e145-efea-46ac-aa22-0013bc2292bf",
              "type": "cfd9babc26edba88e2152493023c4bef7c47f247",
              "position": {
                "x": 376,
                "y": 440
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "85ffb99d-f73a-4c38-b287-0f3bdc2b43d0",
              "type": "b959c256104d1064a5ef7b38632ffb6eed3b396f",
              "position": {
                "x": 704,
                "y": 336
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "2e487e1c-f29d-4957-bde5-29684afc9be8",
              "type": "7eacdff4ce248b009935725889c8ae3339817d76",
              "position": {
                "x": 560,
                "y": 424
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "fa4407a8-ad56-4a19-a9ac-39a10af28bb9",
              "type": "e79148d23652be6d5149f8f6881f7f47bd958497",
              "position": {
                "x": 1352,
                "y": -72
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "ff99fb68-939f-4c12-b64c-a8a2c51810ad",
              "type": "1c4cc4f0b58ac69714b52d59d7925dc7e1cba2c5",
              "position": {
                "x": 1552,
                "y": -80
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "7b87bd96-ad57-4740-bdde-cdf0027e47db",
              "type": "3bfe20ce12a1017a3d0c324d97fac7a471e413ad",
              "position": {
                "x": 200,
                "y": 112
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "e7e64f47-70cd-4654-9bf8-a0a575173248",
              "type": "8e2728307baccbf26c01cdb87bcfba8ca64a435c",
              "position": {
                "x": 552,
                "y": 160
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "ce44171e-f970-4f9f-9b6c-1e1623589d1a",
              "type": "cfd9babc26edba88e2152493023c4bef7c47f247",
              "position": {
                "x": 368,
                "y": 96
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "7852173c-bb0d-4e80-a9f2-08ec291fcad3",
              "type": "b959c256104d1064a5ef7b38632ffb6eed3b396f",
              "position": {
                "x": 696,
                "y": -8
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "6f94cf56-9c69-4aad-a2ec-a570ee9ddb6b",
              "type": "7eacdff4ce248b009935725889c8ae3339817d76",
              "position": {
                "x": 552,
                "y": 80
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "938fbae3-3a59-4d9c-a1f3-612e6979f1dd",
              "type": "35f267d0df6ffcb7fc33753bc9df9cf083642cca",
              "position": {
                "x": 1056,
                "y": -8
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "1b4b0e4d-9bfc-4593-b754-1d5d538dcc97",
              "type": "87abc950ab83340895d1780090127b1528046813",
              "position": {
                "x": 928,
                "y": 424
              },
              "size": {
                "width": 96,
                "height": 128
              }
            },
            {
              "id": "47e6c3e6-36ce-4787-880c-e08a21f2de8d",
              "type": "87abc950ab83340895d1780090127b1528046813",
              "position": {
                "x": 920,
                "y": -40
              },
              "size": {
                "width": 96,
                "height": 128
              }
            },
            {
              "id": "26ae0037-5dd8-43f8-ae42-3e7cae60bee5",
              "type": "3bfe20ce12a1017a3d0c324d97fac7a471e413ad",
              "position": {
                "x": 208,
                "y": -232
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "28c8e84b-83a7-41aa-8113-490a9ea62635",
              "type": "8e2728307baccbf26c01cdb87bcfba8ca64a435c",
              "position": {
                "x": 560,
                "y": -184
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "933f76ac-0948-4672-acdc-3e1cf80a0121",
              "type": "cfd9babc26edba88e2152493023c4bef7c47f247",
              "position": {
                "x": 376,
                "y": -248
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "1be8aed5-419b-4ba5-ab17-530f65a5a825",
              "type": "b959c256104d1064a5ef7b38632ffb6eed3b396f",
              "position": {
                "x": 704,
                "y": -352
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "816e52f6-7a0e-48e9-b9c3-0eb5c2d56e2e",
              "type": "7eacdff4ce248b009935725889c8ae3339817d76",
              "position": {
                "x": 560,
                "y": -264
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "ac21c659-53a7-4547-8f64-9e7841127adb",
              "type": "3bfe20ce12a1017a3d0c324d97fac7a471e413ad",
              "position": {
                "x": 216,
                "y": -552
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "2f832030-7ea0-4a3b-8bd8-f39b7d04bcc7",
              "type": "8e2728307baccbf26c01cdb87bcfba8ca64a435c",
              "position": {
                "x": 568,
                "y": -504
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "4626281e-9c79-4551-acf8-f98deef6b71d",
              "type": "cfd9babc26edba88e2152493023c4bef7c47f247",
              "position": {
                "x": 384,
                "y": -568
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "3450e86c-86b3-4bb3-9636-967a39e8c7c6",
              "type": "b959c256104d1064a5ef7b38632ffb6eed3b396f",
              "position": {
                "x": 712,
                "y": -672
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "6f36d2d2-0c23-4238-8659-9f8e1fbabd73",
              "type": "7eacdff4ce248b009935725889c8ae3339817d76",
              "position": {
                "x": 568,
                "y": -584
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "9c28e3f1-15e0-4f46-8531-4ea52f90dc2b",
              "type": "710cd3b0fcb6a599515548c36fc243644f707046",
              "position": {
                "x": 1232,
                "y": -608
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "00a67ab3-e95e-4cb0-816c-da6871af1054",
              "type": "d8f675ff9a2f29c09950daa1defc47d859fffaa5",
              "position": {
                "x": 1056,
                "y": -640
              },
              "size": {
                "width": 96,
                "height": 128
              }
            },
            {
              "id": "e5b28c4d-3275-41ca-8c7d-78d1456ccddc",
              "type": "91b7acd84ad2664da4f1a90fec4e8967c2413410",
              "position": {
                "x": 1552,
                "y": -552
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "2567fa9e-d54a-491b-92b1-2b17579bec4d",
              "type": "fa0a5e4acef8e9c148dc4c7d7e8f918f565477cd",
              "position": {
                "x": 2048,
                "y": -568
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "3e13261b-bfb5-4085-b2b2-e9174acad839",
              "type": "fb5b4e8223863dab93c048e28602f045538c0cea",
              "position": {
                "x": 1736,
                "y": -552
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "6b65980f-b738-4468-975a-07dd8e4a0005",
              "type": "45c913b200b953494d0a42f6a186ea527ac11d5b",
              "position": {
                "x": -152,
                "y": -112
              },
              "size": {
                "width": 96,
                "height": 128
              }
            },
            {
              "id": "351dc9af-2a33-4057-a5b9-07e0fc822aa1",
              "type": "1c7dae7144d376f2ee4896fcc502a29110e2db37",
              "position": {
                "x": 1904,
                "y": 368
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
                "block": "550449eb-0171-42a0-bbb5-2cfcf9301594",
                "port": "constant-out"
              },
              "target": {
                "block": "68a5432b-dc3c-440c-ad54-a08147de0794",
                "port": "136e8d6d-892a-4f14-8d6d-0c5bc6c3e844"
              }
            },
            {
              "source": {
                "block": "95e1e145-efea-46ac-aa22-0013bc2292bf",
                "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
              },
              "target": {
                "block": "e2af24df-b6ba-466a-b173-16cc75669d5b",
                "port": "b6426b43-dcda-418d-b6d3-4764b5bc0b25"
              },
              "vertices": [
                {
                  "x": 512,
                  "y": 528
                }
              ]
            },
            {
              "source": {
                "block": "bc1bb099-0931-40fa-8ecc-df8eed967e0a",
                "port": "7bfc506f-7a54-40a1-8d33-e78a5409b972"
              },
              "target": {
                "block": "95e1e145-efea-46ac-aa22-0013bc2292bf",
                "port": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530"
              }
            },
            {
              "source": {
                "block": "68a5432b-dc3c-440c-ad54-a08147de0794",
                "port": "c138a610-b61f-4e7c-bb8a-c4f3b0b9f95c"
              },
              "target": {
                "block": "fa4407a8-ad56-4a19-a9ac-39a10af28bb9",
                "port": "26aba23f-8567-4e9b-bd45-c26724030f33"
              }
            },
            {
              "source": {
                "block": "fa4407a8-ad56-4a19-a9ac-39a10af28bb9",
                "port": "7a982450-c842-4aa2-8e77-43cc628266e0"
              },
              "target": {
                "block": "ff99fb68-939f-4c12-b64c-a8a2c51810ad",
                "port": "10cc3244-31d5-4542-9808-a54f6480183e"
              },
              "size": 2
            },
            {
              "source": {
                "block": "ff99fb68-939f-4c12-b64c-a8a2c51810ad",
                "port": "3e2dd1bd-94fd-4ea8-a428-e24e30959c4f"
              },
              "target": {
                "block": "b4ae4f5d-cde5-401f-a3f1-28ef8513cf57",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "95e1e145-efea-46ac-aa22-0013bc2292bf",
                "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
              },
              "target": {
                "block": "2e487e1c-f29d-4957-bde5-29684afc9be8",
                "port": "b6426b43-dcda-418d-b6d3-4764b5bc0b25"
              }
            },
            {
              "source": {
                "block": "2e487e1c-f29d-4957-bde5-29684afc9be8",
                "port": "1d2e403f-0fa6-41fd-83a9-4f309eadd855"
              },
              "target": {
                "block": "85ffb99d-f73a-4c38-b287-0f3bdc2b43d0",
                "port": "86eb8c81-17fc-4371-bd21-51f429191f3c"
              }
            },
            {
              "source": {
                "block": "bc1bb099-0931-40fa-8ecc-df8eed967e0a",
                "port": "7bfc506f-7a54-40a1-8d33-e78a5409b972"
              },
              "target": {
                "block": "85ffb99d-f73a-4c38-b287-0f3bdc2b43d0",
                "port": "3ae2d46d-7981-497a-899f-b60bfae0f43e"
              },
              "vertices": [
                {
                  "x": 320,
                  "y": 408
                }
              ]
            },
            {
              "source": {
                "block": "ce44171e-f970-4f9f-9b6c-1e1623589d1a",
                "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
              },
              "target": {
                "block": "e7e64f47-70cd-4654-9bf8-a0a575173248",
                "port": "b6426b43-dcda-418d-b6d3-4764b5bc0b25"
              },
              "vertices": [
                {
                  "x": 504,
                  "y": 184
                }
              ]
            },
            {
              "source": {
                "block": "7b87bd96-ad57-4740-bdde-cdf0027e47db",
                "port": "7bfc506f-7a54-40a1-8d33-e78a5409b972"
              },
              "target": {
                "block": "ce44171e-f970-4f9f-9b6c-1e1623589d1a",
                "port": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "7b87bd96-ad57-4740-bdde-cdf0027e47db",
                "port": "7bfc506f-7a54-40a1-8d33-e78a5409b972"
              },
              "target": {
                "block": "7852173c-bb0d-4e80-a9f2-08ec291fcad3",
                "port": "3ae2d46d-7981-497a-899f-b60bfae0f43e"
              },
              "vertices": [
                {
                  "x": 312,
                  "y": 64
                }
              ]
            },
            {
              "source": {
                "block": "6f94cf56-9c69-4aad-a2ec-a570ee9ddb6b",
                "port": "1d2e403f-0fa6-41fd-83a9-4f309eadd855"
              },
              "target": {
                "block": "7852173c-bb0d-4e80-a9f2-08ec291fcad3",
                "port": "86eb8c81-17fc-4371-bd21-51f429191f3c"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "ce44171e-f970-4f9f-9b6c-1e1623589d1a",
                "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
              },
              "target": {
                "block": "6f94cf56-9c69-4aad-a2ec-a570ee9ddb6b",
                "port": "b6426b43-dcda-418d-b6d3-4764b5bc0b25"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "938fbae3-3a59-4d9c-a1f3-612e6979f1dd",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "68a5432b-dc3c-440c-ad54-a08147de0794",
                "port": "3ac5ff24-ed0a-4d08-bdaa-adbb8ce688ab"
              }
            },
            {
              "source": {
                "block": "1b4b0e4d-9bfc-4593-b754-1d5d538dcc97",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "2567fa9e-d54a-491b-92b1-2b17579bec4d",
                "port": "065ea371-8398-43b3-8341-287c234a3acb"
              }
            },
            {
              "source": {
                "block": "e2af24df-b6ba-466a-b173-16cc75669d5b",
                "port": "1d2e403f-0fa6-41fd-83a9-4f309eadd855"
              },
              "target": {
                "block": "1b4b0e4d-9bfc-4593-b754-1d5d538dcc97",
                "port": "e3048d1d-5eca-42de-9b82-e4da2969a091"
              }
            },
            {
              "source": {
                "block": "85ffb99d-f73a-4c38-b287-0f3bdc2b43d0",
                "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
              },
              "target": {
                "block": "47e6c3e6-36ce-4787-880c-e08a21f2de8d",
                "port": "e3048d1d-5eca-42de-9b82-e4da2969a091"
              }
            },
            {
              "source": {
                "block": "7852173c-bb0d-4e80-a9f2-08ec291fcad3",
                "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
              },
              "target": {
                "block": "47e6c3e6-36ce-4787-880c-e08a21f2de8d",
                "port": "8c46de6c-8895-446f-bcbd-850a4a72c42d"
              }
            },
            {
              "source": {
                "block": "47e6c3e6-36ce-4787-880c-e08a21f2de8d",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "938fbae3-3a59-4d9c-a1f3-612e6979f1dd",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "e7e64f47-70cd-4654-9bf8-a0a575173248",
                "port": "1d2e403f-0fa6-41fd-83a9-4f309eadd855"
              },
              "target": {
                "block": "1b4b0e4d-9bfc-4593-b754-1d5d538dcc97",
                "port": "8c46de6c-8895-446f-bcbd-850a4a72c42d"
              },
              "vertices": [
                {
                  "x": 816,
                  "y": 328
                }
              ]
            },
            {
              "source": {
                "block": "933f76ac-0948-4672-acdc-3e1cf80a0121",
                "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
              },
              "target": {
                "block": "28c8e84b-83a7-41aa-8113-490a9ea62635",
                "port": "b6426b43-dcda-418d-b6d3-4764b5bc0b25"
              },
              "vertices": [
                {
                  "x": 512,
                  "y": -160
                }
              ]
            },
            {
              "source": {
                "block": "26ae0037-5dd8-43f8-ae42-3e7cae60bee5",
                "port": "7bfc506f-7a54-40a1-8d33-e78a5409b972"
              },
              "target": {
                "block": "933f76ac-0948-4672-acdc-3e1cf80a0121",
                "port": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "26ae0037-5dd8-43f8-ae42-3e7cae60bee5",
                "port": "7bfc506f-7a54-40a1-8d33-e78a5409b972"
              },
              "target": {
                "block": "1be8aed5-419b-4ba5-ab17-530f65a5a825",
                "port": "3ae2d46d-7981-497a-899f-b60bfae0f43e"
              },
              "vertices": [
                {
                  "x": 320,
                  "y": -280
                }
              ]
            },
            {
              "source": {
                "block": "816e52f6-7a0e-48e9-b9c3-0eb5c2d56e2e",
                "port": "1d2e403f-0fa6-41fd-83a9-4f309eadd855"
              },
              "target": {
                "block": "1be8aed5-419b-4ba5-ab17-530f65a5a825",
                "port": "86eb8c81-17fc-4371-bd21-51f429191f3c"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "933f76ac-0948-4672-acdc-3e1cf80a0121",
                "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
              },
              "target": {
                "block": "816e52f6-7a0e-48e9-b9c3-0eb5c2d56e2e",
                "port": "b6426b43-dcda-418d-b6d3-4764b5bc0b25"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "1be8aed5-419b-4ba5-ab17-530f65a5a825",
                "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
              },
              "target": {
                "block": "47e6c3e6-36ce-4787-880c-e08a21f2de8d",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              },
              "vertices": [
                {
                  "x": 880,
                  "y": -88
                }
              ]
            },
            {
              "source": {
                "block": "28c8e84b-83a7-41aa-8113-490a9ea62635",
                "port": "1d2e403f-0fa6-41fd-83a9-4f309eadd855"
              },
              "target": {
                "block": "1b4b0e4d-9bfc-4593-b754-1d5d538dcc97",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              },
              "vertices": [
                {
                  "x": 832,
                  "y": 376
                }
              ]
            },
            {
              "source": {
                "block": "4626281e-9c79-4551-acf8-f98deef6b71d",
                "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
              },
              "target": {
                "block": "2f832030-7ea0-4a3b-8bd8-f39b7d04bcc7",
                "port": "b6426b43-dcda-418d-b6d3-4764b5bc0b25"
              },
              "vertices": [
                {
                  "x": 520,
                  "y": -480
                }
              ]
            },
            {
              "source": {
                "block": "ac21c659-53a7-4547-8f64-9e7841127adb",
                "port": "7bfc506f-7a54-40a1-8d33-e78a5409b972"
              },
              "target": {
                "block": "4626281e-9c79-4551-acf8-f98deef6b71d",
                "port": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "ac21c659-53a7-4547-8f64-9e7841127adb",
                "port": "7bfc506f-7a54-40a1-8d33-e78a5409b972"
              },
              "target": {
                "block": "3450e86c-86b3-4bb3-9636-967a39e8c7c6",
                "port": "3ae2d46d-7981-497a-899f-b60bfae0f43e"
              },
              "vertices": [
                {
                  "x": 328,
                  "y": -600
                }
              ]
            },
            {
              "source": {
                "block": "6f36d2d2-0c23-4238-8659-9f8e1fbabd73",
                "port": "1d2e403f-0fa6-41fd-83a9-4f309eadd855"
              },
              "target": {
                "block": "3450e86c-86b3-4bb3-9636-967a39e8c7c6",
                "port": "86eb8c81-17fc-4371-bd21-51f429191f3c"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "4626281e-9c79-4551-acf8-f98deef6b71d",
                "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
              },
              "target": {
                "block": "6f36d2d2-0c23-4238-8659-9f8e1fbabd73",
                "port": "b6426b43-dcda-418d-b6d3-4764b5bc0b25"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "2f832030-7ea0-4a3b-8bd8-f39b7d04bcc7",
                "port": "1d2e403f-0fa6-41fd-83a9-4f309eadd855"
              },
              "target": {
                "block": "1b4b0e4d-9bfc-4593-b754-1d5d538dcc97",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              },
              "vertices": [
                {
                  "x": 856,
                  "y": 344
                }
              ]
            },
            {
              "source": {
                "block": "3450e86c-86b3-4bb3-9636-967a39e8c7c6",
                "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
              },
              "target": {
                "block": "47e6c3e6-36ce-4787-880c-e08a21f2de8d",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "3450e86c-86b3-4bb3-9636-967a39e8c7c6",
                "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
              },
              "target": {
                "block": "00a67ab3-e95e-4cb0-816c-da6871af1054",
                "port": "9db42483-957c-4490-84d2-5df273d2abd2"
              }
            },
            {
              "source": {
                "block": "1be8aed5-419b-4ba5-ab17-530f65a5a825",
                "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
              },
              "target": {
                "block": "00a67ab3-e95e-4cb0-816c-da6871af1054",
                "port": "712988b7-bdf4-41dc-81a7-cba4a43706be"
              },
              "vertices": [
                {
                  "x": 928,
                  "y": -480
                }
              ]
            },
            {
              "source": {
                "block": "85ffb99d-f73a-4c38-b287-0f3bdc2b43d0",
                "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
              },
              "target": {
                "block": "00a67ab3-e95e-4cb0-816c-da6871af1054",
                "port": "e4111201-8441-4e7d-bcd2-bcf9d265d043"
              }
            },
            {
              "source": {
                "block": "7852173c-bb0d-4e80-a9f2-08ec291fcad3",
                "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
              },
              "target": {
                "block": "00a67ab3-e95e-4cb0-816c-da6871af1054",
                "port": "969e11ca-69e8-403b-a566-7bf2fbe3a5a8"
              },
              "vertices": [
                {
                  "x": 848,
                  "y": -504
                }
              ]
            },
            {
              "source": {
                "block": "00a67ab3-e95e-4cb0-816c-da6871af1054",
                "port": "ae49c383-3bcd-4606-a0d5-8601bf128f9e"
              },
              "target": {
                "block": "9c28e3f1-15e0-4f46-8531-4ea52f90dc2b",
                "port": "cde06839-6989-4ec8-952e-1ed376589a56"
              },
              "size": 4
            },
            {
              "source": {
                "block": "2567fa9e-d54a-491b-92b1-2b17579bec4d",
                "port": "f655c5c0-0157-4195-89ac-f92c5b3f8e0b"
              },
              "target": {
                "block": "47523dfa-4d31-41ec-b716-b14fdeb1d22d",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "fa4407a8-ad56-4a19-a9ac-39a10af28bb9",
                "port": "7a982450-c842-4aa2-8e77-43cc628266e0"
              },
              "target": {
                "block": "e5b28c4d-3275-41ca-8c7d-78d1456ccddc",
                "port": "bd55ef58-9102-48a0-b3ae-c88a07b1b47f"
              },
              "vertices": [
                {
                  "x": 1488,
                  "y": -440
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "9c28e3f1-15e0-4f46-8531-4ea52f90dc2b",
                "port": "e903ef36-4c4c-454c-96a8-1ec29f586779"
              },
              "target": {
                "block": "e5b28c4d-3275-41ca-8c7d-78d1456ccddc",
                "port": "4aec3583-772e-4dca-ab2f-32e12598ab9f"
              },
              "vertices": [
                {
                  "x": 1392,
                  "y": -552
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "e5b28c4d-3275-41ca-8c7d-78d1456ccddc",
                "port": "6e528d6b-48f5-4eb6-b0dc-1c93e001626e"
              },
              "target": {
                "block": "3e13261b-bfb5-4085-b2b2-e9174acad839",
                "port": "186c4116-7846-4c8e-98a0-7376675105f1"
              },
              "size": 4
            },
            {
              "source": {
                "block": "57abbd52-12f6-44fe-8076-4c1592b9328b",
                "port": "memory-out"
              },
              "target": {
                "block": "3e13261b-bfb5-4085-b2b2-e9174acad839",
                "port": "c71c44ac-0500-4eb5-9c1c-4ea21cd78377"
              }
            },
            {
              "source": {
                "block": "3e13261b-bfb5-4085-b2b2-e9174acad839",
                "port": "f9c58d8f-75fc-4483-b0d2-d584a555b1c5"
              },
              "target": {
                "block": "2567fa9e-d54a-491b-92b1-2b17579bec4d",
                "port": "ee31ca02-b981-4474-a62e-85f20302435c"
              },
              "size": 4
            },
            {
              "source": {
                "block": "4c5fa26d-fcb1-479d-b084-6128f12d3613",
                "port": "out"
              },
              "target": {
                "block": "6b65980f-b738-4468-975a-07dd8e4a0005",
                "port": "3924e842-5646-4d03-bfa7-e141cf32635f"
              },
              "size": 4
            },
            {
              "source": {
                "block": "6b65980f-b738-4468-975a-07dd8e4a0005",
                "port": "fc93f7da-b784-422c-9baa-ecab73eef82c"
              },
              "target": {
                "block": "ac21c659-53a7-4547-8f64-9e7841127adb",
                "port": "f25e9a9e-cd4c-4025-8745-0691a99a3fb8"
              },
              "vertices": [
                {
                  "x": 0,
                  "y": -376
                }
              ]
            },
            {
              "source": {
                "block": "6b65980f-b738-4468-975a-07dd8e4a0005",
                "port": "08c61ec5-2f8c-477a-a659-55b2197436c3"
              },
              "target": {
                "block": "26ae0037-5dd8-43f8-ae42-3e7cae60bee5",
                "port": "f25e9a9e-cd4c-4025-8745-0691a99a3fb8"
              }
            },
            {
              "source": {
                "block": "6b65980f-b738-4468-975a-07dd8e4a0005",
                "port": "d912538b-1b79-4d87-9a1b-2a960500bad1"
              },
              "target": {
                "block": "7b87bd96-ad57-4740-bdde-cdf0027e47db",
                "port": "f25e9a9e-cd4c-4025-8745-0691a99a3fb8"
              },
              "vertices": [
                {
                  "x": 96,
                  "y": 48
                }
              ]
            },
            {
              "source": {
                "block": "6b65980f-b738-4468-975a-07dd8e4a0005",
                "port": "a340150e-2b8c-4e1e-a501-79ac40f5cd48"
              },
              "target": {
                "block": "bc1bb099-0931-40fa-8ecc-df8eed967e0a",
                "port": "f25e9a9e-cd4c-4025-8745-0691a99a3fb8"
              },
              "vertices": [
                {
                  "x": 48,
                  "y": 360
                }
              ]
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "ac21c659-53a7-4547-8f64-9e7841127adb",
                "port": "39873fa0-c3f5-47ef-b54b-b6b344416b25"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "26ae0037-5dd8-43f8-ae42-3e7cae60bee5",
                "port": "39873fa0-c3f5-47ef-b54b-b6b344416b25"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "7b87bd96-ad57-4740-bdde-cdf0027e47db",
                "port": "39873fa0-c3f5-47ef-b54b-b6b344416b25"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "bc1bb099-0931-40fa-8ecc-df8eed967e0a",
                "port": "39873fa0-c3f5-47ef-b54b-b6b344416b25"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "4626281e-9c79-4551-acf8-f98deef6b71d",
                "port": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "933f76ac-0948-4672-acdc-3e1cf80a0121",
                "port": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "ce44171e-f970-4f9f-9b6c-1e1623589d1a",
                "port": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "95e1e145-efea-46ac-aa22-0013bc2292bf",
                "port": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "6f36d2d2-0c23-4238-8659-9f8e1fbabd73",
                "port": "4196184b-4a60-493b-bcc6-c95958483683"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "2f832030-7ea0-4a3b-8bd8-f39b7d04bcc7",
                "port": "4196184b-4a60-493b-bcc6-c95958483683"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "816e52f6-7a0e-48e9-b9c3-0eb5c2d56e2e",
                "port": "4196184b-4a60-493b-bcc6-c95958483683"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "28c8e84b-83a7-41aa-8113-490a9ea62635",
                "port": "4196184b-4a60-493b-bcc6-c95958483683"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "6f94cf56-9c69-4aad-a2ec-a570ee9ddb6b",
                "port": "4196184b-4a60-493b-bcc6-c95958483683"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "e7e64f47-70cd-4654-9bf8-a0a575173248",
                "port": "4196184b-4a60-493b-bcc6-c95958483683"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "2e487e1c-f29d-4957-bde5-29684afc9be8",
                "port": "4196184b-4a60-493b-bcc6-c95958483683"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "e2af24df-b6ba-466a-b173-16cc75669d5b",
                "port": "4196184b-4a60-493b-bcc6-c95958483683"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "3450e86c-86b3-4bb3-9636-967a39e8c7c6",
                "port": "9f09a4af-8f7a-45c3-af7b-293a244e76d9"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "1be8aed5-419b-4ba5-ab17-530f65a5a825",
                "port": "9f09a4af-8f7a-45c3-af7b-293a244e76d9"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "7852173c-bb0d-4e80-a9f2-08ec291fcad3",
                "port": "9f09a4af-8f7a-45c3-af7b-293a244e76d9"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "85ffb99d-f73a-4c38-b287-0f3bdc2b43d0",
                "port": "9f09a4af-8f7a-45c3-af7b-293a244e76d9"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "68a5432b-dc3c-440c-ad54-a08147de0794",
                "port": "503869f1-ddfd-4d13-93ad-5f90281ba88c"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "fa4407a8-ad56-4a19-a9ac-39a10af28bb9",
                "port": "c90da543-4b9c-4f4c-a5fa-7e1166ee1dd3"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "2567fa9e-d54a-491b-92b1-2b17579bec4d",
                "port": "096f61b6-6d5c-4907-9512-e65b25969458"
              }
            },
            {
              "source": {
                "block": "1b4b0e4d-9bfc-4593-b754-1d5d538dcc97",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "351dc9af-2a33-4057-a5b9-07e0fc822aa1",
                "port": "bf2f0c53-2d04-4cba-aa70-2df85502d24f"
              }
            },
            {
              "source": {
                "block": "e3b1b7b6-e806-4ccd-b219-2cb19f702735",
                "port": "out"
              },
              "target": {
                "block": "351dc9af-2a33-4057-a5b9-07e0fc822aa1",
                "port": "3943e194-090b-4553-9df3-88bc4b17abc2"
              }
            },
            {
              "source": {
                "block": "351dc9af-2a33-4057-a5b9-07e0fc822aa1",
                "port": "aa84d31e-cd92-44c7-bb38-c7a4cd903a78"
              },
              "target": {
                "block": "aa141194-8252-4c93-9b51-62155ff5d18b",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "3bfe20ce12a1017a3d0c324d97fac7a471e413ad": {
      "package": {
        "name": "Sync",
        "version": "0.1",
        "description": "Sincronizar las entradas de datos con el reloj del sistema",
        "author": "Juan Gonzalez-González (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22214.451%22%20height=%22214.451%22%20viewBox=%220%200%20214.45128%20214.45128%22%3E%3Ccircle%20cx=%22107.226%22%20cy=%22107.226%22%20r=%22107.226%22%20fill=%22#4d4d4d%22/%3E%3Cpath%20d=%22M107.363%2038.297c14.504.03%2029.212%204.552%2040.7%2013.5%208.077%209.303-7.312%2019.268-14.243%2010.195-20.865-12.624-50.29-8.18-65.988%2010.695-8.352%209.367-13.058%2021.866-13.003%2034.413h13.789c-7.353%2011.037-14.707%2022.066-22.06%2033.095l-22.062-33.087h13.788c-.439-29.962%2021.108-58.462%2050.032-66.221%206.212-1.701%2012.607-2.654%2019.048-2.587zm60.53%2035.85l22.063%2033.092h-13.789c.39%2030.318-21.706%2059.137-51.14%2066.487-19.862%205.547-42.32%201.5-58.645-11.19-8.329-9.459%207.274-19.328%2014.27-10.173%2020.214%2012.265%2048.524%208.375%2064.48-9.142%209.242-9.522%2014.56-22.711%2014.489-35.982h-13.789l22.062-33.092z%22%20fill=%22#fbfbc9%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "39873fa0-c3f5-47ef-b54b-b6b344416b25",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 104,
                "y": 160
              }
            },
            {
              "id": "7bfc506f-7a54-40a1-8d33-e78a5409b972",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 688,
                "y": 208
              }
            },
            {
              "id": "f25e9a9e-cd4c-4025-8745-0691a99a3fb8",
              "type": "basic.input",
              "data": {
                "name": "pin",
                "clock": false
              },
              "position": {
                "x": 104,
                "y": 264
              }
            },
            {
              "id": "bee1f1d7-a4a5-4da3-86a6-d1a96c181f28",
              "type": "basic.code",
              "data": {
                "code": "// Sincronizacion. Evitar \n// problema de la metaestabilidad\n\nreg d1;\nreg d2;\n\nalways @(posedge clk)\n d1 <= i;\n \nalways @(posedge clk)\n  d2 <= d1;\n  \nassign o = d2;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "i"
                    }
                  ],
                  "out": [
                    {
                      "name": "o"
                    }
                  ]
                }
              },
              "position": {
                "x": 304,
                "y": 136
              },
              "size": {
                "width": 320,
                "height": 208
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "f25e9a9e-cd4c-4025-8745-0691a99a3fb8",
                "port": "out"
              },
              "target": {
                "block": "bee1f1d7-a4a5-4da3-86a6-d1a96c181f28",
                "port": "i"
              }
            },
            {
              "source": {
                "block": "39873fa0-c3f5-47ef-b54b-b6b344416b25",
                "port": "out"
              },
              "target": {
                "block": "bee1f1d7-a4a5-4da3-86a6-d1a96c181f28",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "bee1f1d7-a4a5-4da3-86a6-d1a96c181f28",
                "port": "o"
              },
              "target": {
                "block": "7bfc506f-7a54-40a1-8d33-e78a5409b972",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "ec2da447d7f051eef8a0640ae0eaf0776c0f51e8": {
      "package": {
        "name": "Corazon-tic-ms-ena",
        "version": "0.1",
        "description": "Corazón de bombeo de tics con periodo paramétrico de milisegundos y entrada de enable",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22197.514%22%20height=%22161.086%22%20viewBox=%220%200%2052.259014%2042.62059%22%3E%3Cpath%20d=%22M22.153%2040.47c-.727-1.25-1.853-2.474-3.987-4.332-1.156-1.006-1.86-1.565-5.863-4.658-3.138-2.425-4.704-3.77-6.519-5.601-1.813-1.831-2.88-3.29-3.794-5.191a15.321%2015.321%200%200%201-1.235-3.6c-.317-1.545-.36-2.067-.358-4.342.002-2.983.1-3.48%201.08-5.47.728-1.479%201.281-2.257%202.433-3.427C5.028%202.714%205.754%202.2%207.325%201.422%209.069.56%2010.33.333%2012.93.417c2.02.065%202.759.266%204.36%201.188%202.52%201.45%204.475%203.777%205.017%205.972.088.358.18.652.203.652.023%200%20.227-.42.453-.932.77-1.744%201.484-2.808%202.62-3.903C29.06.041%2034.542-.565%2038.974%201.912c1.81%201.012%203.283%202.485%204.425%204.424.898%201.527%201.358%203.555%201.436%206.34.113%204.035-.625%206.832-2.59%209.812-.779%201.182-1.355%201.899-2.437%203.028-1.745%201.823-3.318%203.162-7.033%205.988-2.344%201.782-3.734%202.929-5.745%204.74-1.611%201.452-4.108%203.98-4.349%204.402-.105.185-.2.336-.21.336-.012%200-.154-.23-.318-.512z%22%20fill=%22red%22/%3E%3Ctext%20y=%2262.314%22%20x=%2259.897%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%2215.216%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22matrix(.99853%200%200%201.00147%20-50.645%20-44.99)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%22.282%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2262.314%22%20x=%2259.897%22%20font-weight=%22700%22%20font-size=%228.695%22%3Emsec%3C/tspan%3E%3C/text%3E%3Cg%20transform=%22matrix(.79321%200%200%20.79321%20-39.33%20-27.72)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "503869f1-ddfd-4d13-93ad-5f90281ba88c",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 104,
                "y": 72
              }
            },
            {
              "id": "c138a610-b61f-4e7c-bb8a-c4f3b0b9f95c",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 912,
                "y": 192
              }
            },
            {
              "id": "3ac5ff24-ed0a-4d08-bdaa-adbb8ce688ab",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 128,
                "y": 304
              }
            },
            {
              "id": "136e8d6d-892a-4f14-8d6d-0c5bc6c3e844",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "100",
                "local": false
              },
              "position": {
                "x": 520,
                "y": -128
              }
            },
            {
              "id": "a70d9684-3b18-4f3d-90cd-28faa893b6b2",
              "type": "basic.code",
              "data": {
                "code": "//localparam MS;\n\n//-- Constante para dividir y obtener una frecuencia de 1KHz\nlocalparam M = 12000*MS;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N = $clog2(M);\n\n//-- Cable de reset para el contador\nwire reset;\n\n//-- Registro del divisor\nreg [N-1:0] divcounter;\n\n\n//-- Contador con reset\nalways @(posedge clk)\n  if (reset)\n    divcounter <= 0;\n  else\n    divcounter <= divcounter + 1;\n\nwire ov;\nassign ov = (divcounter == M-1);\n\n//-- Comparador que resetea el contador cuando se alcanza el tope\nassign reset = ov | (ena == 0);\n\n//-- La salida es la señal de overflow\nassign o = ov;\n\n\n\n",
                "params": [
                  {
                    "name": "MS"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "ena"
                    }
                  ],
                  "out": [
                    {
                      "name": "o"
                    }
                  ]
                }
              },
              "position": {
                "x": 296,
                "y": -8
              },
              "size": {
                "width": 544,
                "height": 456
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "a70d9684-3b18-4f3d-90cd-28faa893b6b2",
                "port": "o"
              },
              "target": {
                "block": "c138a610-b61f-4e7c-bb8a-c4f3b0b9f95c",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "503869f1-ddfd-4d13-93ad-5f90281ba88c",
                "port": "out"
              },
              "target": {
                "block": "a70d9684-3b18-4f3d-90cd-28faa893b6b2",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "136e8d6d-892a-4f14-8d6d-0c5bc6c3e844",
                "port": "constant-out"
              },
              "target": {
                "block": "a70d9684-3b18-4f3d-90cd-28faa893b6b2",
                "port": "MS"
              }
            },
            {
              "source": {
                "block": "3ac5ff24-ed0a-4d08-bdaa-adbb8ce688ab",
                "port": "out"
              },
              "target": {
                "block": "a70d9684-3b18-4f3d-90cd-28faa893b6b2",
                "port": "ena"
              }
            }
          ]
        }
      }
    },
    "8e2728307baccbf26c01cdb87bcfba8ca64a435c": {
      "package": {
        "name": "Subida",
        "version": "0.1",
        "description": "Detector de flanco de subida. Emite un tic cuando detecta un flanco ascendente",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22363.337%22%20height=%22251.136%22%20viewBox=%220%200%2096.132868%2066.446441%22%3E%3Cdefs%3E%3Cmarker%20orient=%22auto%22%20id=%22a%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M2.308%200l-3.46%202v-4z%22%20fill=%22red%22%20fill-rule=%22evenodd%22%20stroke=%22red%22%20stroke-width=%22.5332%22/%3E%3C/marker%3E%3C/defs%3E%3Cg%20transform=%22translate(-63.113%20-50.902)%22%3E%3Cg%20fill=%22none%22%20stroke=%22#00f%22%20stroke-linecap=%22round%22%3E%3Cpath%20d=%22M76.611%2083.336l6.027%207.974-5.055%206.03%201.75%201.557M75.371%2083.53l-3.5%207.975-7.97%201.556.583%202.528%22%20stroke-width=%221.058%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M75.907%2083.53V53.588%22%20stroke-width=%223.969%22/%3E%3Cpath%20d=%22M65.118%2063.338l10.688-10.452%2010.351%2010.452%22%20stroke-width=%223.969%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3Cpath%20d=%22M123.88%2069.103c2.17%203.317%204.013%202.718%205.68%200%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%22.529%22%20stroke-linecap=%22round%22/%3E%3Cpath%20d=%22M132.326%2095.38V51.614h-11.225v43.497%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%221.323%22%20stroke-linecap=%22round%22/%3E%3Cellipse%20cx=%22112.489%22%20cy=%2297.866%22%20rx=%227.009%22%20ry=%222.635%22%20transform=%22rotate(-1.418)%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%22.265%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cellipse%20cx=%22-140.807%22%20cy=%2291.678%22%20rx=%227.009%22%20ry=%222.635%22%20transform=%22scale(-1%201)%20rotate(-1.418)%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%22.265%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M124.8%2059.416v3.875M128.39%2059.416v3.875%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%22.529%22/%3E%3Cpath%20d=%22M85.794%2074.097h21.381%22%20fill=%22red%22%20stroke=%22red%22%20stroke-width=%222.646%22%20marker-end=%22url(#a)%22/%3E%3Cg%20transform=%22matrix(.842%200%200%20.842%2062.024%2042.68)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "4196184b-4a60-493b-bcc6-c95958483683",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 152,
                "y": 176
              }
            },
            {
              "id": "1d2e403f-0fa6-41fd-83a9-4f309eadd855",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 624,
                "y": 200
              }
            },
            {
              "id": "b6426b43-dcda-418d-b6d3-4764b5bc0b25",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 152,
                "y": 232
              }
            },
            {
              "id": "3b0eca37-3439-41c9-99e7-7ff1e56bb528",
              "type": "basic.code",
              "data": {
                "code": "reg q = 0;\n\nalways @(posedge clk)\n  q <= i;\n  \nassign o = (~q & i);  ",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "i"
                    }
                  ],
                  "out": [
                    {
                      "name": "o"
                    }
                  ]
                }
              },
              "position": {
                "x": 336,
                "y": 176
              },
              "size": {
                "width": 232,
                "height": 112
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b6426b43-dcda-418d-b6d3-4764b5bc0b25",
                "port": "out"
              },
              "target": {
                "block": "3b0eca37-3439-41c9-99e7-7ff1e56bb528",
                "port": "i"
              }
            },
            {
              "source": {
                "block": "3b0eca37-3439-41c9-99e7-7ff1e56bb528",
                "port": "o"
              },
              "target": {
                "block": "1d2e403f-0fa6-41fd-83a9-4f309eadd855",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "4196184b-4a60-493b-bcc6-c95958483683",
                "port": "out"
              },
              "target": {
                "block": "3b0eca37-3439-41c9-99e7-7ff1e56bb528",
                "port": "clk"
              }
            }
          ]
        }
      }
    },
    "cfd9babc26edba88e2152493023c4bef7c47f247": {
      "package": {
        "name": "Debouncer",
        "version": "1.0.0",
        "description": "Remove the rebound on a mechanical switch",
        "author": "Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Cpath%20d=%22M-251.547%20436.672h22.802v-30.353h5.862v30.353h5.259v-30.353h3.447v30.353h2.984v-30.353h3.506v30.523h6.406V405.77h38.868%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%221.4%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M-232.57%20403.877l26.946%2032.391M-205.624%20403.877l-26.946%2032.391%22%20fill=%22none%22%20stroke=%22red%22%20stroke-width=%223%22%20stroke-linecap=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 48,
                "y": 144
              }
            },
            {
              "id": "22ff3fa1-943b-4d1a-bd89-36e1c054d077",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 768,
                "y": 208
              }
            },
            {
              "id": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 48,
                "y": 272
              }
            },
            {
              "id": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
              "type": "basic.code",
              "data": {
                "code": "//-- Debouncer Circuit\n//-- It produces a stable output when the\n//-- input signal is bouncing\n\nreg btn_prev = 0;\nreg btn_out_r = 0;\n\nreg [16:0] counter = 0;\n\n\nalways @(posedge clk) begin\n\n  //-- If btn_prev and btn_in are differents\n  if (btn_prev ^ in == 1'b1) begin\n    \n      //-- Reset the counter\n      counter <= 0;\n      \n      //-- Capture the button status\n      btn_prev <= in;\n  end\n    \n  //-- If no timeout, increase the counter\n  else if (counter[16] == 1'b0)\n      counter <= counter + 1;\n      \n  else\n    //-- Set the output to the stable value\n    btn_out_r <= btn_prev;\n\nend\n\nassign out = btn_out_r;\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "in"
                    }
                  ],
                  "out": [
                    {
                      "name": "out"
                    }
                  ]
                }
              },
              "position": {
                "x": 264,
                "y": 112
              },
              "size": {
                "width": 384,
                "height": 256
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
                "port": "out"
              },
              "target": {
                "block": "22ff3fa1-943b-4d1a-bd89-36e1c054d077",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a",
                "port": "out"
              },
              "target": {
                "block": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530",
                "port": "out"
              },
              "target": {
                "block": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "b959c256104d1064a5ef7b38632ffb6eed3b396f": {
      "package": {
        "name": "Biestable-Set-Reset",
        "version": "0.1",
        "description": "Biestable con entradas de Set y Reset síncronas, para poner y quitar notaficaciones de eventos",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20234.62951%20290.44458%22%20id=%22svg30%22%20width=%22234.63%22%20height=%22290.445%22%3E%3Cstyle%20id=%22style2%22%3E.st0%7Bdisplay:none%7D.st1%7Bfill:none;stroke:#303030;stroke-width:.7;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10%7D.st2%7Bfill:#303030%7D%3C/style%3E%3Cg%20id=%22layer1%22%20transform=%22translate(3.47%203.198)%22%3E%3Cpath%20class=%22st1%22%20d=%22M21.358%20145.947a63.75%2063.75%200%200%200%201.152%2011.049%22%20id=%22path9%22%20fill=%22none%22%20stroke=%22#303030%22%20stroke-width=%226.776%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20stroke-miterlimit=%2210%22/%3E%3Cpath%20class=%22st1%22%20d=%22M48.702%2092.116a64.784%2064.784%200%200%200-12.559%2011.68%2064.99%2064.99%200%200%200-12.69%2024.809%22%20id=%22path11%22%20fill=%22none%22%20stroke=%22#303030%22%20stroke-width=%226.776%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20stroke-miterlimit=%2210%22/%3E%3Cpath%20id=%22line17%22%20class=%22st1%22%20fill=%22none%22%20stroke=%22#303030%22%20stroke-width=%226.776%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20stroke-miterlimit=%2210%22%20d=%22M184.865%20207.591L41.298%20262.802%22/%3E%3Cpath%20id=%22path21-3%22%20d=%22M185.448%20175.07l.37.154c2.52.831%204.718%202.386%206.634%204.249%202.02%202.322%203.694%204.777%204.423%208.713%201.496%208.074-3.286%2016.05-10.95%2018.997l-1.06.408L41.298%20262.8l-.733.283c-8.003%203.077-17.551.461-21.82-6.975-3.3-5.748-2.736-12.198.418-21.613%203.155-9.414%202.86-21.856-1.644-33.55l.041.003-12.507-32.667c-12.88-33.415-.747-70.376%2027.41-90.31l-1.102-2.749c-3.685-9.583%201.14-20.438%2010.723-24.124%209.583-3.685%2020.439%201.14%2024.124%2010.723l1.654%203.239c34.881-3.556%2068.594%2015.855%2081.318%2049.33l15.24%2038.432c4.795%208.723%2011.831%2015.955%2021.028%2022.248z%22%20fill=%22#fff%22%20stroke=%22#303030%22%20stroke-width=%227%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20stroke-miterlimit=%2210%22/%3E%3Cpath%20d=%22M64.268%20268.838l45.015-17.115s7.963%2024.296-14.427%2030.38c-22.39%206.086-30.588-13.265-30.588-13.265z%22%20id=%22path826%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%227%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3Cg%20id=%22layer3%22%3E%3Crect%20id=%22rect845%22%20width=%22135.189%22%20height=%22135.189%22%20x=%2295.783%22%20y=%223.671%22%20ry=%2219.847%22%20fill=%22#55acee%22%20stroke=%22#303030%22%20stroke-width=%227%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20stroke-miterlimit=%2210%22/%3E%3C/g%3E%3Cg%20id=%22layer4%22%3E%3Cpath%20class=%22st2%22%20d=%22M172.724%2052.533V27.647h-9.888L144.047%2037.7l2.308%208.9%2014.833-8.076h.33v74.824H172.724V52.533z%22%20id=%22path7%22%20fill=%22#303030%22%20stroke-width=%2214.425%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "9f09a4af-8f7a-45c3-af7b-293a244e76d9",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 200,
                "y": 64
              }
            },
            {
              "id": "3ae2d46d-7981-497a-899f-b60bfae0f43e",
              "type": "basic.input",
              "data": {
                "name": "set",
                "clock": false
              },
              "position": {
                "x": 200,
                "y": 152
              }
            },
            {
              "id": "1cb167a4-9e2a-416b-803e-da7b6151eaa5",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 720,
                "y": 152
              }
            },
            {
              "id": "86eb8c81-17fc-4371-bd21-51f429191f3c",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 200,
                "y": 232
              }
            },
            {
              "id": "bf12a800-db30-4289-a7c5-8c08438f9a39",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 464,
                "y": 0
              }
            },
            {
              "id": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
              "type": "basic.code",
              "data": {
                "code": "reg q = INI;\n\nalways @(posedge clk)\n  if (set)\n    q <= 1'b1;\n  else if (rst)\n    q<=1'b0;",
                "params": [
                  {
                    "name": "INI"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "set"
                    },
                    {
                      "name": "rst"
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
                "x": 400,
                "y": 120
              },
              "size": {
                "width": 224,
                "height": 128
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "9f09a4af-8f7a-45c3-af7b-293a244e76d9",
                "port": "out"
              },
              "target": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "clk"
              },
              "vertices": [
                {
                  "x": 336,
                  "y": 104
                }
              ]
            },
            {
              "source": {
                "block": "3ae2d46d-7981-497a-899f-b60bfae0f43e",
                "port": "out"
              },
              "target": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "set"
              }
            },
            {
              "source": {
                "block": "86eb8c81-17fc-4371-bd21-51f429191f3c",
                "port": "out"
              },
              "target": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "rst"
              },
              "vertices": [
                {
                  "x": 344,
                  "y": 248
                }
              ]
            },
            {
              "source": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "q"
              },
              "target": {
                "block": "1cb167a4-9e2a-416b-803e-da7b6151eaa5",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "bf12a800-db30-4289-a7c5-8c08438f9a39",
                "port": "constant-out"
              },
              "target": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "INI"
              }
            }
          ]
        }
      }
    },
    "7eacdff4ce248b009935725889c8ae3339817d76": {
      "package": {
        "name": "Bajada",
        "version": "0.1",
        "description": "Detector de flanco de bajada. Emite un tic cuando detecta un flanco descendente",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22396.685%22%20height=%22254.461%22%20viewBox=%220%200%20104.95637%2067.326178%22%3E%3Cdefs%3E%3Cmarker%20orient=%22auto%22%20id=%22a%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M2.308%200l-3.46%202v-4z%22%20fill=%22red%22%20fill-rule=%22evenodd%22%20stroke=%22red%22%20stroke-width=%22.5332%22/%3E%3C/marker%3E%3C/defs%3E%3Cg%20transform=%22translate(-54.29%20-50.022)%22%3E%3Cpath%20d=%22M123.88%2069.103c2.17%203.317%204.013%202.718%205.68%200%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%22.529%22%20stroke-linecap=%22round%22/%3E%3Cpath%20d=%22M132.326%2095.38V51.614h-11.225v43.497%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%221.323%22%20stroke-linecap=%22round%22/%3E%3Cellipse%20cx=%22112.489%22%20cy=%2297.866%22%20rx=%227.009%22%20ry=%222.635%22%20transform=%22rotate(-1.418)%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%22.265%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cellipse%20cx=%22-140.807%22%20cy=%2291.678%22%20rx=%227.009%22%20ry=%222.635%22%20transform=%22scale(-1%201)%20rotate(-1.418)%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%22.265%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M124.8%2059.416v3.875M128.39%2059.416v3.875%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%22.529%22/%3E%3Cpath%20d=%22M85.794%2074.097h21.381%22%20fill=%22red%22%20stroke=%22red%22%20stroke-width=%222.646%22%20marker-end=%22url(#a)%22/%3E%3Cg%20transform=%22matrix(.842%200%200%20.842%2062.024%2042.68)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cg%20fill=%22none%22%20stroke=%22#00f%22%20stroke-linecap=%22round%22%3E%3Cpath%20d=%22M67.528%2082.456l6.026%207.975-5.054%206.03%201.749%201.556m-3.96-15.367l-3.5%207.976-7.97%201.555.583%202.529%22%20stroke-width=%221.058%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M67.258%2052.035v29.942%22%20stroke-width=%223.969%22/%3E%3Cpath%20d=%22M56.469%2072.226L67.157%2082.68l10.351-10.453%22%20stroke-width=%223.969%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "4196184b-4a60-493b-bcc6-c95958483683",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 152,
                "y": 176
              }
            },
            {
              "id": "1d2e403f-0fa6-41fd-83a9-4f309eadd855",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 624,
                "y": 200
              }
            },
            {
              "id": "b6426b43-dcda-418d-b6d3-4764b5bc0b25",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 152,
                "y": 232
              }
            },
            {
              "id": "3b0eca37-3439-41c9-99e7-7ff1e56bb528",
              "type": "basic.code",
              "data": {
                "code": "reg q = 0;\n\nalways @(posedge clk)\n  q <= i;\n  \nassign o = (q & ~i);  ",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "i"
                    }
                  ],
                  "out": [
                    {
                      "name": "o"
                    }
                  ]
                }
              },
              "position": {
                "x": 336,
                "y": 176
              },
              "size": {
                "width": 232,
                "height": 112
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b6426b43-dcda-418d-b6d3-4764b5bc0b25",
                "port": "out"
              },
              "target": {
                "block": "3b0eca37-3439-41c9-99e7-7ff1e56bb528",
                "port": "i"
              }
            },
            {
              "source": {
                "block": "3b0eca37-3439-41c9-99e7-7ff1e56bb528",
                "port": "o"
              },
              "target": {
                "block": "1d2e403f-0fa6-41fd-83a9-4f309eadd855",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "4196184b-4a60-493b-bcc6-c95958483683",
                "port": "out"
              },
              "target": {
                "block": "3b0eca37-3439-41c9-99e7-7ff1e56bb528",
                "port": "clk"
              }
            }
          ]
        }
      }
    },
    "e79148d23652be6d5149f8f6881f7f47bd958497": {
      "package": {
        "name": "Contador-2bits-up-rst",
        "version": "0.1",
        "description": "Contador módulo M, ascendente, de 2 bits, con reset ",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22327.118%22%20height=%22304.435%22%20viewBox=%220%200%2086.549973%2080.548402%22%3E%3Cdefs%3E%3Cmarker%20id=%22a%22%20orient=%22auto%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M2.308%200l-3.46%202v-4z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22%20stroke=%22#00f%22%20stroke-width=%22.5332%22/%3E%3C/marker%3E%3C/defs%3E%3Cg%20transform=%22translate(-59.162%20-4.54)%22%3E%3Cpath%20d=%22M138.803%2048.49V16.91%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%222.806%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20marker-end=%22url(#a)%22/%3E%3Crect%20rx=%222.807%22%20ry=%222.807%22%20y=%225.289%22%20x=%2299.747%22%20height=%2247.849%22%20width=%2229.538%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%221.497%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20transform=%22scale(.94516%201.05802)%22%20y=%2240.921%22%20x=%22108.575%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%228.982%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%221.497%22%3E%3Ctspan%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2240.921%22%20x=%22108.575%22%20font-weight=%22700%22%20font-size=%2235.656%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M100.868%2030.283h27.764%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222.245%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20rx=%222.807%22%20ry=%222.807%22%20y=%225.289%22%20x=%2266.333%22%20height=%2247.849%22%20width=%2229.538%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%221.497%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20transform=%22scale(.94516%201.05802)%22%20y=%2240.921%22%20x=%2273.223%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%228.982%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%221.497%22%3E%3Ctspan%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2240.921%22%20x=%2273.223%22%20font-weight=%22700%22%20font-size=%2235.656%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M67.454%2030.283h27.764%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222.245%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Cg%20transform=%22matrix(1.00937%200%200%201.00937%20-27.38%20-4.42)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(1.00937%200%200%201.00937%2028.939%20-4.42)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c90da543-4b9c-4f4c-a5fa-7e1166ee1dd3",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 264,
                "y": 176
              }
            },
            {
              "id": "7a982450-c842-4aa2-8e77-43cc628266e0",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 800,
                "y": 200
              }
            },
            {
              "id": "743b5299-2d89-4783-b7c9-12a5b36df406",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 264,
                "y": 280
              }
            },
            {
              "id": "cc17ff4d-1c27-4dc3-a14c-da730d54750e",
              "type": "basic.output",
              "data": {
                "name": "ov"
              },
              "position": {
                "x": 800,
                "y": 352
              }
            },
            {
              "id": "26aba23f-8567-4e9b-bd45-c26724030f33",
              "type": "basic.input",
              "data": {
                "name": "cnt",
                "clock": false
              },
              "position": {
                "x": 264,
                "y": 376
              }
            },
            {
              "id": "eb9f9c33-e717-43f0-98eb-dbd9c278fa8c",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "4",
                "local": false
              },
              "position": {
                "x": 528,
                "y": 48
              }
            },
            {
              "id": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
              "type": "basic.code",
              "data": {
                "code": "//-- Numero de bits del contador\nlocalparam N = 2; \n\n//-- En contadores de N bits:\n//-- M = 2 ** N\n\n//-- Internamente usamos un bit mas\n//-- (N+1) bits\nreg [N:0] qi = 0;\n\nalways @(posedge clk)\n  if (rst | ov)\n    qi <= 2'b00;\n  else\n    if (cnt)\n      qi <= qi + 1;\n      \nassign q = qi;\n\n//-- Comprobar overflow\nassign ov = (qi == M);\n    ",
                "params": [
                  {
                    "name": "M"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "rst"
                    },
                    {
                      "name": "cnt"
                    }
                  ],
                  "out": [
                    {
                      "name": "q",
                      "range": "[1:0]",
                      "size": 2
                    },
                    {
                      "name": "ov"
                    }
                  ]
                }
              },
              "position": {
                "x": 408,
                "y": 160
              },
              "size": {
                "width": 336,
                "height": 296
              }
            },
            {
              "id": "b35ae5de-a490-4f7b-9200-ac52cd3f333e",
              "type": "basic.info",
              "data": {
                "info": "**Parámetro**: Módulo del contador",
                "readonly": true
              },
              "position": {
                "x": 472,
                "y": 32
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
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "q"
              },
              "target": {
                "block": "7a982450-c842-4aa2-8e77-43cc628266e0",
                "port": "in"
              },
              "size": 2
            },
            {
              "source": {
                "block": "743b5299-2d89-4783-b7c9-12a5b36df406",
                "port": "out"
              },
              "target": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "rst"
              }
            },
            {
              "source": {
                "block": "eb9f9c33-e717-43f0-98eb-dbd9c278fa8c",
                "port": "constant-out"
              },
              "target": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "M"
              }
            },
            {
              "source": {
                "block": "26aba23f-8567-4e9b-bd45-c26724030f33",
                "port": "out"
              },
              "target": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "cnt"
              }
            },
            {
              "source": {
                "block": "c90da543-4b9c-4f4c-a5fa-7e1166ee1dd3",
                "port": "out"
              },
              "target": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "ov"
              },
              "target": {
                "block": "cc17ff4d-1c27-4dc3-a14c-da730d54750e",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "1c4cc4f0b58ac69714b52d59d7925dc7e1cba2c5": {
      "package": {
        "name": "Decodificador-2-4-bus",
        "version": "0.1",
        "description": "Decodificador de 2 a 4, con salida en bus",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20179.10693%20356.59582%22%20width=%22179.107%22%20height=%22356.596%22%3E%3Cpath%20d=%22M130.817%20197.651c0-6.286-1.87-12.518-5.411-18.025-7.306-11.352-11.168-24.924-11.168-39.247v-9.94a5.63%205.63%200%200%200-5.629-5.63H60.222a5.63%205.63%200%200%200-5.629%205.63v9.94c0%2014.324-3.861%2027.895-11.168%2039.25-3.54%205.504-5.412%2011.736-5.412%2018.023%200%209.492%204.123%2018.426%2011.65%2025.43v44.017c0%2019.164%2015.589%2034.755%2034.75%2034.755%2019.163%200%2034.754-15.59%2034.754-34.755v-44.017c7.528-7.004%2011.65-15.938%2011.65-25.43zM107.91%20267.1c0%2012.956-10.54%2023.497-23.497%2023.497-12.953%200-23.49-10.541-23.49-23.497v-50.18c0-6.38%202.55-12.304%206.872-16.623%201.274%208.027%208.241%2014.184%2016.62%2014.184%208.375%200%2015.339-6.149%2016.619-14.169%204.434%204.439%206.877%2010.336%206.877%2016.608v50.18zM78.842%20197.65v-22.403c0-3.073%202.499-5.573%205.572-5.573s5.572%202.5%205.572%205.573v22.403c0%203.073-2.5%205.573-5.572%205.573a5.578%205.578%200%200%201-5.572-5.573zm38.752%208.896c-1.651-5.302-4.569-10.162-8.608-14.201a34.654%2034.654%200%200%200-7.742-5.829v-11.269c0-9.28-7.55-16.83-16.83-16.83-9.28%200-16.83%207.55-16.83%2016.83v11.257a34.626%2034.626%200%200%200-16.348%2020.044c-1.29-2.834-1.966-5.834-1.966-8.896%200-4.181%201.219-8.196%203.622-11.932%208.478-13.173%2012.958-28.851%2012.958-45.34v-4.313h37.13v4.312c0%2016.489%204.48%2032.167%2012.957%2045.339%202.404%203.737%203.623%207.752%203.623%2011.933-.001%203.062-.677%206.062-1.966%208.895z%22%20fill=%22#00f%22/%3E%3Cpath%20d=%22M84.414%20244.445c-8.291%200-15.038%206.746-15.038%2015.038v7.617c0%208.291%206.746%2015.037%2015.038%2015.037s15.038-6.746%2015.038-15.037v-7.617c0-8.292-6.746-15.038-15.038-15.038zm3.78%2022.655a3.784%203.784%200%200%201-3.78%203.78%203.784%203.784%200%200%201-3.78-3.78v-7.617a3.784%203.784%200%200%201%203.78-3.78%203.784%203.784%200%200%201%203.78%203.78zM66.493%20316.17h18.819a5.63%205.63%200%200%200%200-11.257h-18.82a5.63%205.63%200%200%200%200%2011.258zM102.338%20318.388H83.52a5.63%205.63%200%200%200%200%2011.258h18.82a5.63%205.63%200%200%200%200-11.258zM66.493%20343.12h18.819a5.63%205.63%200%200%200%200-11.257h-18.82a5.63%205.63%200%200%200%200%2011.258zM102.338%20345.338H83.52a5.63%205.63%200%200%200%200%2011.258h18.82a5.63%205.63%200%200%200%200-11.258zM10.525%2030.22l9.292-16.364a5.63%205.63%200%200%200-9.79-5.56L.735%2024.662a5.63%205.63%200%200%200%209.79%205.56zM155.355%2032.526l-11.64-14.788a5.63%205.63%200%200%200-8.846%206.963l11.64%2014.788a5.63%205.63%200%200%200%208.846-6.963zM30.63%2045.73l11.559-14.851a5.63%205.63%200%200%200-8.884-6.915l-11.56%2014.85a5.63%205.63%200%200%200%208.884%206.915zM134.874%2048.248l-13.616-12.991a5.63%205.63%200%200%200-7.771%208.145l13.615%2012.991a5.63%205.63%200%200%200%207.772-8.145zM63.518%2045.414a5.63%205.63%200%200%200-7.954-.329L41.718%2057.831a5.63%205.63%200%200%200%207.625%208.283l13.845-12.746a5.63%205.63%200%200%200%20.33-7.954zM117.855%2067.305l-16.457-9.129a5.63%205.63%200%200%200-5.461%209.845l16.456%209.129a5.63%205.63%200%200%200%205.462-9.845zM80.167%2072.202a5.63%205.63%200%200%200-7.417-2.89l-17.231%207.565a5.63%205.63%200%200%200%204.526%2010.308l17.231-7.566a5.63%205.63%200%200%200%202.89-7.417zM107.766%2088.12L89.63%2083.1a5.63%205.63%200%200%200-3.003%2010.85l18.138%205.02a5.63%205.63%200%200%200%203.002-10.85zM90.434%20100.067a5.63%205.63%200%200%200-7.016-3.76l-18.015%205.44a5.63%205.63%200%200%200%203.255%2010.777l18.015-5.44a5.63%205.63%200%200%200%203.761-7.017zM102.474%20112.262H83.655a5.63%205.63%200%200%200%200%2011.258h18.819a5.63%205.63%200%200%200%200-11.258zM178.633%2020.61l-7.55-17.238a5.63%205.63%200%200%200-10.312%204.517l7.55%2017.238a5.63%205.63%200%200%200%2010.312-4.517z%22%20fill=%22#00f%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "10cc3244-31d5-4542-9808-a54f6480183e",
              "type": "basic.input",
              "data": {
                "name": "y",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": 40,
                "y": 184
              }
            },
            {
              "id": "3e2dd1bd-94fd-4ea8-a428-e24e30959c4f",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 536,
                "y": 184
              }
            },
            {
              "id": "8442894d-b93c-4aff-a7cb-dea7176ac3db",
              "type": "basic.code",
              "data": {
                "code": "assign i = 1 << y;\n                       \n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "y",
                      "range": "[1:0]",
                      "size": 2
                    }
                  ],
                  "out": [
                    {
                      "name": "i",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 184,
                "y": 184
              },
              "size": {
                "width": 280,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "10cc3244-31d5-4542-9808-a54f6480183e",
                "port": "out"
              },
              "target": {
                "block": "8442894d-b93c-4aff-a7cb-dea7176ac3db",
                "port": "y"
              },
              "size": 2
            },
            {
              "source": {
                "block": "8442894d-b93c-4aff-a7cb-dea7176ac3db",
                "port": "i"
              },
              "target": {
                "block": "3e2dd1bd-94fd-4ea8-a428-e24e30959c4f",
                "port": "in"
              },
              "size": 4
            }
          ]
        }
      }
    },
    "35f267d0df6ffcb7fc33753bc9df9cf083642cca": {
      "package": {
        "name": "NOT",
        "version": "1.0.3",
        "description": "Puerta NOT",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22317.651%22%20height=%22194.058%22%20version=%221%22%3E%3Cpath%20d=%22M69.246%204l161.86%2093.027-161.86%2093.031V4z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linejoin=%22round%22/%3E%3Cellipse%20cx=%22253.352%22%20cy=%2296.736%22%20rx=%2221.393%22%20ry=%2221.893%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2097.49h65.262m205.796%200h38.48%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2281.112%22%20y=%22111.734%22%20transform=%22scale(.99532%201.0047)%22%20font-weight=%22400%22%20font-size=%2249.675%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2281.112%22%20y=%22111.734%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ENot%3C/tspan%3E%3C/text%3E%3C/svg%3E"
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
                "y": 144
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 752,
                "y": 144
              }
            },
            {
              "id": "5365ed8c-e5db-4445-938f-8d689830ea5c",
              "type": "basic.code",
              "data": {
                "code": "//-- Puerta NOT\n\n//-- module (input wire a, output wire c);\n\n\nassign c = ~a;\n\n\n//-- endmodule\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
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
                "width": 400,
                "height": 256
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
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
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
    },
    "87abc950ab83340895d1780090127b1528046813": {
      "package": {
        "name": "OR-4",
        "version": "1.0.1",
        "description": "Puerta OR de 4 entradas",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20height=%22192.718%22%20width=%22383.697%22%20version=%221%22%3E%3Cpath%20d=%22M175.56%20188.718H84.527s30.345-42.538%2031.086-94.03c.743-51.49-31.821-90.294-31.821-90.294L176.109%204c46.445%201.948%20103.899%2053.44%20123.047%2093.678-32.601%2067.503-92.158%2089.79-123.596%2091.04z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2047.292h99.605M4.883%20145.168h100.981M298.57%2098.89h81.07%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2266.317%22%20y=%22121.28%22%20x=%22131.572%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20font-weight=%22700%22%20y=%22121.28%22%20x=%22131.572%22%3EOR%3C/tspan%3E%3C/text%3E%3C/svg%3E"
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
                "x": 72,
                "y": 48
              }
            },
            {
              "id": "97b51945-d716-4b6c-9db9-970d08541249",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 72,
                "y": 120
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
              "id": "8c46de6c-8895-446f-bcbd-850a4a72c42d",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 72,
                "y": 184
              }
            },
            {
              "id": "e3048d1d-5eca-42de-9b82-e4da2969a091",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 72,
                "y": 256
              }
            },
            {
              "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "type": "basic.code",
              "data": {
                "code": "//-- Puerta OR\n\n//-- module and (input wire a, input wire b,\n//--             output wire c);\n\nassign o = a | b | c | d;\n\n//-- endmodule",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    },
                    {
                      "name": "b"
                    },
                    {
                      "name": "c"
                    },
                    {
                      "name": "d"
                    }
                  ],
                  "out": [
                    {
                      "name": "o"
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
                "port": "o"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "8c46de6c-8895-446f-bcbd-850a4a72c42d",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "c"
              }
            },
            {
              "source": {
                "block": "e3048d1d-5eca-42de-9b82-e4da2969a091",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "d"
              }
            }
          ]
        }
      }
    },
    "710cd3b0fcb6a599515548c36fc243644f707046": {
      "package": {
        "name": "Codificador-4-2-bus",
        "version": "0.1",
        "description": "Codificador de 4 a 2, con prioridad. La salida zero se activa cuando ninguna entrada está activad. Entradas y salidas de buses",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%2092.804077%20312.37338%22%20width=%2292.804%22%20height=%22312.373%22%3E%3Cpath%20d=%22M92.804%2072.842c0-6.286-1.871-12.518-5.412-18.025-7.306-11.352-11.167-24.924-11.167-39.247V5.629A5.63%205.63%200%200%200%2070.596%200H22.209a5.63%205.63%200%200%200-5.63%205.629v9.941c0%2014.324-3.86%2027.895-11.167%2039.25C1.872%2060.323%200%2066.555%200%2072.842c0%209.492%204.122%2018.426%2011.65%2025.43v44.017c0%2019.164%2015.588%2034.755%2034.749%2034.755%2019.164%200%2034.755-15.59%2034.755-34.755V98.273c7.528-7.005%2011.65-15.938%2011.65-25.431zM69.896%20142.29c0%2012.956-10.541%2023.497-23.497%2023.497-12.953%200-23.49-10.541-23.49-23.497V92.11c0-6.38%202.55-12.304%206.872-16.623%201.274%208.027%208.24%2014.184%2016.62%2014.184%208.375%200%2015.338-6.15%2016.618-14.169%204.435%204.439%206.877%2010.336%206.877%2016.607v50.18zM40.828%2072.84V50.438c0-3.072%202.5-5.572%205.572-5.572%203.073%200%205.573%202.5%205.573%205.572v22.404c0%203.073-2.5%205.573-5.573%205.573a5.578%205.578%200%200%201-5.572-5.573zm38.752%208.897c-1.65-5.302-4.568-10.162-8.607-14.201a34.654%2034.654%200%200%200-7.742-5.829V50.438c0-9.28-7.55-16.83-16.83-16.83-9.28%200-16.83%207.55-16.83%2016.83v11.257a34.626%2034.626%200%200%200-16.348%2020.044c-1.29-2.834-1.966-5.834-1.966-8.896%200-4.181%201.219-8.196%203.622-11.932%208.477-13.173%2012.958-28.851%2012.958-45.34v-4.313h37.13v4.312c0%2016.489%204.48%2032.167%2012.957%2045.339%202.403%203.737%203.622%207.752%203.622%2011.933%200%203.062-.677%206.062-1.966%208.895z%22%20fill=%22#00f%22/%3E%3Cpath%20d=%22M46.4%20119.636c-8.29%200-15.037%206.746-15.037%2015.038v7.617c0%208.291%206.746%2015.037%2015.038%2015.037s15.038-6.746%2015.038-15.037v-7.617c0-8.292-6.747-15.038-15.038-15.038zm3.78%2022.655a3.784%203.784%200%200%201-3.78%203.78%203.784%203.784%200%200%201-3.779-3.78v-7.617a3.784%203.784%200%200%201%203.78-3.78%203.784%203.784%200%200%201%203.78%203.78zM28.48%20191.362h18.818a5.63%205.63%200%200%200%200-11.258H28.48a5.63%205.63%200%200%200%200%2011.258zM64.325%20193.579h-18.82a5.63%205.63%200%200%200%200%2011.258h18.82a5.63%205.63%200%200%200%200-11.258zM28.48%20218.311h18.818a5.63%205.63%200%200%200%200-11.258H28.48a5.63%205.63%200%200%200%200%2011.258zM64.325%20220.529h-18.82a5.63%205.63%200%200%200%200%2011.258h18.82a5.63%205.63%200%200%200%200-11.258zM52.927%20239.633a5.63%205.63%200%200%200-5.629-5.629H28.48a5.63%205.63%200%200%200%200%2011.258H47.3a5.63%205.63%200%200%200%205.628-5.629zM64.325%20247.48h-18.82a5.63%205.63%200%200%200%200%2011.257h18.82a5.63%205.63%200%200%200%200-11.258zM52.927%20266.413a5.63%205.63%200%200%200-5.629-5.629H28.48a5.63%205.63%200%200%200%200%2011.258H47.3a5.63%205.63%200%200%200%205.628-5.629zM64.325%20274.26h-18.82a5.63%205.63%200%200%200%200%2011.258h18.82a5.63%205.63%200%200%200%200-11.258zM52.927%20293.27a5.63%205.63%200%200%200-5.629-5.63H28.48a5.63%205.63%200%200%200%200%2011.258H47.3a5.63%205.63%200%200%200%205.628-5.629zM64.325%20301.115h-18.82a5.63%205.63%200%200%200%200%2011.258h18.82a5.63%205.63%200%200%200%200-11.258z%22%20fill=%22#00f%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "e903ef36-4c4c-454c-96a8-1ec29f586779",
              "type": "basic.output",
              "data": {
                "name": "y",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 816,
                "y": 120
              }
            },
            {
              "id": "cde06839-6989-4ec8-952e-1ed376589a56",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 184,
                "y": 160
              }
            },
            {
              "id": "0665fc89-33f6-486e-b881-aa40b95e41e5",
              "type": "basic.output",
              "data": {
                "name": "zero"
              },
              "position": {
                "x": 816,
                "y": 208
              }
            },
            {
              "id": "3f02a995-3a83-44a4-8956-b2640956baac",
              "type": "basic.code",
              "data": {
                "code": "//-- Codificador de 4 a 1\n\n//-- Señalizar que todos son ceros\nassign zero = (i==4'b00);\n\n\nassign y = (i[3] == 1) ? 2'h3 :\n           (i[2] == 1) ? 2'h2 :\n           (i[1] == 1) ? 2'h1 : 0;\n          \n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ],
                  "out": [
                    {
                      "name": "y",
                      "range": "[1:0]",
                      "size": 2
                    },
                    {
                      "name": "zero"
                    }
                  ]
                }
              },
              "position": {
                "x": 376,
                "y": 104
              },
              "size": {
                "width": 360,
                "height": 176
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "3f02a995-3a83-44a4-8956-b2640956baac",
                "port": "y"
              },
              "target": {
                "block": "e903ef36-4c4c-454c-96a8-1ec29f586779",
                "port": "in"
              },
              "size": 2
            },
            {
              "source": {
                "block": "3f02a995-3a83-44a4-8956-b2640956baac",
                "port": "zero"
              },
              "target": {
                "block": "0665fc89-33f6-486e-b881-aa40b95e41e5",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "cde06839-6989-4ec8-952e-1ed376589a56",
                "port": "out"
              },
              "target": {
                "block": "3f02a995-3a83-44a4-8956-b2640956baac",
                "port": "i"
              },
              "size": 4
            }
          ]
        }
      }
    },
    "d8f675ff9a2f29c09950daa1defc47d859fffaa5": {
      "package": {
        "name": "Agregador-bus",
        "version": "0.1",
        "description": "Agregador de 4 cables en un bus de 4-bits",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22354.768%22%20height=%22241.058%22%20viewBox=%220%200%20332.59497%20225.99201%22%3E%3Cpath%20d=%22M164.218%2077.643L103.07%2016.705C92.386%206.25%2078.036.461%2063.11.5H.5v26.186l61.698.046c8.012-.043%2015.705%203.133%2021.47%208.81l61.448%2061.315a57.292%2057.292%200%200%200%2039.993%2016.139%2057.292%2057.292%200%200%200-39.993%2016.14L83.668%20190.45c-5.765%205.677-13.458%208.853-21.47%208.81L.5%20199.306v26.186h62.612c14.924.039%2029.463-5.9%2040.204-16.28l60.902-60.863a29.857%2029.857%200%200%201%2021.347-8.81l146.53-.113V86.457H185.571a29.884%2029.884%200%200%201-21.353-8.814z%22%20fill=%22green%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "9db42483-957c-4490-84d2-5df273d2abd2",
              "type": "basic.input",
              "data": {
                "name": "i3",
                "clock": false
              },
              "position": {
                "x": 112,
                "y": 96
              }
            },
            {
              "id": "712988b7-bdf4-41dc-81a7-cba4a43706be",
              "type": "basic.input",
              "data": {
                "name": "i2",
                "clock": false
              },
              "position": {
                "x": 112,
                "y": 160
              }
            },
            {
              "id": "ae49c383-3bcd-4606-a0d5-8601bf128f9e",
              "type": "basic.output",
              "data": {
                "name": "o",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 664,
                "y": 176
              }
            },
            {
              "id": "969e11ca-69e8-403b-a566-7bf2fbe3a5a8",
              "type": "basic.input",
              "data": {
                "name": "i1",
                "clock": false
              },
              "position": {
                "x": 112,
                "y": 216
              }
            },
            {
              "id": "e4111201-8441-4e7d-bcd2-bcf9d265d043",
              "type": "basic.input",
              "data": {
                "name": "i0",
                "clock": false
              },
              "position": {
                "x": 112,
                "y": 280
              }
            },
            {
              "id": "16e78204-213e-4833-9096-89d735307ec2",
              "type": "basic.code",
              "data": {
                "code": "assign o = {i3,i2, i1, i0};\n",
                "params": [],
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
                      "name": "o",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 296,
                "y": 152
              },
              "size": {
                "width": 280,
                "height": 112
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "969e11ca-69e8-403b-a566-7bf2fbe3a5a8",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i1"
              }
            },
            {
              "source": {
                "block": "e4111201-8441-4e7d-bcd2-bcf9d265d043",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i0"
              }
            },
            {
              "source": {
                "block": "712988b7-bdf4-41dc-81a7-cba4a43706be",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i2"
              }
            },
            {
              "source": {
                "block": "9db42483-957c-4490-84d2-5df273d2abd2",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i3"
              }
            },
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o"
              },
              "target": {
                "block": "ae49c383-3bcd-4606-a0d5-8601bf128f9e",
                "port": "in"
              },
              "size": 4
            }
          ]
        }
      }
    },
    "91b7acd84ad2664da4f1a90fec4e8967c2413410": {
      "package": {
        "name": "Agregador-bus",
        "version": "0.1",
        "description": "Agregador de buses de 2-bits a bus de 4-bits",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22354.768%22%20height=%22241.058%22%20viewBox=%220%200%20332.59497%20225.99201%22%3E%3Cpath%20d=%22M164.218%2077.643L103.07%2016.705C92.386%206.25%2078.036.461%2063.11.5H.5v26.186l61.698.046c8.012-.043%2015.705%203.133%2021.47%208.81l61.448%2061.315a57.292%2057.292%200%200%200%2039.993%2016.139%2057.292%2057.292%200%200%200-39.993%2016.14L83.668%20190.45c-5.765%205.677-13.458%208.853-21.47%208.81L.5%20199.306v26.186h62.612c14.924.039%2029.463-5.9%2040.204-16.28l60.902-60.863a29.857%2029.857%200%200%201%2021.347-8.81l146.53-.113V86.457H185.571a29.884%2029.884%200%200%201-21.353-8.814z%22%20fill=%22green%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "bd55ef58-9102-48a0-b3ae-c88a07b1b47f",
              "type": "basic.input",
              "data": {
                "name": "i1",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": 112,
                "y": 144
              }
            },
            {
              "id": "6e528d6b-48f5-4eb6-b0dc-1c93e001626e",
              "type": "basic.output",
              "data": {
                "name": "o",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 584,
                "y": 200
              }
            },
            {
              "id": "4aec3583-772e-4dca-ab2f-32e12598ab9f",
              "type": "basic.input",
              "data": {
                "name": "i0",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": 112,
                "y": 272
              }
            },
            {
              "id": "16e78204-213e-4833-9096-89d735307ec2",
              "type": "basic.code",
              "data": {
                "code": "assign o = {i1, i0};\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i1",
                      "range": "[1:0]",
                      "size": 2
                    },
                    {
                      "name": "i0",
                      "range": "[1:0]",
                      "size": 2
                    }
                  ],
                  "out": [
                    {
                      "name": "o",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 296,
                "y": 176
              },
              "size": {
                "width": 224,
                "height": 112
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "4aec3583-772e-4dca-ab2f-32e12598ab9f",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i0"
              },
              "vertices": [
                {
                  "x": 256,
                  "y": 272
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "bd55ef58-9102-48a0-b3ae-c88a07b1b47f",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i1"
              },
              "size": 2
            },
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o"
              },
              "target": {
                "block": "6e528d6b-48f5-4eb6-b0dc-1c93e001626e",
                "port": "in"
              },
              "size": 4
            }
          ]
        }
      }
    },
    "fb5b4e8223863dab93c048e28602f045538c0cea": {
      "package": {
        "name": "mi-tabla4-4",
        "version": "0.1",
        "description": "Circuito combinacional de 4 entradas y 4 salidas",
        "author": "IceFactory 0.1",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22184.803%22%20height=%22197.944%22%20viewBox=%220%200%20173.25325%20185.57257%22%3E%3Cg%20transform=%22translate(-181.933%20-240.254)%22%20stroke=%22#000%22%3E%3Crect%20width=%22170.253%22%20height=%22182.573%22%20x=%22183.433%22%20y=%22241.754%22%20ry=%2219.969%22%20fill=%22#3e8db8%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22274.019%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22274.413%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22274.413%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22381.832%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22382.225%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22382.225%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25;text-align:center%22%20x=%22267.708%22%20y=%22368.911%22%20font-weight=%22400%22%20font-size=%2212.5%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#ff0%22%20stroke-width=%223%22%3E%3Ctspan%20x=%22267.708%22%20y=%22368.911%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20font-size=%2270%22%3EHEX%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "186c4116-7846-4c8e-98a0-7376675105f1",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -8,
                "y": 424
              }
            },
            {
              "id": "f9c58d8f-75fc-4483-b0d2-d584a555b1c5",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 632,
                "y": 424
              }
            },
            {
              "id": "c71c44ac-0500-4eb5-9c1c-4ea21cd78377",
              "type": "basic.memory",
              "data": {
                "name": "",
                "list": "0\n0\n0\n0",
                "local": false
              },
              "position": {
                "x": 328,
                "y": 96
              },
              "size": {
                "width": 96,
                "height": 104
              }
            },
            {
              "id": "48c38eba-4e12-44d9-a55b-a93def6a27db",
              "type": "basic.code",
              "data": {
                "code": "\n//-- Bits del bus de entrada\nlocalparam N = 4;\n\n//-- Bits del bus de salida\nlocalparam M = 4;\n\n//-- Calcular tamaño de la tabla\n//-- (filas) segun los bits de entrada\nlocalparam TAM = 2 ** N;\n\n//-- Definición de la tabla\n//-- Tabla de TAM elementos de M bits\nreg [M-1:0] tabla[0:TAM-1];\n\n//-- Read the table\nassign q = tabla[i];\n\n//-- Init table from DATA parameters\ninitial begin\n  if (DATA) $readmemh(DATA, tabla);\nend",
                "params": [
                  {
                    "name": "DATA"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "i",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ],
                  "out": [
                    {
                      "name": "q",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 176,
                "y": 264
              },
              "size": {
                "width": 392,
                "height": 384
              }
            }
          ],
          "wires": [
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
                "block": "186c4116-7846-4c8e-98a0-7376675105f1",
                "port": "out"
              },
              "target": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "i"
              },
              "size": 4
            },
            {
              "source": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "q"
              },
              "target": {
                "block": "f9c58d8f-75fc-4483-b0d2-d584a555b1c5",
                "port": "in"
              },
              "size": 4
            }
          ]
        }
      }
    },
    "45c913b200b953494d0a42f6a186ea527ac11d5b": {
      "package": {
        "name": "Separador-bus",
        "version": "0.1",
        "description": "Separador de bus de 4-bits en 4 cables",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22354.768%22%20height=%22241.058%22%20viewBox=%220%200%20332.59497%20225.99201%22%3E%3Cpath%20d=%22M168.377%2077.643l61.147-60.938C240.21%206.25%20254.56.461%20269.484.5h62.611v26.186l-61.698.046c-8.012-.043-15.705%203.133-21.47%208.81L187.48%2096.857a57.292%2057.292%200%200%201-39.993%2016.139%2057.292%2057.292%200%200%201%2039.993%2016.14l61.448%2061.314c5.765%205.677%2013.458%208.853%2021.47%208.81l61.698.046v26.186h-62.612c-14.924.039-29.463-5.9-40.204-16.28l-60.902-60.863a29.857%2029.857%200%200%200-21.347-8.81L.5%20139.427V86.457h146.524a29.884%2029.884%200%200%200%2021.353-8.814z%22%20fill=%22green%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "fc93f7da-b784-422c-9baa-ecab73eef82c",
              "type": "basic.output",
              "data": {
                "name": "o3"
              },
              "position": {
                "x": 584,
                "y": 88
              }
            },
            {
              "id": "08c61ec5-2f8c-477a-a659-55b2197436c3",
              "type": "basic.output",
              "data": {
                "name": "o2"
              },
              "position": {
                "x": 584,
                "y": 152
              }
            },
            {
              "id": "3924e842-5646-4d03-bfa7-e141cf32635f",
              "type": "basic.input",
              "data": {
                "name": "i",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 120,
                "y": 200
              }
            },
            {
              "id": "d912538b-1b79-4d87-9a1b-2a960500bad1",
              "type": "basic.output",
              "data": {
                "name": "o1"
              },
              "position": {
                "x": 584,
                "y": 216
              }
            },
            {
              "id": "a340150e-2b8c-4e1e-a501-79ac40f5cd48",
              "type": "basic.output",
              "data": {
                "name": "o0"
              },
              "position": {
                "x": 584,
                "y": 280
              }
            },
            {
              "id": "16e78204-213e-4833-9096-89d735307ec2",
              "type": "basic.code",
              "data": {
                "code": "assign o3 = i[3];\nassign o2 = i[2];\nassign o1 = i[1];\nassign o0 = i[0];",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ],
                  "out": [
                    {
                      "name": "o3"
                    },
                    {
                      "name": "o2"
                    },
                    {
                      "name": "o1"
                    },
                    {
                      "name": "o0"
                    }
                  ]
                }
              },
              "position": {
                "x": 296,
                "y": 176
              },
              "size": {
                "width": 208,
                "height": 112
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "3924e842-5646-4d03-bfa7-e141cf32635f",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i"
              },
              "size": 4
            },
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o1"
              },
              "target": {
                "block": "d912538b-1b79-4d87-9a1b-2a960500bad1",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o0"
              },
              "target": {
                "block": "a340150e-2b8c-4e1e-a501-79ac40f5cd48",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o2"
              },
              "target": {
                "block": "08c61ec5-2f8c-477a-a659-55b2197436c3",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o3"
              },
              "target": {
                "block": "fc93f7da-b784-422c-9baa-ecab73eef82c",
                "port": "in"
              },
              "vertices": [
                {
                  "x": 552,
                  "y": 144
                }
              ]
            }
          ]
        }
      }
    },
    "1c7dae7144d376f2ee4896fcc502a29110e2db37": {
      "package": {
        "name": "Biestable-D",
        "version": "0.1",
        "description": "Biestable de datos (Tipo D). Cuando se recibe un tic por load se captura el dato",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22156.57%22%20height=%22216.83%22%20viewBox=%220%200%2041.425941%2057.369679%22%3E%3Cg%20stroke=%22#000%22%20stroke-width=%221.442%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%3E%3Cpath%20d=%22M25.682%2040.152L39.29%2056.824%2032.372%2036.29%22%20fill=%22#ccc%22%20stroke-width=%221.0924880399999999%22/%3E%3Cpath%20d=%22M18.298%2032.088L9.066%2012.475l-6.45%203.724-2.07-3.583L21.451.546%2023.52%204.13l-6.092%203.517%2012.03%2018.223s5.399-2.025%208.535.74c3.137%202.766%202.52%204.92%202.887%204.772L17.192%2045.02s-2.848-3.695-2.16-6.795c.688-3.1%203.266-6.137%203.266-6.137z%22%20fill=%22red%22%20stroke-width=%221.0924880399999999%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "3943e194-090b-4553-9df3-88bc4b17abc2",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 192,
                "y": 136
              }
            },
            {
              "id": "aa84d31e-cd92-44c7-bb38-c7a4cd903a78",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 680,
                "y": 184
              }
            },
            {
              "id": "bf2f0c53-2d04-4cba-aa70-2df85502d24f",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 192,
                "y": 232
              }
            },
            {
              "id": "65194b18-5d2a-41b2-bd86-01be99978ad6",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 456,
                "y": 64
              }
            },
            {
              "id": "bdc170f0-4468-4137-bd79-4624c9cadf2b",
              "type": "basic.code",
              "data": {
                "code": "reg q = INI;\nalways @(posedge clk)\n  q <= d;",
                "params": [
                  {
                    "name": "INI"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "d"
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
                "x": 384,
                "y": 168
              },
              "size": {
                "width": 232,
                "height": 88
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "3943e194-090b-4553-9df3-88bc4b17abc2",
                "port": "out"
              },
              "target": {
                "block": "bdc170f0-4468-4137-bd79-4624c9cadf2b",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "bdc170f0-4468-4137-bd79-4624c9cadf2b",
                "port": "q"
              },
              "target": {
                "block": "aa84d31e-cd92-44c7-bb38-c7a4cd903a78",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "65194b18-5d2a-41b2-bd86-01be99978ad6",
                "port": "constant-out"
              },
              "target": {
                "block": "bdc170f0-4468-4137-bd79-4624c9cadf2b",
                "port": "INI"
              }
            },
            {
              "source": {
                "block": "bf2f0c53-2d04-4cba-aa70-2df85502d24f",
                "port": "out"
              },
              "target": {
                "block": "bdc170f0-4468-4137-bd79-4624c9cadf2b",
                "port": "d"
              }
            }
          ]
        }
      }
    }
  }
}