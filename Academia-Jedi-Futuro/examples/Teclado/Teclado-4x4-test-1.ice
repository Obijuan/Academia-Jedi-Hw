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
          "id": "577e6335-6d9f-42be-9ffc-518bfa05fabb",
          "type": "basic.output",
          "data": {
            "name": "Fila",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "D3",
                "value": "116"
              },
              {
                "index": "2",
                "name": "D2",
                "value": "117"
              },
              {
                "index": "1",
                "name": "D1",
                "value": "118"
              },
              {
                "index": "0",
                "name": "D0",
                "value": "119"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 464,
            "y": 40
          }
        },
        {
          "id": "065412dc-9f88-4c01-b23d-12146a756106",
          "type": "basic.output",
          "data": {
            "name": "SEG",
            "range": "[6:0]",
            "pins": [
              {
                "index": "6",
                "name": "GP6",
                "value": "49"
              },
              {
                "index": "5",
                "name": "GP5",
                "value": "43"
              },
              {
                "index": "4",
                "name": "GP4",
                "value": "42"
              },
              {
                "index": "3",
                "name": "GP3",
                "value": "41"
              },
              {
                "index": "2",
                "name": "GP2",
                "value": "39"
              },
              {
                "index": "1",
                "name": "GP1",
                "value": "38"
              },
              {
                "index": "0",
                "name": "GP0",
                "value": "37"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 936,
            "y": 168
          }
        },
        {
          "id": "89623191-d04d-4fdb-969e-f66cff3e5f62",
          "type": "basic.input",
          "data": {
            "name": "Columna",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "DD3",
                "value": "81"
              },
              {
                "index": "2",
                "name": "DD2",
                "value": "80"
              },
              {
                "index": "1",
                "name": "DD1",
                "value": "79"
              },
              {
                "index": "0",
                "name": "DD0",
                "value": "78"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 104,
            "y": 240
          }
        },
        {
          "id": "1def64a7-b0bf-45ac-9202-dc92a950a82d",
          "type": "7b4337a92f7f91647ae69eb13d0d79ec07b1c53c",
          "position": {
            "x": 752,
            "y": 264
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "d6531b15-0fcc-46f9-9924-912ba7afc55f",
          "type": "fa0a5e4acef8e9c148dc4c7d7e8f918f565477cd",
          "position": {
            "x": 576,
            "y": 248
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "5ac9878c-7006-460e-9fb7-ad75879cc2cb",
          "type": "basic.info",
          "data": {
            "info": "Pines de conexión de  \nlas 4 filas del teclado",
            "readonly": true
          },
          "position": {
            "x": 448,
            "y": -24
          },
          "size": {
            "width": 248,
            "height": 56
          }
        },
        {
          "id": "7d4fae6d-e55b-4359-9a82-cfa711384047",
          "type": "basic.info",
          "data": {
            "info": "**Pines de conexión** de las  \ncolumnas del teclado",
            "readonly": true
          },
          "position": {
            "x": 96,
            "y": 184
          },
          "size": {
            "width": 264,
            "height": 48
          }
        },
        {
          "id": "2e0208d2-06ee-427f-b2e8-2a688b0923a8",
          "type": "basic.info",
          "data": {
            "info": "Evento:  \ntecla pulsada",
            "readonly": true
          },
          "position": {
            "x": 376,
            "y": 336
          },
          "size": {
            "width": 128,
            "height": 56
          }
        },
        {
          "id": "dcbed8f0-e0c9-4d03-8859-6904d45c134e",
          "type": "basic.info",
          "data": {
            "info": "Código  \ntecla",
            "readonly": true
          },
          "position": {
            "x": 472,
            "y": 248
          },
          "size": {
            "width": 80,
            "height": 56
          }
        },
        {
          "id": "e993487a-0a44-46fd-b21f-a37e2da99b9f",
          "type": "basic.info",
          "data": {
            "info": "**Registro 4-bits**",
            "readonly": true
          },
          "position": {
            "x": 576,
            "y": 208
          },
          "size": {
            "width": 160,
            "height": 40
          }
        },
        {
          "id": "b547afd1-2b4d-4f8e-b262-8f5ae31ec6bb",
          "type": "basic.info",
          "data": {
            "info": "Almacenar código  \nde la tecla",
            "readonly": true
          },
          "position": {
            "x": 568,
            "y": 352
          },
          "size": {
            "width": 144,
            "height": 56
          }
        },
        {
          "id": "1c3f9707-d128-4952-8000-a1316556c535",
          "type": "basic.info",
          "data": {
            "info": "**Display 7-seg**",
            "readonly": true
          },
          "position": {
            "x": 752,
            "y": 224
          },
          "size": {
            "width": 160,
            "height": 40
          }
        },
        {
          "id": "6d8f9d9c-4b89-44e7-9d04-7ced30bf385f",
          "type": "basic.info",
          "data": {
            "info": "Mostrar la tecla pulsada  \nen el display 7-seg",
            "readonly": true
          },
          "position": {
            "x": 728,
            "y": 336
          },
          "size": {
            "width": 216,
            "height": 56
          }
        },
        {
          "id": "676324d7-0674-457f-9004-00108da396ed",
          "type": "a31c92ca890cc130a84aa6a9cf263ea125446fe1",
          "position": {
            "x": 280,
            "y": 248
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
            "block": "1def64a7-b0bf-45ac-9202-dc92a950a82d",
            "port": "41c13e73-0b44-430e-94c9-a32415133ae4"
          },
          "target": {
            "block": "065412dc-9f88-4c01-b23d-12146a756106",
            "port": "in"
          },
          "size": 7
        },
        {
          "source": {
            "block": "d6531b15-0fcc-46f9-9924-912ba7afc55f",
            "port": "f655c5c0-0157-4195-89ac-f92c5b3f8e0b"
          },
          "target": {
            "block": "1def64a7-b0bf-45ac-9202-dc92a950a82d",
            "port": "ad153a4b-fef0-423f-a84d-61a59c3283e5"
          },
          "size": 4
        },
        {
          "source": {
            "block": "89623191-d04d-4fdb-969e-f66cff3e5f62",
            "port": "out"
          },
          "target": {
            "block": "676324d7-0674-457f-9004-00108da396ed",
            "port": "89623191-d04d-4fdb-969e-f66cff3e5f62"
          },
          "size": 4
        },
        {
          "source": {
            "block": "676324d7-0674-457f-9004-00108da396ed",
            "port": "577e6335-6d9f-42be-9ffc-518bfa05fabb"
          },
          "target": {
            "block": "577e6335-6d9f-42be-9ffc-518bfa05fabb",
            "port": "in"
          },
          "size": 4
        },
        {
          "source": {
            "block": "676324d7-0674-457f-9004-00108da396ed",
            "port": "01efd02a-75d8-4a36-b3fc-21c61151e9e3"
          },
          "target": {
            "block": "d6531b15-0fcc-46f9-9924-912ba7afc55f",
            "port": "ee31ca02-b981-4474-a62e-85f20302435c"
          },
          "size": 4
        },
        {
          "source": {
            "block": "676324d7-0674-457f-9004-00108da396ed",
            "port": "6a4e4c60-779b-4c15-a0bf-58526c971503"
          },
          "target": {
            "block": "d6531b15-0fcc-46f9-9924-912ba7afc55f",
            "port": "065ea371-8398-43b3-8341-287c234a3acb"
          }
        }
      ]
    }
  },
  "dependencies": {
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
    "a31c92ca890cc130a84aa6a9cf263ea125446fe1": {
      "package": {
        "name": "Teclado-4x4",
        "version": "0.1",
        "description": "Controlador de teclado de 4x4 teclas. Devuelve el código de la tecla y un tic indicando cuándo hay tecla pulsada",
        "author": "Juan González-Gómez",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22241.38%22%20height=%22250.269%22%20viewBox=%220%200%2063.865258%2066.216949%22%3E%3Crect%20width=%2260.316%22%20height=%2266.217%22%20x=%2280.214%22%20y=%2294.204%22%20ry=%224.501%22%20fill=%22#213047%22%20transform=%22translate(-80.214%20-94.204)%22/%3E%3Cg%20transform=%22translate(-80.214%20-94.204)%22%3E%3Crect%20width=%2256.003%22%20height=%2260.5%22%20x=%2282.544%22%20y=%2297.003%22%20ry=%223.731%22%20fill=%22#fff%22/%3E%3Crect%20width=%2254.024%22%20height=%2258.608%22%20x=%2283.506%22%20y=%2297.863%22%20ry=%223.019%22%20fill=%22#213047%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%208.963%2010.828)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22-24.039%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22-14.967%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#369de0%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%2021.483%2010.828)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22-24.039%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22-14.967%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#369de0%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%2033.629%2010.828)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22-24.039%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22-14.967%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#369de0%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%208.963%2010.828)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22357.808%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22366.879%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#b44c65%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%208.963%2023.038)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22-24.039%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22-14.967%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#369de0%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%2021.483%2023.038)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22-24.039%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22-14.967%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#369de0%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%2033.629%2023.038)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22-24.039%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22-14.967%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#369de0%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%208.963%2023.038)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22357.808%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22366.879%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#b44c65%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%208.963%2035.144)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22-24.039%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22-14.967%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#369de0%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%2021.483%2035.144)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22-24.039%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22-14.967%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#369de0%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%2033.629%2035.144)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22-24.039%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22-14.967%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#369de0%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%208.963%2035.144)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22357.808%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22366.879%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#b44c65%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%2021.483%2047.457)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22-24.039%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22-14.967%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#369de0%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%20-28.495%2047.56)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22357.808%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22366.879%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#b44c65%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%20-3.04%2047.56)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22357.808%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22366.879%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#b44c65%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.09679%200%200%20.09679%209.377%2047.56)%22%3E%3Crect%20ry=%2214.826%22%20y=%22-14.934%22%20x=%22357.808%22%20height=%22105.208%22%20width=%22108.356%22%20fill=%22#acd3f2%22/%3E%3Crect%20ry=%224.544%22%20y=%22-6.618%22%20x=%22366.879%22%20height=%2288.199%22%20width=%2289.268%22%20fill=%22#b44c65%22/%3E%3C/g%3E%3Cg%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%2292.254%22%20y=%22110.986%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%2292.254%22%20y=%22110.986%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E1%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22104.878%22%20y=%22111.193%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22104.878%22%20y=%22111.193%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E2%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22117.295%22%20y=%22111.193%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22117.295%22%20y=%22111.193%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E3%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22129.35%22%20y=%22111.297%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22129.35%22%20y=%22111.297%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3EA%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%2292.254%22%20y=%22122.886%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%2292.254%22%20y=%22122.886%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E4%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22104.878%22%20y=%22123.093%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22104.878%22%20y=%22123.093%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E5%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22117.295%22%20y=%22123.093%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22117.295%22%20y=%22123.093%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E6%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22129.35%22%20y=%22123.196%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22129.35%22%20y=%22123.196%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3EB%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%2292.254%22%20y=%22135.178%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%2292.254%22%20y=%22135.178%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E7%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22104.878%22%20y=%22135.385%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22104.878%22%20y=%22135.385%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E8%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22117.295%22%20y=%22135.385%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22117.295%22%20y=%22135.385%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E9%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22129.35%22%20y=%22135.488%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22129.35%22%20y=%22135.488%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3EC%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%2236.52%22%20y=%22172.679%22%20transform=%22rotate(-19.926%20-308.246%20181.215)%22%20font-weight=%22400%22%20font-size=%229.435%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.59%22%3E%3Ctspan%20x=%2236.52%22%20y=%22172.679%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E*%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22104.732%22%20y=%22147.896%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22104.732%22%20y=%22147.896%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E0%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22117.295%22%20y=%22147.896%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22117.295%22%20y=%22147.896%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3E#%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Ubuntu;text-align:center%22%20x=%22129.569%22%20y=%22147.78%22%20font-weight=%22400%22%20font-size=%227.008%22%20font-family=%22Ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fff%22%20stroke-width=%22.438%22%20transform=%22translate(-80.214%20-94.204)%22%3E%3Ctspan%20x=%22129.569%22%20y=%22147.78%22%20style=%22-inkscape-font-specification:'Ubuntu%20Medium'%22%20font-weight=%22500%22%3ED%3C/tspan%3E%3C/text%3E%3Cg%20transform=%22matrix(.46866%200%200%20.46866%209.752%2023.088)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20cx=%22100.602%22%20cy=%2273.815%22%20r=%2214.559%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "54e1f316-22c0-4c39-bab8-25669c12d3f4",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -224,
                "y": 32
              }
            },
            {
              "id": "577e6335-6d9f-42be-9ffc-518bfa05fabb",
              "type": "basic.output",
              "data": {
                "name": "Fila",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 888,
                "y": 240
              }
            },
            {
              "id": "01efd02a-75d8-4a36-b3fc-21c61151e9e3",
              "type": "basic.output",
              "data": {
                "name": "key",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 1576,
                "y": 432
              }
            },
            {
              "id": "89623191-d04d-4fdb-969e-f66cff3e5f62",
              "type": "basic.input",
              "data": {
                "name": "Col",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -248,
                "y": 592
              }
            },
            {
              "id": "6a4e4c60-779b-4c15-a0bf-58526c971503",
              "type": "basic.output",
              "data": {
                "name": "clicked"
              },
              "position": {
                "x": 1576,
                "y": 592
              }
            },
            {
              "id": "361c4249-73a3-4d5d-94a1-f69cc26996cb",
              "type": "basic.constant",
              "data": {
                "name": "ms",
                "value": "10",
                "local": true
              },
              "position": {
                "x": 32,
                "y": 200
              }
            },
            {
              "id": "88dd9c9a-4d90-45fc-99b8-d2dc9586a271",
              "type": "basic.memory",
              "data": {
                "name": "Codigo-teclas",
                "list": "1\n2\n3\nA\n4\n5\n6\nB\n7\n8\n9\nC\nF\n0\nE\nD",
                "local": true,
                "format": 16
              },
              "position": {
                "x": 1088,
                "y": 120
              },
              "size": {
                "width": 136,
                "height": 280
              }
            },
            {
              "id": "66f41b23-94f9-4a31-9bbd-1c6582421267",
              "type": "basic.constant",
              "data": {
                "name": "Antirrebotes",
                "value": "20",
                "local": true
              },
              "position": {
                "x": 1224,
                "y": 664
              }
            },
            {
              "id": "1c46ed83-48be-4576-945b-43a0ec76bcbc",
              "type": "35f267d0df6ffcb7fc33753bc9df9cf083642cca",
              "position": {
                "x": 616,
                "y": 608
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "5cc8758d-5c6d-4700-a423-5964f14be7f9",
              "type": "8e2728307baccbf26c01cdb87bcfba8ca64a435c",
              "position": {
                "x": 1024,
                "y": 608
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "6b42e49f-0a35-4cd0-851f-f98cdd821e2a",
              "type": "e79148d23652be6d5149f8f6881f7f47bd958497",
              "position": {
                "x": 344,
                "y": 248
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "014dd7c8-3ffb-4b33-9592-87b9d0b064f3",
              "type": "519d315d08b3a8cc1aac53c9d14d2fd81d67033f",
              "position": {
                "x": 32,
                "y": 296
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "f27811f0-4cb0-424c-9df6-0eda7892709b",
              "type": "91b7acd84ad2664da4f1a90fec4e8967c2413410",
              "position": {
                "x": 664,
                "y": 432
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "570c7340-cbae-40c6-85d2-f233858b16a0",
              "type": "b2090f68ef94fd3c5c0eaea93eb6ba7e80aff0b6",
              "position": {
                "x": 848,
                "y": 624
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "84a44a8e-65a7-4a10-80c8-17d5c0c014ec",
              "type": "f91a2729e24bdc5bb7370785202c65c6526d7a01",
              "position": {
                "x": 1224,
                "y": 768
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "2d9c6d14-09fe-4e17-833b-a009cd300d87",
              "type": "35f267d0df6ffcb7fc33753bc9df9cf083642cca",
              "position": {
                "x": 1360,
                "y": 744
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "2aa69779-8ed3-4c8b-93a6-e632b9652f38",
              "type": "1c7dae7144d376f2ee4896fcc502a29110e2db37",
              "position": {
                "x": 1376,
                "y": 592
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "510fa8a1-4428-4ee6-bfca-fd5adbe911d2",
              "type": "fb5b4e8223863dab93c048e28602f045538c0cea",
              "position": {
                "x": 1112,
                "y": 432
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "0ba64b97-5348-4438-a764-e77a56496b79",
              "type": "fa0a5e4acef8e9c148dc4c7d7e8f918f565477cd",
              "position": {
                "x": 1376,
                "y": 416
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "bfcb1c17-f9c1-4556-b21c-4f5fe8258381",
              "type": "1c4cc4f0b58ac69714b52d59d7925dc7e1cba2c5",
              "position": {
                "x": 536,
                "y": 240
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "b14536dc-52a3-4f4a-b982-f529f8744bc4",
              "type": "dc8b1ea7f9abb84200e7fe5e17fe7d51d99637b6",
              "position": {
                "x": 704,
                "y": 240
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "6d85bcea-9029-48f7-97a3-bf5bdaee0224",
              "type": "dc8b1ea7f9abb84200e7fe5e17fe7d51d99637b6",
              "position": {
                "x": 120,
                "y": 592
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "ae51d0ef-0d3e-404a-a0ed-7526faa90c16",
              "type": "710cd3b0fcb6a599515548c36fc243644f707046",
              "position": {
                "x": 328,
                "y": 592
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "ab63218e-5d4a-4b25-a9e4-78a61dc51912",
              "type": "21cfcc19a4ad14c5fb5e8cfebd018ec356fe7542",
              "position": {
                "x": 168,
                "y": 200
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "03c45010-293e-42b0-97b5-645baf864df0",
              "type": "basic.info",
              "data": {
                "info": "**Refresco del teclado**  \nIndica cada cuanto tiempo  \nse lee una fila",
                "readonly": true
              },
              "position": {
                "x": 40,
                "y": 120
              },
              "size": {
                "width": 224,
                "height": 72
              }
            },
            {
              "id": "f3c59f61-0f7f-405c-a61d-c9e9d30858a2",
              "type": "basic.info",
              "data": {
                "info": "**Contador de Fila**  \nIndica la fila  \nque se está leyendo",
                "readonly": true
              },
              "position": {
                "x": 352,
                "y": 160
              },
              "size": {
                "width": 176,
                "height": 64
              }
            },
            {
              "id": "61f5b2a0-d439-409e-b54b-905864c72a2a",
              "type": "basic.info",
              "data": {
                "info": "**Decodificador 2 a 4**",
                "readonly": true
              },
              "position": {
                "x": 520,
                "y": 200
              },
              "size": {
                "width": 192,
                "height": 40
              }
            },
            {
              "id": "0cd680f3-d8c8-4e8b-a681-2b7a47d28ee2",
              "type": "basic.info",
              "data": {
                "info": "Sacar un 0 por la fila  \nactual. El resto a 1",
                "readonly": true
              },
              "position": {
                "x": 712,
                "y": 184
              },
              "size": {
                "width": 192,
                "height": 56
              }
            },
            {
              "id": "5ac9878c-7006-460e-9fb7-ad75879cc2cb",
              "type": "basic.info",
              "data": {
                "info": "Pines de conexión de  \nlas 4 filas",
                "readonly": true
              },
              "position": {
                "x": 856,
                "y": 200
              },
              "size": {
                "width": 176,
                "height": 56
              }
            },
            {
              "id": "7d4fae6d-e55b-4359-9a82-cfa711384047",
              "type": "basic.info",
              "data": {
                "info": "**Pines de conexión** de las  \ncolumnas",
                "readonly": true
              },
              "position": {
                "x": -264,
                "y": 544
              },
              "size": {
                "width": 264,
                "height": 48
              }
            },
            {
              "id": "b0120ca7-79b1-48be-846f-169219e7cbd1",
              "type": "basic.info",
              "data": {
                "info": "Convertir las lecturas a  \nlogica positiva  \n0: NO pulsado  \n1: Pulsado",
                "readonly": true
              },
              "position": {
                "x": 112,
                "y": 664
              },
              "size": {
                "width": 248,
                "height": 80
              }
            },
            {
              "id": "c8185f8c-f06c-45c6-9274-b127f61c9bb5",
              "type": "basic.info",
              "data": {
                "info": "**Codificador 4-2**",
                "readonly": true
              },
              "position": {
                "x": 320,
                "y": 552
              },
              "size": {
                "width": 176,
                "height": 40
              }
            },
            {
              "id": "43690cdd-7727-494f-a252-7a41ae73bfd2",
              "type": "basic.info",
              "data": {
                "info": "Columna de la  \ntecla pulsada",
                "readonly": true
              },
              "position": {
                "x": 480,
                "y": 552
              },
              "size": {
                "width": 136,
                "height": 56
              }
            },
            {
              "id": "a6b1cadd-a7a5-4e1b-86dc-0da9fab664e3",
              "type": "basic.info",
              "data": {
                "info": "Fila de la  \ntecla pulsada",
                "readonly": true
              },
              "position": {
                "x": 520,
                "y": 392
              },
              "size": {
                "width": 136,
                "height": 56
              }
            },
            {
              "id": "3ccf7f13-2c25-4a6a-9f05-039bf8736fca",
              "type": "basic.info",
              "data": {
                "info": "**Código de tecla**  \ncolumna | fila  \n(4 bits)",
                "readonly": true
              },
              "position": {
                "x": 816,
                "y": 384
              },
              "size": {
                "width": 200,
                "height": 72
              }
            },
            {
              "id": "f7b81d82-f8b4-400e-82a2-4895afee82b3",
              "type": "basic.info",
              "data": {
                "info": "**Mapa con el código de teclas original**\n\n| Filas  | Col1 | Col2 | Col3 | Col4 |\n|--------|------|------|------|------|\n| Fila 0 |  0   |  1   |  2   |   3  |\n| Fila 1 |  4   |  5   |  6   |   7  |\n| Fila 2 |  8   |  9   |  10  |  11  |\n| Fila 3 |  12  |  13  |  14  |  15  |",
                "readonly": true
              },
              "position": {
                "x": 312,
                "y": 704
              },
              "size": {
                "width": 336,
                "height": 144
              }
            },
            {
              "id": "2d05624c-30b4-4d4b-bd4a-5cbac87f5d06",
              "type": "basic.info",
              "data": {
                "info": "**Mapa de códigos devueltos por el controlador**\n\nTecla / Código\n\n|                |               |               |             |\n|----------------|---------------|---------------|-------------|\n|  **1** / 0x01  |  **2** / 0x02 |  **3** / 0x03 | **A** / 0xA |\n|  **4** / 0x 4  |  **5** / 0x5  |  **6** / 0x6  | **B** / 0xB |\n|  **7** / 0x7   |  **8** / 0x8  |  **9** / 0x6  | **C** / 0xC |\n|    *   / 0xF   |  **0** / 0x0  |  **#** / 0xE  | **D** / 0xD |\n",
                "readonly": true
              },
              "position": {
                "x": 1368,
                "y": 104
              },
              "size": {
                "width": 512,
                "height": 192
              }
            },
            {
              "id": "fb8d9119-0034-4677-b32b-504a6e851bd1",
              "type": "basic.info",
              "data": {
                "info": "Tabla de conversión de códdigo  \ninterno a código de salida",
                "readonly": true
              },
              "position": {
                "x": 1048,
                "y": 504
              },
              "size": {
                "width": 304,
                "height": 56
              }
            },
            {
              "id": "e1cfb606-0877-4989-9bd3-92006583cfa6",
              "type": "basic.info",
              "data": {
                "info": "**Registro de 4 bits**",
                "readonly": true
              },
              "position": {
                "x": 1376,
                "y": 376
              },
              "size": {
                "width": 200,
                "height": 40
              }
            },
            {
              "id": "8f078388-42ae-4182-945a-f153718ef30a",
              "type": "basic.info",
              "data": {
                "info": "Almacenar la tecla  \npulsada",
                "readonly": true
              },
              "position": {
                "x": 1368,
                "y": 520
              },
              "size": {
                "width": 168,
                "height": 56
              }
            },
            {
              "id": "2d0797d9-4836-4c01-a322-c56721d585c4",
              "type": "basic.info",
              "data": {
                "info": "Evento: Estado teclas columna  \n0: Ninguna pulsada  \n1: Tecla pulsada",
                "readonly": true
              },
              "position": {
                "x": 720,
                "y": 560
              },
              "size": {
                "width": 248,
                "height": 72
              }
            },
            {
              "id": "6b693388-4003-444c-ae4e-53ea4d20f297",
              "type": "basic.info",
              "data": {
                "info": "Tic generado cada vez  \nque hay tecla pulsada",
                "readonly": true
              },
              "position": {
                "x": 1144,
                "y": 592
              },
              "size": {
                "width": 192,
                "height": 56
              }
            },
            {
              "id": "f3349b1d-9a69-4a5b-a3e6-42929851a5af",
              "type": "basic.info",
              "data": {
                "info": "**Antirrebotes:**\n\nDeshabilitar la llega de más eventos  \nunos instantes después de haber detectado  \nla tecla pulsada",
                "readonly": true
              },
              "position": {
                "x": 840,
                "y": 712
              },
              "size": {
                "width": 336,
                "height": 96
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "014dd7c8-3ffb-4b33-9592-87b9d0b064f3",
                "port": "c138a610-b61f-4e7c-bb8a-c4f3b0b9f95c"
              },
              "target": {
                "block": "6b42e49f-0a35-4cd0-851f-f98cdd821e2a",
                "port": "26aba23f-8567-4e9b-bd45-c26724030f33"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "361c4249-73a3-4d5d-94a1-f69cc26996cb",
                "port": "constant-out"
              },
              "target": {
                "block": "014dd7c8-3ffb-4b33-9592-87b9d0b064f3",
                "port": "136e8d6d-892a-4f14-8d6d-0c5bc6c3e844"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "88dd9c9a-4d90-45fc-99b8-d2dc9586a271",
                "port": "memory-out"
              },
              "target": {
                "block": "510fa8a1-4428-4ee6-bfca-fd5adbe911d2",
                "port": "c71c44ac-0500-4eb5-9c1c-4ea21cd78377"
              }
            },
            {
              "source": {
                "block": "570c7340-cbae-40c6-85d2-f233858b16a0",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "5cc8758d-5c6d-4700-a423-5964f14be7f9",
                "port": "b6426b43-dcda-418d-b6d3-4764b5bc0b25"
              }
            },
            {
              "source": {
                "block": "1c46ed83-48be-4576-945b-43a0ec76bcbc",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "570c7340-cbae-40c6-85d2-f233858b16a0",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "5cc8758d-5c6d-4700-a423-5964f14be7f9",
                "port": "1d2e403f-0fa6-41fd-83a9-4f309eadd855"
              },
              "target": {
                "block": "0ba64b97-5348-4438-a764-e77a56496b79",
                "port": "065ea371-8398-43b3-8341-287c234a3acb"
              },
              "vertices": [
                {
                  "x": 1304,
                  "y": 528
                }
              ]
            },
            {
              "source": {
                "block": "84a44a8e-65a7-4a10-80c8-17d5c0c014ec",
                "port": "c45dab76-9d0f-4742-9e4d-3048637d245d"
              },
              "target": {
                "block": "2d9c6d14-09fe-4e17-833b-a009cd300d87",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "2d9c6d14-09fe-4e17-833b-a009cd300d87",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "570c7340-cbae-40c6-85d2-f233858b16a0",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              },
              "vertices": [
                {
                  "x": 1496,
                  "y": 848
                },
                {
                  "x": 808,
                  "y": 752
                }
              ]
            },
            {
              "source": {
                "block": "66f41b23-94f9-4a31-9bbd-1c6582421267",
                "port": "constant-out"
              },
              "target": {
                "block": "84a44a8e-65a7-4a10-80c8-17d5c0c014ec",
                "port": "7ca578e5-8e36-4c04-bbea-144418c8e9af"
              }
            },
            {
              "source": {
                "block": "5cc8758d-5c6d-4700-a423-5964f14be7f9",
                "port": "1d2e403f-0fa6-41fd-83a9-4f309eadd855"
              },
              "target": {
                "block": "2aa69779-8ed3-4c8b-93a6-e632b9652f38",
                "port": "bf2f0c53-2d04-4cba-aa70-2df85502d24f"
              }
            },
            {
              "source": {
                "block": "510fa8a1-4428-4ee6-bfca-fd5adbe911d2",
                "port": "f9c58d8f-75fc-4483-b0d2-d584a555b1c5"
              },
              "target": {
                "block": "0ba64b97-5348-4438-a764-e77a56496b79",
                "port": "ee31ca02-b981-4474-a62e-85f20302435c"
              },
              "size": 4
            },
            {
              "source": {
                "block": "bfcb1c17-f9c1-4556-b21c-4f5fe8258381",
                "port": "3e2dd1bd-94fd-4ea8-a428-e24e30959c4f"
              },
              "target": {
                "block": "b14536dc-52a3-4f4a-b982-f529f8744bc4",
                "port": "c808a6d9-3c9e-4b62-9d80-32b0c772e5ff"
              },
              "size": 4
            },
            {
              "source": {
                "block": "b14536dc-52a3-4f4a-b982-f529f8744bc4",
                "port": "2819d291-3e40-489b-96ba-1e053e2d006a"
              },
              "target": {
                "block": "577e6335-6d9f-42be-9ffc-518bfa05fabb",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "89623191-d04d-4fdb-969e-f66cff3e5f62",
                "port": "out"
              },
              "target": {
                "block": "6d85bcea-9029-48f7-97a3-bf5bdaee0224",
                "port": "c808a6d9-3c9e-4b62-9d80-32b0c772e5ff"
              },
              "size": 4
            },
            {
              "source": {
                "block": "6d85bcea-9029-48f7-97a3-bf5bdaee0224",
                "port": "2819d291-3e40-489b-96ba-1e053e2d006a"
              },
              "target": {
                "block": "ae51d0ef-0d3e-404a-a0ed-7526faa90c16",
                "port": "cde06839-6989-4ec8-952e-1ed376589a56"
              },
              "size": 4
            },
            {
              "source": {
                "block": "ae51d0ef-0d3e-404a-a0ed-7526faa90c16",
                "port": "e903ef36-4c4c-454c-96a8-1ec29f586779"
              },
              "target": {
                "block": "f27811f0-4cb0-424c-9df6-0eda7892709b",
                "port": "4aec3583-772e-4dca-ab2f-32e12598ab9f"
              },
              "vertices": [
                {
                  "x": 592,
                  "y": 528
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "f27811f0-4cb0-424c-9df6-0eda7892709b",
                "port": "6e528d6b-48f5-4eb6-b0dc-1c93e001626e"
              },
              "target": {
                "block": "510fa8a1-4428-4ee6-bfca-fd5adbe911d2",
                "port": "186c4116-7846-4c8e-98a0-7376675105f1"
              },
              "size": 4
            },
            {
              "source": {
                "block": "ae51d0ef-0d3e-404a-a0ed-7526faa90c16",
                "port": "0665fc89-33f6-486e-b881-aa40b95e41e5"
              },
              "target": {
                "block": "1c46ed83-48be-4576-945b-43a0ec76bcbc",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "ab63218e-5d4a-4b25-a9e4-78a61dc51912",
                "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
              },
              "target": {
                "block": "6b42e49f-0a35-4cd0-851f-f98cdd821e2a",
                "port": "743b5299-2d89-4783-b7c9-12a5b36df406"
              },
              "vertices": [
                {
                  "x": 296,
                  "y": 280
                }
              ]
            },
            {
              "source": {
                "block": "54e1f316-22c0-4c39-bab8-25669c12d3f4",
                "port": "out"
              },
              "target": {
                "block": "6b42e49f-0a35-4cd0-851f-f98cdd821e2a",
                "port": "c90da543-4b9c-4f4c-a5fa-7e1166ee1dd3"
              }
            },
            {
              "source": {
                "block": "6b42e49f-0a35-4cd0-851f-f98cdd821e2a",
                "port": "7a982450-c842-4aa2-8e77-43cc628266e0"
              },
              "target": {
                "block": "f27811f0-4cb0-424c-9df6-0eda7892709b",
                "port": "bd55ef58-9102-48a0-b3ae-c88a07b1b47f"
              },
              "vertices": [
                {
                  "x": 488,
                  "y": 344
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "6b42e49f-0a35-4cd0-851f-f98cdd821e2a",
                "port": "7a982450-c842-4aa2-8e77-43cc628266e0"
              },
              "target": {
                "block": "bfcb1c17-f9c1-4556-b21c-4f5fe8258381",
                "port": "10cc3244-31d5-4542-9808-a54f6480183e"
              },
              "size": 2
            },
            {
              "source": {
                "block": "5cc8758d-5c6d-4700-a423-5964f14be7f9",
                "port": "1d2e403f-0fa6-41fd-83a9-4f309eadd855"
              },
              "target": {
                "block": "84a44a8e-65a7-4a10-80c8-17d5c0c014ec",
                "port": "61d11f03-6fbc-4467-a947-d546fa6f6429"
              },
              "vertices": [
                {
                  "x": 1160,
                  "y": 736
                }
              ]
            },
            {
              "source": {
                "block": "0ba64b97-5348-4438-a764-e77a56496b79",
                "port": "f655c5c0-0157-4195-89ac-f92c5b3f8e0b"
              },
              "target": {
                "block": "01efd02a-75d8-4a36-b3fc-21c61151e9e3",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "2aa69779-8ed3-4c8b-93a6-e632b9652f38",
                "port": "aa84d31e-cd92-44c7-bb38-c7a4cd903a78"
              },
              "target": {
                "block": "6a4e4c60-779b-4c15-a0bf-58526c971503",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "54e1f316-22c0-4c39-bab8-25669c12d3f4",
                "port": "out"
              },
              "target": {
                "block": "014dd7c8-3ffb-4b33-9592-87b9d0b064f3",
                "port": "503869f1-ddfd-4d13-93ad-5f90281ba88c"
              }
            },
            {
              "source": {
                "block": "54e1f316-22c0-4c39-bab8-25669c12d3f4",
                "port": "out"
              },
              "target": {
                "block": "5cc8758d-5c6d-4700-a423-5964f14be7f9",
                "port": "4196184b-4a60-493b-bcc6-c95958483683"
              }
            },
            {
              "source": {
                "block": "54e1f316-22c0-4c39-bab8-25669c12d3f4",
                "port": "out"
              },
              "target": {
                "block": "0ba64b97-5348-4438-a764-e77a56496b79",
                "port": "096f61b6-6d5c-4907-9512-e65b25969458"
              },
              "vertices": [
                {
                  "x": 1328,
                  "y": 336
                }
              ]
            },
            {
              "source": {
                "block": "54e1f316-22c0-4c39-bab8-25669c12d3f4",
                "port": "out"
              },
              "target": {
                "block": "2aa69779-8ed3-4c8b-93a6-e632b9652f38",
                "port": "3943e194-090b-4553-9df3-88bc4b17abc2"
              },
              "vertices": [
                {
                  "x": 1328,
                  "y": 352
                }
              ]
            },
            {
              "source": {
                "block": "54e1f316-22c0-4c39-bab8-25669c12d3f4",
                "port": "out"
              },
              "target": {
                "block": "84a44a8e-65a7-4a10-80c8-17d5c0c014ec",
                "port": "7697c4d1-f5f8-4a1d-88af-e367fe54e4b6"
              },
              "vertices": [
                {
                  "x": -64,
                  "y": 936
                },
                {
                  "x": 1184,
                  "y": 928
                }
              ]
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
    "519d315d08b3a8cc1aac53c9d14d2fd81d67033f": {
      "package": {
        "name": "Corazon-tic-ms",
        "version": "0.1",
        "description": "Corazón de bombeo de tics a con periodo paramétrico de milisegundos",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22197.514%22%20height=%22161.086%22%20viewBox=%220%200%2052.259014%2042.62059%22%3E%3Cpath%20d=%22M22.153%2040.47c-.727-1.25-1.853-2.474-3.987-4.332-1.156-1.006-1.86-1.565-5.863-4.658-3.138-2.425-4.704-3.77-6.519-5.601-1.813-1.831-2.88-3.29-3.794-5.191a15.321%2015.321%200%200%201-1.235-3.6c-.317-1.545-.36-2.067-.358-4.342.002-2.983.1-3.48%201.08-5.47.728-1.479%201.281-2.257%202.433-3.427C5.028%202.714%205.754%202.2%207.325%201.422%209.069.56%2010.33.333%2012.93.417c2.02.065%202.759.266%204.36%201.188%202.52%201.45%204.475%203.777%205.017%205.972.088.358.18.652.203.652.023%200%20.227-.42.453-.932.77-1.744%201.484-2.808%202.62-3.903C29.06.041%2034.542-.565%2038.974%201.912c1.81%201.012%203.283%202.485%204.425%204.424.898%201.527%201.358%203.555%201.436%206.34.113%204.035-.625%206.832-2.59%209.812-.779%201.182-1.355%201.899-2.437%203.028-1.745%201.823-3.318%203.162-7.033%205.988-2.344%201.782-3.734%202.929-5.745%204.74-1.611%201.452-4.108%203.98-4.349%204.402-.105.185-.2.336-.21.336-.012%200-.154-.23-.318-.512z%22%20fill=%22red%22/%3E%3Ctext%20y=%2262.314%22%20x=%2259.897%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%2215.216%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22matrix(.99853%200%200%201.00147%20-50.645%20-44.99)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%22.282%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2262.314%22%20x=%2259.897%22%20font-weight=%22700%22%20font-size=%228.695%22%3Emsec%3C/tspan%3E%3C/text%3E%3Cg%20transform=%22matrix(.79321%200%200%20.79321%20-39.33%20-27.72)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
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
              "id": "503869f1-ddfd-4d13-93ad-5f90281ba88c",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 104,
                "y": 192
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
                "code": "//localparam MS;\n\n//-- Constante para dividir y obtener una frecuencia de 1KHz\nlocalparam M = 12000*MS;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N = $clog2(M);\n\n//-- Cable de reset para el contador\nwire reset;\n\n//-- Registro del divisor\nreg [N-1:0] divcounter;\n\n\n//-- Contador con reset\nalways @(posedge clk)\n  if (reset)\n    divcounter <= 0;\n  else\n    divcounter <= divcounter + 1;\n\n//-- Comparador que resetea el contador cuando se alcanza el tope\nassign reset = (divcounter == M-1);\n\n//-- La salida es la señal de overflow\nassign o = reset;\n\n\n\n",
                "params": [
                  {
                    "name": "MS"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
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
    },
    "f91a2729e24bdc5bb7370785202c65c6526d7a01": {
      "package": {
        "name": "timer-msec",
        "version": "0.1",
        "description": "Temporizador en milisegundos. La señal p está activa durante el tiempo indicado. Por tic se emite un tic al finalizar",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20293.13756%20181.35395%22%20width=%22293.137%22%20height=%22181.354%22%3E%3Ccircle%20cx=%22149.086%22%20cy=%2290.681%22%20r=%2270.101%22%20fill=%22#fff%22/%3E%3Cpath%20d=%22M149.086%2013.679c-42.531%200-77.003%2034.472-77.003%2077.002%200%2042.531%2034.472%2077.003%2077.003%2077.003%2042.53%200%2077.003-34.472%2077.003-77.003%200-42.53-34.472-77.002-77.003-77.002zm0%20145.175c-37.673%200-68.173-30.539-68.173-68.173%200-37.633%2030.539-68.172%2068.173-68.172%2037.633%200%2068.172%2030.539%2068.172%2068.172%200%2037.634-30.538%2068.173-68.172%2068.173z%22%20fill=%22#333%22/%3E%3Cpath%20d=%22M146.772%2030.683h4.627v18.2h-4.627zM89.125%2092.965v-4.627h18.2v4.627zm62.261%2057.665h-4.627v-18.2h4.627zm57.647-62.28v4.628h-18.2V88.35zM105.044%2049.905l3.272-3.272%2012.87%2012.87-3.273%203.271zm3.28%2084.79l-3.27-3.272%2012.868-12.87%203.272%203.272zm84.774-3.265l-3.272%203.273-12.87-12.87%203.273-3.272zM189.85%2046.64l3.272%203.272-12.87%2012.87-3.271-3.272z%22%20fill=%22#333%22/%3E%3Ccircle%20cx=%22149.086%22%20cy=%2290.681%22%20r=%224.781%22%20fill=%22#333%22/%3E%3Cpath%20d=%22M149.795%2070.653l2.722.288-2.109%2019.9-2.722-.288z%22%20fill=%22#333%22/%3E%3Cpath%20d=%22M181.26%2072.13l1.276%202.422-32.859%2017.296-1.275-2.422z%22%20fill=%22#333%22/%3E%3Cpath%20d=%22M152.016%2080.386c-1.08%200-1.928.887-1.928%201.928%200%20.656.309%201.234.81%201.581l-14.691%2041.451%201.002.347%2014.691-41.45h.116c1.08%200%201.928-.888%201.928-1.929a1.934%201.934%200%200%200-1.928-1.928z%22%20fill=%22#cf000f%22/%3E%3Ctext%20y=%2244.949%22%20x=%221.863%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%2269.516%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%221.289%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2244.949%22%20x=%221.863%22%20font-weight=%22700%22%20font-size=%2239.724%22%3Ems%3C/tspan%3E%3C/text%3E%3Cg%20transform=%22matrix(2.99796%200%200%202.99796%20-53.023%20-84.502)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(2.99796%200%200%202.99796%20-257.041%20-84.502)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Ccircle%20cx=%22248.578%22%20cy=%2244.56%22%20r=%2243.648%22%20fill=%22#ececec%22%20stroke=%22green%22%20stroke-width=%221.824%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M279.216%2057.21h-5.01V30.018h-51.31v26.98h-5.456%22%20fill=%22none%22%20stroke=%22green%22%20stroke-width=%224.56%22%20stroke-linecap=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c45dab76-9d0f-4742-9e4d-3048637d245d",
              "type": "basic.output",
              "data": {
                "name": "p"
              },
              "position": {
                "x": 1224,
                "y": 96
              }
            },
            {
              "id": "7697c4d1-f5f8-4a1d-88af-e367fe54e4b6",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 472,
                "y": 96
              }
            },
            {
              "id": "61d11f03-6fbc-4467-a947-d546fa6f6429",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 456,
                "y": 304
              }
            },
            {
              "id": "8c6fda76-1ba0-4ef8-a53d-7bc8a9db4454",
              "type": "basic.output",
              "data": {
                "name": "tic"
              },
              "position": {
                "x": 1216,
                "y": 304
              }
            },
            {
              "id": "7ca578e5-8e36-4c04-bbea-144418c8e9af",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "100",
                "local": false
              },
              "position": {
                "x": 848,
                "y": -96
              }
            },
            {
              "id": "e6b9690b-1da7-4600-9015-0bbed31633e2",
              "type": "basic.info",
              "data": {
                "info": "**Arranque del**  \n**temporizador**",
                "readonly": true
              },
              "position": {
                "x": 448,
                "y": 264
              },
              "size": {
                "width": 144,
                "height": 56
              }
            },
            {
              "id": "f3af4211-e3df-4710-a0a8-96a035a833a9",
              "type": "basic.info",
              "data": {
                "info": "**Salida de pulso**",
                "readonly": true
              },
              "position": {
                "x": 1224,
                "y": 72
              },
              "size": {
                "width": 176,
                "height": 40
              }
            },
            {
              "id": "a15228f1-41aa-494c-82fb-5491bf5fcc13",
              "type": "basic.info",
              "data": {
                "info": "**Salida de tic**",
                "readonly": true
              },
              "position": {
                "x": 1216,
                "y": 280
              },
              "size": {
                "width": 152,
                "height": 40
              }
            },
            {
              "id": "204eb46d-dd4f-47cf-b0f3-c9095263d325",
              "type": "basic.info",
              "data": {
                "info": "**Parametro del timer**  \nmilisegundos a esperar",
                "readonly": true
              },
              "position": {
                "x": 832,
                "y": -128
              },
              "size": {
                "width": 208,
                "height": 56
              }
            },
            {
              "id": "a66b0b7f-4692-489e-9140-fb81fef2a1c5",
              "type": "basic.code",
              "data": {
                "code": "//localparam MS;\n\n//-- Constante para dividir y obtener una señal de  \n//-- periodo 1ms\nlocalparam M = 12000;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N = $clog2(M);\n\n//-- Cable de reset para el corazon\nwire rst_heart;\n\n//-- Overflow del temporizador del corazon\nwire ov_heart;\n\n//-- Habilitacion del corazon\nwire ena;\n\n//-- Tics del corazon\nwire tic_heart;\n\n//-- Contador del corazon\nreg [N-1:0] heart=0;\n\nalways @(posedge clk)\n  if (rst_heart)\n    heart <= 0;\n  else\n    heart <= heart + 1;\n\n//-- Overflow del contador\nassign ov_heart = (heart == M-1);\n\n//-- La salida del corazon es la señal de overflow\nassign tic_heart = ov_heart;\n\n//-- Reset del corazon\nassign rst_heart =~ena | ov_heart;\n\n\n\n//--------------------------------------------\n//-- Contador de tics\n//--------------------------------------------\n\n//-- Calcular el numero de bits para almacenar MS tics\nlocalparam CB = $clog2(MS);\n\nreg [CB-1:0] counter = 0;\n\n//-- Overflow del contador\nwire ov;\n\n//-- Señal de reset del contador\nwire rst;\n\nalways @(posedge clk)\nif (rst)\n  counter <= 0;\nelse\n  if (tic_heart)\n    counter <= counter + 1;\n\n//-- Evento: cuenta máxima de tics alcanzada\nassign ov = (counter == MS);\n\n//---------------------------------------\n//-- Biestable de estado del timer\n//-- 0: Apagado  \n//-- 1: Funcionando\nreg q = 0;\n\nalways @(posedge clk)\n  if (start)\n    q <= 1'b1;\n  else if (rst)\n    q<=1'b0;\n    \n//-- Lógica de reset\n//En función de la entrada, el estado y  \n// el overflow se inicializa el contador y \n// se habilita el corazón de tics\nassign rst = ~q | ov | start;\nassign ena = ~rst;\n\n//-- Salida de pulso\nassign p = q;\n\n//-- Salida de tic\n//-- Saca un tic cuando ha finalizado la cuenta\nassign tic = ov;\n",
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
                      "name": "start"
                    }
                  ],
                  "out": [
                    {
                      "name": "p"
                    },
                    {
                      "name": "tic"
                    }
                  ]
                }
              },
              "position": {
                "x": 632,
                "y": 24
              },
              "size": {
                "width": 520,
                "height": 416
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "61d11f03-6fbc-4467-a947-d546fa6f6429",
                "port": "out"
              },
              "target": {
                "block": "a66b0b7f-4692-489e-9140-fb81fef2a1c5",
                "port": "start"
              }
            },
            {
              "source": {
                "block": "a66b0b7f-4692-489e-9140-fb81fef2a1c5",
                "port": "p"
              },
              "target": {
                "block": "c45dab76-9d0f-4742-9e4d-3048637d245d",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "a66b0b7f-4692-489e-9140-fb81fef2a1c5",
                "port": "tic"
              },
              "target": {
                "block": "8c6fda76-1ba0-4ef8-a53d-7bc8a9db4454",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "7697c4d1-f5f8-4a1d-88af-e367fe54e4b6",
                "port": "out"
              },
              "target": {
                "block": "a66b0b7f-4692-489e-9140-fb81fef2a1c5",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "7ca578e5-8e36-4c04-bbea-144418c8e9af",
                "port": "constant-out"
              },
              "target": {
                "block": "a66b0b7f-4692-489e-9140-fb81fef2a1c5",
                "port": "MS"
              }
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
    "dc8b1ea7f9abb84200e7fe5e17fe7d51d99637b6": {
      "package": {
        "name": "NOT-4bits",
        "version": "1.0.3",
        "description": "Puerta NOT para bus de 4 bits",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22317.651%22%20height=%22194.058%22%20version=%221%22%3E%3Cpath%20d=%22M69.246%204l161.86%2093.027-161.86%2093.031V4z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linejoin=%22round%22/%3E%3Cellipse%20cx=%22253.352%22%20cy=%2296.736%22%20rx=%2221.393%22%20ry=%2221.893%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2097.49h65.262m205.796%200h38.48%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2281.112%22%20y=%22111.734%22%20transform=%22scale(.99532%201.0047)%22%20font-weight=%22400%22%20font-size=%2249.675%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2281.112%22%20y=%22111.734%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ENot%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c808a6d9-3c9e-4b62-9d80-32b0c772e5ff",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 64,
                "y": 144
              }
            },
            {
              "id": "2819d291-3e40-489b-96ba-1e053e2d006a",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[3:0]",
                "size": 4
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
                      "name": "a",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ],
                  "out": [
                    {
                      "name": "c",
                      "range": "[3:0]",
                      "size": 4
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
                "block": "c808a6d9-3c9e-4b62-9d80-32b0c772e5ff",
                "port": "out"
              },
              "target": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "a"
              },
              "size": 4
            },
            {
              "source": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "c"
              },
              "target": {
                "block": "2819d291-3e40-489b-96ba-1e053e2d006a",
                "port": "in"
              },
              "size": 4
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
    "21cfcc19a4ad14c5fb5e8cfebd018ec356fe7542": {
      "package": {
        "name": "0",
        "version": "0.1",
        "description": "Un bit constante a 0",
        "author": "Jesus Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2233.563%22%20height=%2257.469%22%20viewBox=%220%200%2031.465601%2053.876499%22%3E%3Cpath%20d=%22M21.822%2032.843l4.092%208.992-3.772%209.727%204.181%201.31m-12.967-19.26s-1.091%208.253-2.585%208.919C9.278%2043.198%201%2049.389%201%2049.389l2.647%203.256%22%20fill=%22none%22%20stroke=%22green%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-.863%22%20y=%2230.575%22%20transform=%22scale(.90756%201.10186)%22%20font-weight=%22400%22%20font-size=%2254.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22green%22%3E%3Ctspan%20x=%22-.863%22%20y=%2230.575%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold%20Italic'%22%20font-style=%22italic%22%20font-weight=%22700%22%3Eo%3C/tspan%3E%3C/text%3E%3C/svg%3E"
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
                "code": "//-- Bit constante a 0\nassign q = 1'b0;\n\n",
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