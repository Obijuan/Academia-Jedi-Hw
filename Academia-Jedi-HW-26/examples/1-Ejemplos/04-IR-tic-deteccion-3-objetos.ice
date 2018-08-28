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
          "id": "4ff50d52-9c98-4712-84ce-ada351414b2c",
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
            "x": 1320,
            "y": 304
          }
        },
        {
          "id": "8cb4c2cc-ef07-43c8-89a9-fe64cb30438f",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED5",
                "value": "101"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1632,
            "y": 312
          }
        },
        {
          "id": "adcefe55-b34d-4117-8f6b-597dabe9042b",
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
            "x": 1000,
            "y": 328
          }
        },
        {
          "id": "26bcde98-d385-45dc-a5eb-9c1220f162da",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "D11",
                "value": "142"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1720,
            "y": 416
          }
        },
        {
          "id": "5020bfde-f4fc-425d-9282-7e23c02f9a46",
          "type": "basic.input",
          "data": {
            "name": "IR",
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
            "x": 400,
            "y": 576
          }
        },
        {
          "id": "b115fee8-6b36-484e-bcd1-5ba2ff70e7ec",
          "type": "basic.input",
          "data": {
            "name": "Botón",
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
            "x": 688,
            "y": 688
          }
        },
        {
          "id": "d3a9aa9a-2ccf-4ce7-b265-f010722c9562",
          "type": "e361954a218b18648c32794fb1b31e05eeaa43b3",
          "position": {
            "x": 848,
            "y": 544
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "963edd76-563e-4c3b-8c6c-0d992c4b319e",
          "type": "2ad1f9ba564ce18aac9465f95b70d3a84a6052bb",
          "position": {
            "x": 560,
            "y": 560
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "8091e2b2-d451-424b-82a6-b732a9e2541b",
          "type": "basic.info",
          "data": {
            "info": "**Ejemplo 4**: Detección de 3 objetos con el sensor de IR\n\nSe notifica en el LED conectado a D11 que se han detectado  \n3 objetos. Se usan 3 LEDs para depurar el estado interno, y  \nver lo que va ocurriendo",
            "readonly": true
          },
          "position": {
            "x": 504,
            "y": 216
          },
          "size": {
            "width": 552,
            "height": 104
          }
        },
        {
          "id": "99280f14-3a06-4c8e-8a3f-f49a3e3f2117",
          "type": "basic.info",
          "data": {
            "info": "Borrar notificación  \nReiniciar el sistema",
            "readonly": true
          },
          "position": {
            "x": 672,
            "y": 632
          },
          "size": {
            "width": 216,
            "height": 40
          }
        },
        {
          "id": "4090cdfa-aadb-4397-8b26-4aa018182192",
          "type": "basic.info",
          "data": {
            "info": "0: Tic no detectado  \n1: Tic detectado",
            "readonly": true
          },
          "position": {
            "x": 840,
            "y": 640
          },
          "size": {
            "width": 192,
            "height": 48
          }
        },
        {
          "id": "881931e3-d2f7-4b03-b944-1a16540b9166",
          "type": "basic.info",
          "data": {
            "info": "LED de notificación de  \n3 tics recibidos",
            "readonly": true
          },
          "position": {
            "x": 1704,
            "y": 480
          },
          "size": {
            "width": 200,
            "height": 48
          }
        },
        {
          "id": "d6bc11eb-ab6a-4875-ad8a-0041a07e3c85",
          "type": "basic.info",
          "data": {
            "info": "**IR de tics**",
            "readonly": true
          },
          "position": {
            "x": 576,
            "y": 520
          },
          "size": {
            "width": 136,
            "height": 32
          }
        },
        {
          "id": "5626dbb6-137d-4142-bb70-979b23f7c81f",
          "type": "basic.info",
          "data": {
            "info": "**Primer tic detectado**",
            "readonly": true
          },
          "position": {
            "x": 808,
            "y": 504
          },
          "size": {
            "width": 208,
            "height": 40
          }
        },
        {
          "id": "5652bc4f-cfa0-4550-a14d-83de0c49f3b1",
          "type": "e361954a218b18648c32794fb1b31e05eeaa43b3",
          "position": {
            "x": 1184,
            "y": 448
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "8368f46d-bfdf-4d9e-9848-82ee46bc8c47",
          "type": "b2090f68ef94fd3c5c0eaea93eb6ba7e80aff0b6",
          "position": {
            "x": 1024,
            "y": 464
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "eee879a9-e90d-462e-8943-3dafe719c274",
          "type": "basic.info",
          "data": {
            "info": "**Segundo tic detectado**",
            "readonly": true
          },
          "position": {
            "x": 1184,
            "y": 544
          },
          "size": {
            "width": 208,
            "height": 40
          }
        },
        {
          "id": "8d8fed33-01c6-42e6-a863-885ac96c48ac",
          "type": "b2090f68ef94fd3c5c0eaea93eb6ba7e80aff0b6",
          "position": {
            "x": 1344,
            "y": 416
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "052f6c0a-6c2d-497b-ae04-10da83a606c5",
          "type": "basic.info",
          "data": {
            "info": "**Tercer tic detectado**",
            "readonly": true
          },
          "position": {
            "x": 1488,
            "y": 504
          },
          "size": {
            "width": 208,
            "height": 40
          }
        },
        {
          "id": "b80b6a15-88ab-41f1-b3ad-a8ec7556b5a5",
          "type": "e361954a218b18648c32794fb1b31e05eeaa43b3",
          "position": {
            "x": 1496,
            "y": 400
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "f0d375da-bafd-4b1a-9402-644846812938",
          "type": "basic.info",
          "data": {
            "info": "Evento:  \nTic en el presente",
            "readonly": true
          },
          "position": {
            "x": 664,
            "y": 536
          },
          "size": {
            "width": 168,
            "height": 48
          }
        },
        {
          "id": "095a6c43-373a-4c6a-90a7-18bf5c9b6437",
          "type": "basic.info",
          "data": {
            "info": "**LEDs de prueba, para ver los objetos que se llevan detectados**",
            "readonly": true
          },
          "position": {
            "x": 1104,
            "y": 216
          },
          "size": {
            "width": 560,
            "height": 40
          }
        },
        {
          "id": "28fb73b4-bba4-42a9-a6bb-ad6ce272e142",
          "type": "basic.info",
          "data": {
            "info": "Primer tic",
            "readonly": true
          },
          "position": {
            "x": 1008,
            "y": 280
          },
          "size": {
            "width": 136,
            "height": 48
          }
        },
        {
          "id": "c1962397-2234-4e64-b941-3daa58f6170f",
          "type": "basic.info",
          "data": {
            "info": "Segundo tic",
            "readonly": true
          },
          "position": {
            "x": 1320,
            "y": 264
          },
          "size": {
            "width": 136,
            "height": 48
          }
        },
        {
          "id": "e46f73fe-5b2a-483e-aa6a-9b06802afd96",
          "type": "basic.info",
          "data": {
            "info": "Tercer tic",
            "readonly": true
          },
          "position": {
            "x": 1640,
            "y": 272
          },
          "size": {
            "width": 136,
            "height": 48
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "b115fee8-6b36-484e-bcd1-5ba2ff70e7ec",
            "port": "out"
          },
          "target": {
            "block": "d3a9aa9a-2ccf-4ce7-b265-f010722c9562",
            "port": "86eb8c81-17fc-4371-bd21-51f429191f3c"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "5020bfde-f4fc-425d-9282-7e23c02f9a46",
            "port": "out"
          },
          "target": {
            "block": "963edd76-563e-4c3b-8c6c-0d992c4b319e",
            "port": "add059ff-0fce-4060-b7d2-9bfe2ab760ef"
          }
        },
        {
          "source": {
            "block": "963edd76-563e-4c3b-8c6c-0d992c4b319e",
            "port": "bd2f26b1-a39e-46fe-b762-bc399df80c73"
          },
          "target": {
            "block": "d3a9aa9a-2ccf-4ce7-b265-f010722c9562",
            "port": "3ae2d46d-7981-497a-899f-b60bfae0f43e"
          }
        },
        {
          "source": {
            "block": "d3a9aa9a-2ccf-4ce7-b265-f010722c9562",
            "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
          },
          "target": {
            "block": "8368f46d-bfdf-4d9e-9848-82ee46bc8c47",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          },
          "vertices": [
            {
              "x": 984,
              "y": 560
            }
          ]
        },
        {
          "source": {
            "block": "963edd76-563e-4c3b-8c6c-0d992c4b319e",
            "port": "bd2f26b1-a39e-46fe-b762-bc399df80c73"
          },
          "target": {
            "block": "8368f46d-bfdf-4d9e-9848-82ee46bc8c47",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          },
          "vertices": [
            {
              "x": 792,
              "y": 528
            }
          ]
        },
        {
          "source": {
            "block": "8368f46d-bfdf-4d9e-9848-82ee46bc8c47",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "5652bc4f-cfa0-4550-a14d-83de0c49f3b1",
            "port": "3ae2d46d-7981-497a-899f-b60bfae0f43e"
          }
        },
        {
          "source": {
            "block": "5652bc4f-cfa0-4550-a14d-83de0c49f3b1",
            "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
          },
          "target": {
            "block": "8d8fed33-01c6-42e6-a863-885ac96c48ac",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          },
          "vertices": [
            {
              "x": 1304,
              "y": 472
            }
          ]
        },
        {
          "source": {
            "block": "963edd76-563e-4c3b-8c6c-0d992c4b319e",
            "port": "bd2f26b1-a39e-46fe-b762-bc399df80c73"
          },
          "target": {
            "block": "8d8fed33-01c6-42e6-a863-885ac96c48ac",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          },
          "vertices": [
            {
              "x": 792,
              "y": 448
            }
          ]
        },
        {
          "source": {
            "block": "8d8fed33-01c6-42e6-a863-885ac96c48ac",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "b80b6a15-88ab-41f1-b3ad-a8ec7556b5a5",
            "port": "3ae2d46d-7981-497a-899f-b60bfae0f43e"
          }
        },
        {
          "source": {
            "block": "b80b6a15-88ab-41f1-b3ad-a8ec7556b5a5",
            "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
          },
          "target": {
            "block": "26bcde98-d385-45dc-a5eb-9c1220f162da",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "b115fee8-6b36-484e-bcd1-5ba2ff70e7ec",
            "port": "out"
          },
          "target": {
            "block": "5652bc4f-cfa0-4550-a14d-83de0c49f3b1",
            "port": "86eb8c81-17fc-4371-bd21-51f429191f3c"
          }
        },
        {
          "source": {
            "block": "b115fee8-6b36-484e-bcd1-5ba2ff70e7ec",
            "port": "out"
          },
          "target": {
            "block": "b80b6a15-88ab-41f1-b3ad-a8ec7556b5a5",
            "port": "86eb8c81-17fc-4371-bd21-51f429191f3c"
          }
        },
        {
          "source": {
            "block": "d3a9aa9a-2ccf-4ce7-b265-f010722c9562",
            "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
          },
          "target": {
            "block": "adcefe55-b34d-4117-8f6b-597dabe9042b",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "5652bc4f-cfa0-4550-a14d-83de0c49f3b1",
            "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
          },
          "target": {
            "block": "4ff50d52-9c98-4712-84ce-ada351414b2c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "b80b6a15-88ab-41f1-b3ad-a8ec7556b5a5",
            "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
          },
          "target": {
            "block": "8cb4c2cc-ef07-43c8-89a9-fe64cb30438f",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {
    "e361954a218b18648c32794fb1b31e05eeaa43b3": {
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
              "id": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
              "type": "basic.code",
              "data": {
                "code": "reg q = 0;\n\nalways @(posedge clk)\n  if (set)\n    q <= 1'b1;\n  else if (rst)\n    q<=1'b0;",
                "params": [],
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
            }
          ]
        }
      }
    },
    "2ad1f9ba564ce18aac9465f95b70d3a84a6052bb": {
      "package": {
        "name": "IR-tic",
        "version": "0.1",
        "description": "Detección de objeto con sensor de infrarrojos (IR). Emite un tic cada vez detecta un objeto",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22323.735%22%20height=%22287.049%22%20viewBox=%220%200%2085.6549%2075.948296%22%3E%3Cg%20transform=%22translate(-27.14%20-48.828)%22%20stroke-linecap=%22round%22%3E%3Cpath%20d=%22M30.775%2061.153l1.577%2063.588%2068.568-14.287.227-59.903z%22%20fill=%22#ccc%22%20stroke=%22#000%22%20stroke-width=%22.071%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M30.692%2061.054l-3.517-2.115%201.62%2063.178%203.72%202.49z%22%20fill=%22#ccc%22%20stroke=%22#000%22%20stroke-width=%22.071%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M27.187%2059.005l3.618%202.195%2070.342-10.649-5.477-1.687z%22%20fill=%22#ccc%22%20stroke=%22#000%22%20stroke-width=%22.071%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M47.596%2080.531l.726%2038.171%2015.948-3.873-.505-38.017z%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%22.071%22%20stroke-linejoin=%22round%22/%3E%3Cellipse%20ry=%227.046%22%20rx=%226.786%22%20cy=%2238.388%22%20cx=%22117.211%22%20transform=%22matrix(.17339%20.98485%20.98483%20-.1735%200%200)%22%20fill=%22#80b3ff%22%20stroke=%22#000%22%20stroke-width=%22.071%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M48.055%2098.516l.038%202.352%208.436%202.48.045-2.264z%22%20fill=%22#333%22%20stroke=%22#000%22%20stroke-width=%22.071%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M48.028%2098.555L63.4%2095.197l4.582%203.501.119.287-11.564%202.276z%22%20fill=%22#333%22%20stroke=%22#000%22%20stroke-width=%22.071%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M56.432%20101.246l.112%201.997%2011.34-2.579.172-1.74zM34.666%2073.143l6.875%203.713.432%2038.563-6.708-3.537z%22%20fill=%22#333%22%20stroke=%22#000%22%20stroke-width=%22.071%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M41.497%2076.78l6.1%203.796.734%2038.135-6.348-3.281z%22%20fill=%22#333%22%20stroke=%22#000%22%20stroke-width=%22.071%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M41.555%2076.874l6.023%203.688%2016.168-3.788-1.103-4.32z%22%20fill=%22#333%22%20stroke=%22#000%22%20stroke-width=%22.071%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M62.627%2072.457L55.1%2069.611%2034.776%2073.13l6.765%203.795z%22%20fill=%22#333%22%20stroke=%22#000%22%20stroke-width=%22.071%22%20stroke-linejoin=%22round%22/%3E%3Cellipse%20ry=%227.046%22%20rx=%226.786%22%20cy=%2241.149%22%20cx=%2299.498%22%20transform=%22matrix(.17339%20.98485%20.98483%20-.1735%200%200)%22%20fill=%22#0ff%22%20stroke=%22#000%22%20stroke-width=%22.071%22%20stroke-linejoin=%22round%22/%3E%3Cg%20transform=%22matrix(1.2877%200%200%201.2877%20-35.892%204.68)%22%20stroke=%22green%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "b39a24c1-02a7-4806-a716-e4ce82f81c88",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 184,
                "y": 200
              }
            },
            {
              "id": "bd2f26b1-a39e-46fe-b762-bc399df80c73",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 848,
                "y": 280
              }
            },
            {
              "id": "add059ff-0fce-4060-b7d2-9bfe2ab760ef",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 176,
                "y": 352
              }
            },
            {
              "id": "63e1651a-83ba-4c40-8ef6-a5cd239f1257",
              "type": "basic.info",
              "data": {
                "info": "**IRr-tic**",
                "readonly": true
              },
              "position": {
                "x": 344,
                "y": 104
              },
              "size": {
                "width": 152,
                "height": 40
              }
            },
            {
              "id": "199d4340-3a47-4cac-b5fa-3b12a2f70c37",
              "type": "basic.code",
              "data": {
                "code": "// Sincronizacion. Evitar \n// problema de la metaestabilidad\n\nreg d2;\nreg r_in;\n\nalways @(posedge clk)\n d2 <= d;\n \nalways @(posedge clk)\n  r_in <= d2;\n\n\n//-- Generar tic en flanco de subida del boton\nreg old;\n\nalways @(posedge clk)\n  old <= r_in;\n  \nassign tic = !old & r_in;\n\n\n\n",
                "params": [],
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
                      "name": "tic"
                    }
                  ]
                }
              },
              "position": {
                "x": 344,
                "y": 152
              },
              "size": {
                "width": 424,
                "height": 312
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "add059ff-0fce-4060-b7d2-9bfe2ab760ef",
                "port": "out"
              },
              "target": {
                "block": "199d4340-3a47-4cac-b5fa-3b12a2f70c37",
                "port": "d"
              }
            },
            {
              "source": {
                "block": "199d4340-3a47-4cac-b5fa-3b12a2f70c37",
                "port": "tic"
              },
              "target": {
                "block": "bd2f26b1-a39e-46fe-b762-bc399df80c73",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "b39a24c1-02a7-4806-a716-e4ce82f81c88",
                "port": "out"
              },
              "target": {
                "block": "199d4340-3a47-4cac-b5fa-3b12a2f70c37",
                "port": "clk"
              }
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