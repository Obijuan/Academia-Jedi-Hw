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
          "id": "d818c19c-b002-471a-bded-3acedb3ee450",
          "type": "basic.output",
          "data": {
            "name": "LED",
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
            "x": 928,
            "y": -136
          }
        },
        {
          "id": "202c4d3d-66a9-447c-8729-3313045dfd52",
          "type": "basic.input",
          "data": {
            "name": "Sensor IR",
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
            "x": 208,
            "y": -24
          }
        },
        {
          "id": "9ce0889e-45c1-4c10-bef3-6df93dd8eb3a",
          "type": "basic.output",
          "data": {
            "name": "Zumbador",
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
            "x": 1608,
            "y": 96
          }
        },
        {
          "id": "c938015a-1060-47df-ba3d-6dc86c50236f",
          "type": "basic.input",
          "data": {
            "name": "Pulsador",
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
            "x": 208,
            "y": 144
          }
        },
        {
          "id": "19f39225-722d-47ab-89fe-2b5c4e9f97e5",
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
            "x": 1608,
            "y": 240
          }
        },
        {
          "id": "92c4b9ee-d67d-4042-8b37-97afe14ba42a",
          "type": "basic.input",
          "data": {
            "name": "Pulsador",
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
            "x": 456,
            "y": 272
          }
        },
        {
          "id": "822aed55-5dd6-493a-aae8-ccc75cde2fa9",
          "type": "basic.info",
          "data": {
            "info": "**Activar alarma**",
            "readonly": true
          },
          "position": {
            "x": 200,
            "y": 104
          },
          "size": {
            "width": 160,
            "height": 40
          }
        },
        {
          "id": "69ec752c-a4f1-4605-a079-0638a59ea9c7",
          "type": "basic.info",
          "data": {
            "info": "**Desactivar alarma**",
            "readonly": true
          },
          "position": {
            "x": 424,
            "y": 232
          },
          "size": {
            "width": 160,
            "height": 40
          }
        },
        {
          "id": "d5ab74fe-e1da-431f-8290-8b55962ba9c7",
          "type": "basic.info",
          "data": {
            "info": "**Detector de presencia**",
            "readonly": true
          },
          "position": {
            "x": 176,
            "y": -64
          },
          "size": {
            "width": 232,
            "height": 40
          }
        },
        {
          "id": "04c7a41b-3778-4616-a438-eade32565f50",
          "type": "basic.info",
          "data": {
            "info": "**LED VERDE**",
            "readonly": true
          },
          "position": {
            "x": 928,
            "y": -168
          },
          "size": {
            "width": 160,
            "height": 40
          }
        },
        {
          "id": "cb8b58fd-3463-4ec6-86a8-4adde55b86c1",
          "type": "e361954a218b18648c32794fb1b31e05eeaa43b3",
          "position": {
            "x": 632,
            "y": 112
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "ba6e889a-759b-485c-a403-c73c10ee5bdc",
          "type": "basic.info",
          "data": {
            "info": "**Alarma activada**",
            "readonly": true
          },
          "position": {
            "x": 616,
            "y": 64
          },
          "size": {
            "width": 184,
            "height": 40
          }
        },
        {
          "id": "6ca6a8b7-81ff-4936-bb2f-33fac2c32174",
          "type": "b2090f68ef94fd3c5c0eaea93eb6ba7e80aff0b6",
          "position": {
            "x": 352,
            "y": 128
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "d7e18daa-46c4-4caf-80bb-b0ea5abd7226",
          "type": "5cc6ec961df1a19b78d61422b28169fc0f69384b",
          "position": {
            "x": 784,
            "y": -152
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "e5fb62c4-c456-4609-94a4-26a923359db8",
          "type": "352bab6843c15947f38e5551d26824d17310679e",
          "position": {
            "x": 592,
            "y": -216
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "fc83b4cc-bd9f-4047-a627-93ed3402fa5d",
          "type": "b2090f68ef94fd3c5c0eaea93eb6ba7e80aff0b6",
          "position": {
            "x": 976,
            "y": 112
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "13e0c13b-05a9-4da0-ad5c-aa8bce9ee944",
          "type": "35f267d0df6ffcb7fc33753bc9df9cf083642cca",
          "position": {
            "x": 640,
            "y": -24
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "4ab7e52e-7c65-493f-9379-3dcb63f1c44c",
          "type": "e361954a218b18648c32794fb1b31e05eeaa43b3",
          "position": {
            "x": 1176,
            "y": 96
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "48bba308-ab77-4190-943f-e4533db9c362",
          "type": "basic.info",
          "data": {
            "info": "**LED ROJO**",
            "readonly": true
          },
          "position": {
            "x": 1608,
            "y": 184
          },
          "size": {
            "width": 160,
            "height": 40
          }
        },
        {
          "id": "a40a7418-3545-4692-8377-10cfbd7e20ad",
          "type": "basic.info",
          "data": {
            "info": "**Sirena acústica**\n",
            "readonly": true
          },
          "position": {
            "x": 1456,
            "y": 32
          },
          "size": {
            "width": 176,
            "height": 40
          }
        },
        {
          "id": "3ff53f57-3bb6-4134-a02a-ab6056db09b3",
          "type": "basic.info",
          "data": {
            "info": "**Alarma disparada**\n",
            "readonly": true
          },
          "position": {
            "x": 1176,
            "y": 40
          },
          "size": {
            "width": 184,
            "height": 48
          }
        },
        {
          "id": "47f2d22c-782f-4d4b-8462-8e4181d70ac9",
          "type": "basic.info",
          "data": {
            "info": "**Baliza luminosa**\n",
            "readonly": true
          },
          "position": {
            "x": 1416,
            "y": 184
          },
          "size": {
            "width": 176,
            "height": 48
          }
        },
        {
          "id": "4dda0f0e-d68b-4193-8cc9-97d1da1f96fa",
          "type": "basic.info",
          "data": {
            "info": "0: Alarma NO disparada  \n1: Alarma disparada  ",
            "readonly": true
          },
          "position": {
            "x": 1176,
            "y": 200
          },
          "size": {
            "width": 200,
            "height": 48
          }
        },
        {
          "id": "b2563006-a994-49c3-affb-af6826cb07a4",
          "type": "basic.info",
          "data": {
            "info": "Evento: Objeto sustraido",
            "readonly": true
          },
          "position": {
            "x": 792,
            "y": -24
          },
          "size": {
            "width": 216,
            "height": 40
          }
        },
        {
          "id": "bab844be-a097-40b4-8188-04753f2381df",
          "type": "basic.info",
          "data": {
            "info": "Evento: Alarma activada",
            "readonly": true
          },
          "position": {
            "x": 792,
            "y": 128
          },
          "size": {
            "width": 216,
            "height": 40
          }
        },
        {
          "id": "a1021e20-df0c-4aaa-9a31-266c7f0a7d55",
          "type": "basic.info",
          "data": {
            "info": "La alarma se dispara  \nsi está activada y el    \nobjeto se mueve de su  \nposición",
            "readonly": true
          },
          "position": {
            "x": 976,
            "y": 0
          },
          "size": {
            "width": 216,
            "height": 88
          }
        },
        {
          "id": "78817a56-7344-42f5-a25a-bc5e8f696a6c",
          "type": "basic.info",
          "data": {
            "info": "**Circuito de control del LED verde**:  \nCuando la alarma NO está activada se indica en el LED la presencia  \no no del objeto a proteger  \nSi está activada se hace parpadear el LED una vez por segundo",
            "readonly": true
          },
          "position": {
            "x": 520,
            "y": -336
          },
          "size": {
            "width": 536,
            "height": 96
          }
        },
        {
          "id": "26a18856-c563-4582-b086-24bd03700c7c",
          "type": "basic.info",
          "data": {
            "info": "0: Alarma NO activada  \n1: Alarma activada",
            "readonly": true
          },
          "position": {
            "x": 632,
            "y": 208
          },
          "size": {
            "width": 200,
            "height": 48
          }
        },
        {
          "id": "0d9d5be4-f810-4c30-b7a7-400fb1725bb2",
          "type": "basic.info",
          "data": {
            "info": "La alarma se activa  \nsi está colocado el  \nobjeto a proteger y  \nse aprieta el botón  \nde ACTIVAR",
            "readonly": true
          },
          "position": {
            "x": 456,
            "y": 32
          },
          "size": {
            "width": 176,
            "height": 96
          }
        },
        {
          "id": "9b1b525a-1b43-4581-97c1-0bd84bb7b3c1",
          "type": "1dc25f9e54906121e75c045c509192508207718b",
          "position": {
            "x": 1432,
            "y": 96
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "8b5903b7-046c-468b-9f88-230bdd39ea16",
          "type": "c3c2cf677c11bd4c8025b170cc461a846b08821e",
          "position": {
            "x": 1440,
            "y": 240
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
            "block": "92c4b9ee-d67d-4042-8b37-97afe14ba42a",
            "port": "out"
          },
          "target": {
            "block": "cb8b58fd-3463-4ec6-86a8-4adde55b86c1",
            "port": "86eb8c81-17fc-4371-bd21-51f429191f3c"
          }
        },
        {
          "source": {
            "block": "6ca6a8b7-81ff-4936-bb2f-33fac2c32174",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "cb8b58fd-3463-4ec6-86a8-4adde55b86c1",
            "port": "3ae2d46d-7981-497a-899f-b60bfae0f43e"
          }
        },
        {
          "source": {
            "block": "202c4d3d-66a9-447c-8729-3313045dfd52",
            "port": "out"
          },
          "target": {
            "block": "6ca6a8b7-81ff-4936-bb2f-33fac2c32174",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "c938015a-1060-47df-ba3d-6dc86c50236f",
            "port": "out"
          },
          "target": {
            "block": "6ca6a8b7-81ff-4936-bb2f-33fac2c32174",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          }
        },
        {
          "source": {
            "block": "d7e18daa-46c4-4caf-80bb-b0ea5abd7226",
            "port": "0ef557c8-5378-43b3-80af-176f129f1a07"
          },
          "target": {
            "block": "d818c19c-b002-471a-bded-3acedb3ee450",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "cb8b58fd-3463-4ec6-86a8-4adde55b86c1",
            "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
          },
          "target": {
            "block": "d7e18daa-46c4-4caf-80bb-b0ea5abd7226",
            "port": "1e637a79-4a6d-495c-bcac-9664bdbe4b94"
          }
        },
        {
          "source": {
            "block": "e5fb62c4-c456-4609-94a4-26a923359db8",
            "port": "70887b0b-826c-4150-a873-605b77da8272"
          },
          "target": {
            "block": "d7e18daa-46c4-4caf-80bb-b0ea5abd7226",
            "port": "5898179a-7390-429b-ac3c-b7a0df673610"
          }
        },
        {
          "source": {
            "block": "cb8b58fd-3463-4ec6-86a8-4adde55b86c1",
            "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
          },
          "target": {
            "block": "fc83b4cc-bd9f-4047-a627-93ed3402fa5d",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          }
        },
        {
          "source": {
            "block": "13e0c13b-05a9-4da0-ad5c-aa8bce9ee944",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "fc83b4cc-bd9f-4047-a627-93ed3402fa5d",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "fc83b4cc-bd9f-4047-a627-93ed3402fa5d",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "4ab7e52e-7c65-493f-9379-3dcb63f1c44c",
            "port": "3ae2d46d-7981-497a-899f-b60bfae0f43e"
          }
        },
        {
          "source": {
            "block": "92c4b9ee-d67d-4042-8b37-97afe14ba42a",
            "port": "out"
          },
          "target": {
            "block": "4ab7e52e-7c65-493f-9379-3dcb63f1c44c",
            "port": "86eb8c81-17fc-4371-bd21-51f429191f3c"
          }
        },
        {
          "source": {
            "block": "4ab7e52e-7c65-493f-9379-3dcb63f1c44c",
            "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
          },
          "target": {
            "block": "9b1b525a-1b43-4581-97c1-0bd84bb7b3c1",
            "port": "e65c6a19-7908-43ab-86dc-1c091014d6b2"
          }
        },
        {
          "source": {
            "block": "9b1b525a-1b43-4581-97c1-0bd84bb7b3c1",
            "port": "6bc49849-ed74-4462-9eb9-713569f89421"
          },
          "target": {
            "block": "9ce0889e-45c1-4c10-bef3-6df93dd8eb3a",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8b5903b7-046c-468b-9f88-230bdd39ea16",
            "port": "6bfaf689-c78a-434e-89c3-4c70b580117c"
          },
          "target": {
            "block": "19f39225-722d-47ab-89fe-2b5c4e9f97e5",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4ab7e52e-7c65-493f-9379-3dcb63f1c44c",
            "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
          },
          "target": {
            "block": "8b5903b7-046c-468b-9f88-230bdd39ea16",
            "port": "49a24d5e-2dd4-4b5d-bb0e-6718a59d9a38"
          },
          "vertices": [
            {
              "x": 1352,
              "y": 216
            }
          ]
        },
        {
          "source": {
            "block": "202c4d3d-66a9-447c-8729-3313045dfd52",
            "port": "out"
          },
          "target": {
            "block": "13e0c13b-05a9-4da0-ad5c-aa8bce9ee944",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "202c4d3d-66a9-447c-8729-3313045dfd52",
            "port": "out"
          },
          "target": {
            "block": "d7e18daa-46c4-4caf-80bb-b0ea5abd7226",
            "port": "db089906-4326-4b59-8aa5-ebb61116a4cd"
          },
          "vertices": [
            {
              "x": 552,
              "y": -40
            }
          ]
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
    "5cc6ec961df1a19b78d61422b28169fc0f69384b": {
      "package": {
        "name": "Mux 2 a 1",
        "version": "0.0.1",
        "description": "Multiplexor de 2 a 1",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2280.833%22%20height=%22158.56%22%20viewBox=%220%200%2075.781585%20148.65066%22%3E%3Cpath%20d=%22M74.375%2036.836c0-12.691-6.99-24.413-18.326-30.729-11.335-6.316-25.284-6.262-36.568.141C8.198%2012.652%201.304%2024.427%201.407%2037.118v74.415c-.103%2012.69%206.79%2024.466%2018.074%2030.87%2011.284%206.403%2025.233%206.457%2036.568.14%2011.336-6.316%2018.326-18.037%2018.326-30.728z%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%227.448%22%20y=%2291.518%22%20transform=%22matrix(1.00472%200%200%20.9953%2020.25%2033.697)%22%20font-weight=%22400%22%20font-size=%2233.509%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%227.448%22%20y=%2291.518%22%3E0%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%227.359%22%20y=%2214.582%22%20transform=%22matrix(1.00472%200%200%20.9953%2020.25%2033.697)%22%20font-weight=%22400%22%20font-size=%2233.509%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%227.359%22%20y=%2214.582%22%3E1%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "5898179a-7390-429b-ac3c-b7a0df673610",
              "type": "basic.input",
              "data": {
                "name": "i1",
                "clock": false
              },
              "position": {
                "x": -704,
                "y": -88
              }
            },
            {
              "id": "db089906-4326-4b59-8aa5-ebb61116a4cd",
              "type": "basic.input",
              "data": {
                "name": "i0",
                "clock": false
              },
              "position": {
                "x": -704,
                "y": 0
              }
            },
            {
              "id": "0ef557c8-5378-43b3-80af-176f129f1a07",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": -48,
                "y": 0
              }
            },
            {
              "id": "1e637a79-4a6d-495c-bcac-9664bdbe4b94",
              "type": "basic.input",
              "data": {
                "name": "sel",
                "clock": false
              },
              "position": {
                "x": -704,
                "y": 88
              }
            },
            {
              "id": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
              "type": "basic.code",
              "data": {
                "code": "//-- Multiplexor de 2 a 1, \n//-- de 8 bits\n\nreg _o;\n\nalways @(*) begin\n    case(sel)\n        0: _o = i0;\n        1: _o = i1;\n        default: _o = i0;\n    endcase\nend\n\nassign o = _o;\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i1"
                    },
                    {
                      "name": "i0"
                    },
                    {
                      "name": "sel"
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
                "x": -464,
                "y": -104
              },
              "size": {
                "width": 304,
                "height": 272
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "1e637a79-4a6d-495c-bcac-9664bdbe4b94",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "sel"
              }
            },
            {
              "source": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "o"
              },
              "target": {
                "block": "0ef557c8-5378-43b3-80af-176f129f1a07",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "db089906-4326-4b59-8aa5-ebb61116a4cd",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "i0"
              }
            },
            {
              "source": {
                "block": "5898179a-7390-429b-ac3c-b7a0df673610",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "i1"
              }
            }
          ]
        }
      }
    },
    "352bab6843c15947f38e5551d26824d17310679e": {
      "package": {
        "name": "Corazon_1Hz",
        "version": "0.1",
        "description": "Bombear 1 bit por segundo",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22200.13%22%20height=%22156.592%22%20viewBox=%220%200%20187.62306%20146.80587%22%3E%3Cpath%20d=%22M78.589%20143.492c-2.574-4.428-6.565-8.765-14.127-15.349-4.096-3.566-6.588-5.547-20.776-16.507-11.12-8.592-16.667-13.358-23.097-19.846-6.426-6.488-10.203-11.656-13.443-18.393-2.069-4.303-3.49-8.449-4.376-12.756C1.647%2055.17%201.494%2053.316%201.5%2045.26c.008-10.573.357-12.332%203.828-19.385%202.58-5.239%204.54-7.997%208.62-12.141%203.963-4.022%206.535-5.85%2012.099-8.6%206.18-3.058%2010.651-3.86%2019.86-3.562%207.157.231%209.777.943%2015.45%204.208%208.93%205.138%2015.858%2013.387%2017.776%2021.161.314%201.272.637%202.313.72%202.313.082%200%20.804-1.487%201.606-3.305%202.727-6.18%205.26-9.95%209.284-13.828%2012.32-11.88%2031.744-14.027%2047.45-5.25%206.414%203.584%2011.633%208.802%2015.676%2015.675%203.184%205.41%204.812%2012.595%205.09%2022.464.401%2014.298-2.214%2024.207-9.175%2034.766-2.762%204.19-4.805%206.73-8.637%2010.73-6.183%206.458-11.758%2011.205-24.921%2021.216-8.306%206.317-13.23%2010.378-20.355%2016.8-5.71%205.143-14.557%2014.099-15.41%2015.596-.372.654-.709%201.189-.748%201.189-.039%200-.544-.816-1.124-1.814z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%222.813%22/%3E%3Ctext%20y=%22136.277%22%20x=%22124.207%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2253.914%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22136.277%22%20x=%22124.207%22%20font-weight=%22700%22%20font-size=%2230.808%22%3E1Hz%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "70887b0b-826c-4150-a873-605b77da8272",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 264,
                "y": 128
              }
            },
            {
              "id": "4656865c-bcf1-4668-8e13-9221e32222d3",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -64,
                "y": 128
              }
            },
            {
              "id": "ae9c077f-8145-48b1-825d-8d25951e1476",
              "type": "basic.constant",
              "data": {
                "name": "HZ",
                "value": "1",
                "local": true
              },
              "position": {
                "x": 112,
                "y": 8
              }
            },
            {
              "id": "1f5f4108-2d09-494a-8a67-184832ca8a89",
              "type": "0e64bc728cbb881007bf629e44dc5b5b0fa3a34c",
              "position": {
                "x": 112,
                "y": 128
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "3f909443-2e60-4804-859b-3678af38304b",
              "type": "basic.info",
              "data": {
                "info": "Creado a partir de un **corazón  \ngenérico**, dando el valor adecuado  \na su parámetro frecuencia",
                "readonly": true
              },
              "position": {
                "x": -96,
                "y": -80
              },
              "size": {
                "width": 320,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "1f5f4108-2d09-494a-8a67-184832ca8a89",
                "port": "70887b0b-826c-4150-a873-605b77da8272"
              },
              "target": {
                "block": "70887b0b-826c-4150-a873-605b77da8272",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "4656865c-bcf1-4668-8e13-9221e32222d3",
                "port": "out"
              },
              "target": {
                "block": "1f5f4108-2d09-494a-8a67-184832ca8a89",
                "port": "4656865c-bcf1-4668-8e13-9221e32222d3"
              }
            },
            {
              "source": {
                "block": "ae9c077f-8145-48b1-825d-8d25951e1476",
                "port": "constant-out"
              },
              "target": {
                "block": "1f5f4108-2d09-494a-8a67-184832ca8a89",
                "port": "319cdca8-e777-4c8b-88ca-f885ba96ad06"
              }
            }
          ]
        }
      }
    },
    "0e64bc728cbb881007bf629e44dc5b5b0fa3a34c": {
      "package": {
        "name": "Corazon_Hz",
        "version": "0.1",
        "description": "Corazon genérico para bombear bits a la frecuencia fijada en Hz (por defecto 1Hz)",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22177.215%22%20height=%22156.392%22%20viewBox=%220%200%20166.13943%20146.61829%22%3E%3Cpath%20d=%22M78.495%20143.399c-2.574-4.43-6.565-8.766-14.127-15.35-4.096-3.566-6.588-5.546-20.775-16.506-11.12-8.593-16.668-13.36-23.098-19.847C14.07%2085.208%2010.293%2080.04%207.052%2073.303%204.984%2069%203.562%2064.854%202.676%2060.547c-1.123-5.472-1.275-7.324-1.27-15.382.008-10.573.357-12.332%203.828-19.385%202.58-5.239%204.54-7.997%208.62-12.141%203.963-4.022%206.536-5.85%2012.1-8.6%206.18-3.057%2010.65-3.859%2019.86-3.562%207.157.232%209.776.943%2015.45%204.208%208.929%205.138%2015.858%2013.387%2017.776%2021.162.313%201.27.636%202.312.719%202.312.082%200%20.805-1.487%201.606-3.305%202.727-6.179%205.26-9.95%209.284-13.828%2012.32-11.88%2031.744-14.027%2047.45-5.25%206.414%203.584%2011.633%208.802%2015.676%2015.675%203.184%205.41%204.812%2012.595%205.09%2022.464.402%2014.298-2.214%2024.207-9.174%2034.766-2.763%204.19-4.806%206.73-8.638%2010.73-6.182%206.458-11.758%2011.205-24.92%2021.216-8.307%206.317-13.23%2010.378-20.355%2016.8-5.71%205.143-14.558%2014.1-15.41%2015.596-.372.655-.71%201.189-.749%201.189-.039%200-.544-.815-1.124-1.813z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%222.813%22/%3E%3Ctext%20y=%22136.183%22%20x=%22124.113%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2253.914%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22136.183%22%20x=%22124.113%22%20font-weight=%22700%22%20font-size=%2230.808%22%3EHz%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "70887b0b-826c-4150-a873-605b77da8272",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 560,
                "y": 128
              }
            },
            {
              "id": "4656865c-bcf1-4668-8e13-9221e32222d3",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -296,
                "y": 128
              }
            },
            {
              "id": "319cdca8-e777-4c8b-88ca-f885ba96ad06",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "1",
                "local": false
              },
              "position": {
                "x": 112,
                "y": -224
              }
            },
            {
              "id": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
              "type": "basic.code",
              "data": {
                "code": "\n//parameter HZ=1;\n\n//-- Constante para dividir y obtener una frecuencia de 1Hz\nlocalparam M = 12000000/HZ;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N = $clog2(M);\n\n//-- Registro del divisor\nreg [N-1:0] divcounter;\n\n//-- Temporal clock\nreg clk_t = 0;\n\n//-- Se usa un contador modulo M/2 para luego\n//-- pasarlo por un biestable T y dividir la frecuencia\n//-- entre 2, para que el ciclo de trabajo sea del 50%\nalways @(posedge clk)\n    if (divcounter == M/2) begin\n      clk_t <= 1;\n      divcounter = 0;\n    end \n    else begin\n      divcounter <=  divcounter + 1;\n      clk_t = 0;\n    end \n  \nreg clk_o = 0;  \n    \n//-- Biestable T para obtener ciclo de trabajo del 50%\nalways @(posedge clk)\n  if (clk_t)\n    clk_o <= ~clk_o;\n",
                "params": [
                  {
                    "name": "HZ"
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
                      "name": "clk_o"
                    }
                  ]
                }
              },
              "position": {
                "x": -104,
                "y": -104
              },
              "size": {
                "width": 528,
                "height": 528
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
                "port": "clk_o"
              },
              "target": {
                "block": "70887b0b-826c-4150-a873-605b77da8272",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "4656865c-bcf1-4668-8e13-9221e32222d3",
                "port": "out"
              },
              "target": {
                "block": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
                "port": "clk"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "319cdca8-e777-4c8b-88ca-f885ba96ad06",
                "port": "constant-out"
              },
              "target": {
                "block": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
                "port": "HZ"
              }
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
    "1dc25f9e54906121e75c045c509192508207718b": {
      "package": {
        "name": "Sirena",
        "version": "0.1",
        "description": "Cuando se activa su entrada (por nivel) suena la sirena",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22292.027%22%20height=%22216.675%22%20viewBox=%220%200%20292.02713%20216.67493%22%3E%3Cg%20fill=%22#00f%22%3E%3Cpath%20d=%22M38.803%20196.762l36.82-9.165L52.57%2095.012l-36.819%209.165c-11.13%202.765-17.9%2014.038-15.133%2025.166l13.018%2052.272c2.768%2011.135%2014.035%2017.918%2025.166%2015.147zM154.252%2028.696c-2.768-11.123-11.602-13.566-19.716-5.468l-68.603%2068.46%2023.05%2092.58%2093.748%2031.353c10.874%203.635%2017.45-2.438%2014.675-13.566zM202.403%20122.131l72.358-18.005c7.104-1.766%2011.43-8.958%209.657-16.062-1.766-7.104-8.932-11.443-16.058-9.662l-72.358%2018.015c-7.104%201.766-11.429%208.953-9.663%2016.057%201.502%206.038%206.913%2010.062%2012.857%2010.062a13.687%2013.687%200%200%200%203.207-.405zM189.94%2079.022c3.561%200%207.103-1.424%209.718-4.235l48.752-52.512c4.981-5.364%204.671-13.753-.693-18.734-5.359-4.98-13.748-4.67-18.734.7L180.23%2056.745c-4.98%205.37-4.67%2013.758.693%2018.734a13.195%2013.195%200%200%200%209.016%203.542zM283.12%20161.696l-67.689-23.514c-6.907-2.408-14.468%201.253-16.87%208.171-2.402%206.913%201.248%2014.468%208.171%2016.87l67.684%2023.524c1.444.502%202.91.74%204.354.74%205.484%200%2010.615-3.433%2012.516-8.91%202.407-6.923-1.243-14.479-8.167-16.88z%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "cc1ae478-8d19-4575-84c4-d731ba6f593b",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 8,
                "y": 184
              }
            },
            {
              "id": "6bc49849-ed74-4462-9eb9-713569f89421",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 840,
                "y": 232
              }
            },
            {
              "id": "e65c6a19-7908-43ab-86dc-1c091014d6b2",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 24,
                "y": 496
              }
            },
            {
              "id": "bff2b9d1-1bc6-4917-9de1-16e9fef85d1d",
              "type": "e0155c479219a6b9a708c7ac6f67faa4a9f7dae0",
              "position": {
                "x": 200,
                "y": 184
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "2474d99d-ff40-4913-a716-d4ba78788edc",
              "type": "5cc6ec961df1a19b78d61422b28169fc0f69384b",
              "position": {
                "x": 416,
                "y": 200
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "f62cd869-4679-461d-b0dd-dc72ced6b4bd",
              "type": "b2090f68ef94fd3c5c0eaea93eb6ba7e80aff0b6",
              "position": {
                "x": 568,
                "y": 232
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "3b576c3b-2500-45ae-8421-12e8b25d1ca4",
              "type": "9145319126ac1b81ea15f1e8187601adec774394",
              "position": {
                "x": 200,
                "y": 344
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "2e504122-6823-4b7f-908c-360b53cf9aed",
              "type": "847695050c24a20b6b0bf53d7776ed2a49dff53d",
              "position": {
                "x": 200,
                "y": 264
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "bac7fc26-34bb-47fb-966b-967cedef66c3",
              "type": "basic.info",
              "data": {
                "info": "**Sirena acústica**\n\nSe alternan pitidos de 1Khz y 2Khz a la frecuencia de 4Hz",
                "readonly": true
              },
              "position": {
                "x": 192,
                "y": 88
              },
              "size": {
                "width": 456,
                "height": 72
              }
            },
            {
              "id": "6210b439-fd83-4434-a8fc-844b1283607d",
              "type": "basic.info",
              "data": {
                "info": "Cuando esta señal se pone a 1  \nempieza a sonar la sirena",
                "readonly": true
              },
              "position": {
                "x": 136,
                "y": 464
              },
              "size": {
                "width": 312,
                "height": 64
              }
            },
            {
              "id": "a0c345f3-4abd-4993-b3f3-54fc8e3e01c9",
              "type": "basic.info",
              "data": {
                "info": "Conectar la salida  \ndirectamente a un  \nzumbador",
                "readonly": true
              },
              "position": {
                "x": 688,
                "y": 184
              },
              "size": {
                "width": 160,
                "height": 80
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "bff2b9d1-1bc6-4917-9de1-16e9fef85d1d",
                "port": "70887b0b-826c-4150-a873-605b77da8272"
              },
              "target": {
                "block": "2474d99d-ff40-4913-a716-d4ba78788edc",
                "port": "5898179a-7390-429b-ac3c-b7a0df673610"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "f62cd869-4679-461d-b0dd-dc72ced6b4bd",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "6bc49849-ed74-4462-9eb9-713569f89421",
                "port": "in"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "2474d99d-ff40-4913-a716-d4ba78788edc",
                "port": "0ef557c8-5378-43b3-80af-176f129f1a07"
              },
              "target": {
                "block": "f62cd869-4679-461d-b0dd-dc72ced6b4bd",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "3b576c3b-2500-45ae-8421-12e8b25d1ca4",
                "port": "95281825-5850-408d-9040-93866452f146"
              },
              "target": {
                "block": "2474d99d-ff40-4913-a716-d4ba78788edc",
                "port": "1e637a79-4a6d-495c-bcac-9664bdbe4b94"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "2e504122-6823-4b7f-908c-360b53cf9aed",
                "port": "8c55f855-ff63-4c7e-9fdf-6dc944c3fd01"
              },
              "target": {
                "block": "2474d99d-ff40-4913-a716-d4ba78788edc",
                "port": "db089906-4326-4b59-8aa5-ebb61116a4cd"
              },
              "vertices": [
                {
                  "x": 336,
                  "y": 264
                }
              ]
            },
            {
              "source": {
                "block": "e65c6a19-7908-43ab-86dc-1c091014d6b2",
                "port": "out"
              },
              "target": {
                "block": "f62cd869-4679-461d-b0dd-dc72ced6b4bd",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "cc1ae478-8d19-4575-84c4-d731ba6f593b",
                "port": "out"
              },
              "target": {
                "block": "bff2b9d1-1bc6-4917-9de1-16e9fef85d1d",
                "port": "4656865c-bcf1-4668-8e13-9221e32222d3"
              }
            },
            {
              "source": {
                "block": "cc1ae478-8d19-4575-84c4-d731ba6f593b",
                "port": "out"
              },
              "target": {
                "block": "2e504122-6823-4b7f-908c-360b53cf9aed",
                "port": "2cce1142-ac36-4a4e-afc6-35137f9f23c2"
              },
              "vertices": [
                {
                  "x": 152,
                  "y": 248
                }
              ]
            },
            {
              "source": {
                "block": "cc1ae478-8d19-4575-84c4-d731ba6f593b",
                "port": "out"
              },
              "target": {
                "block": "3b576c3b-2500-45ae-8421-12e8b25d1ca4",
                "port": "7fbb0c58-cf32-4b7c-a563-4ca90483b38a"
              },
              "vertices": [
                {
                  "x": 152,
                  "y": 272
                }
              ]
            }
          ]
        }
      }
    },
    "e0155c479219a6b9a708c7ac6f67faa4a9f7dae0": {
      "package": {
        "name": "Corazon_1KHz",
        "version": "0.1",
        "description": "Bombear 1000 bits por segundo",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22215.59%22%20height=%22156.392%22%20viewBox=%220%200%20202.11681%20146.61832%22%3E%3Cpath%20d=%22M78.495%20143.399c-2.574-4.43-6.565-8.766-14.127-15.35-4.096-3.566-6.588-5.546-20.775-16.506-11.12-8.593-16.668-13.36-23.098-19.847C14.07%2085.208%2010.293%2080.04%207.052%2073.303%204.984%2069%203.562%2064.854%202.676%2060.547c-1.123-5.472-1.275-7.324-1.27-15.382.008-10.573.357-12.332%203.828-19.385%202.58-5.239%204.54-7.997%208.62-12.141%203.963-4.022%206.536-5.85%2012.1-8.6%206.18-3.057%2010.65-3.859%2019.86-3.562%207.157.232%209.776.943%2015.45%204.208%208.929%205.138%2015.858%2013.387%2017.776%2021.162.313%201.27.636%202.312.719%202.312.082%200%20.805-1.487%201.606-3.305%202.727-6.179%205.26-9.95%209.284-13.828%2012.32-11.88%2031.744-14.027%2047.45-5.25%206.414%203.584%2011.633%208.802%2015.676%2015.675%203.184%205.41%204.812%2012.595%205.09%2022.464.402%2014.298-2.214%2024.207-9.174%2034.766-2.763%204.191-4.806%206.73-8.638%2010.73-6.182%206.458-11.758%2011.205-24.92%2021.216-8.307%206.317-13.23%2010.378-20.355%2016.8-5.71%205.143-14.558%2014.1-15.41%2015.596-.372.655-.71%201.19-.749%201.19-.039%200-.544-.816-1.124-1.814z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%222.813%22/%3E%3Ctext%20y=%22136.183%22%20x=%22114.834%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2253.914%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22136.183%22%20x=%22114.834%22%20font-weight=%22700%22%20font-size=%2230.808%22%3E1KHz%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "70887b0b-826c-4150-a873-605b77da8272",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 320,
                "y": 128
              }
            },
            {
              "id": "4656865c-bcf1-4668-8e13-9221e32222d3",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -32,
                "y": 128
              }
            },
            {
              "id": "341a428f-f7fb-4015-8a1b-18162f7e7786",
              "type": "basic.constant",
              "data": {
                "name": "HZ",
                "value": "1000",
                "local": true
              },
              "position": {
                "x": 136,
                "y": 8
              }
            },
            {
              "id": "465c8d3e-e419-4d1b-89f1-8a2fa11d77e1",
              "type": "0e64bc728cbb881007bf629e44dc5b5b0fa3a34c",
              "position": {
                "x": 136,
                "y": 128
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "8c09ec65-b3ec-4bc3-9ff8-6d00961777cf",
              "type": "basic.info",
              "data": {
                "info": "Creado a partir de un **corazón  \ngenérico**, dando el valor adecuado  \na su parámetro frecuencia",
                "readonly": true
              },
              "position": {
                "x": -104,
                "y": -72
              },
              "size": {
                "width": 320,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "465c8d3e-e419-4d1b-89f1-8a2fa11d77e1",
                "port": "70887b0b-826c-4150-a873-605b77da8272"
              },
              "target": {
                "block": "70887b0b-826c-4150-a873-605b77da8272",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "4656865c-bcf1-4668-8e13-9221e32222d3",
                "port": "out"
              },
              "target": {
                "block": "465c8d3e-e419-4d1b-89f1-8a2fa11d77e1",
                "port": "4656865c-bcf1-4668-8e13-9221e32222d3"
              }
            },
            {
              "source": {
                "block": "341a428f-f7fb-4015-8a1b-18162f7e7786",
                "port": "constant-out"
              },
              "target": {
                "block": "465c8d3e-e419-4d1b-89f1-8a2fa11d77e1",
                "port": "319cdca8-e777-4c8b-88ca-f885ba96ad06"
              },
              "vertices": []
            }
          ]
        }
      }
    },
    "9145319126ac1b81ea15f1e8187601adec774394": {
      "package": {
        "name": "Corazon_4Hz",
        "version": "0.1",
        "description": "Bombear 4 bits por segundo",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22200.13%22%20height=%22156.592%22%20viewBox=%220%200%20187.62306%20146.80587%22%3E%3Cpath%20d=%22M78.589%20143.492c-2.574-4.428-6.565-8.765-14.127-15.349-4.096-3.566-6.588-5.547-20.776-16.507-11.12-8.592-16.667-13.358-23.097-19.846-6.426-6.488-10.203-11.656-13.443-18.393-2.069-4.303-3.49-8.449-4.376-12.756C1.647%2055.17%201.494%2053.316%201.5%2045.26c.008-10.573.357-12.332%203.828-19.385%202.58-5.239%204.54-7.997%208.62-12.141%203.963-4.022%206.535-5.85%2012.099-8.6%206.18-3.058%2010.651-3.86%2019.86-3.562%207.157.231%209.777.943%2015.45%204.208%208.93%205.138%2015.858%2013.387%2017.776%2021.161.314%201.272.637%202.313.72%202.313.082%200%20.804-1.487%201.606-3.305%202.727-6.18%205.26-9.95%209.284-13.828%2012.32-11.88%2031.744-14.027%2047.45-5.25%206.414%203.584%2011.633%208.802%2015.676%2015.675%203.184%205.41%204.812%2012.595%205.09%2022.464.401%2014.298-2.214%2024.207-9.175%2034.766-2.762%204.19-4.805%206.73-8.637%2010.73-6.183%206.458-11.758%2011.205-24.921%2021.216-8.306%206.317-13.23%2010.378-20.355%2016.8-5.71%205.143-14.557%2014.099-15.41%2015.596-.372.654-.709%201.189-.748%201.189-.039%200-.544-.816-1.124-1.814z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%222.813%22/%3E%3Ctext%20y=%22136.277%22%20x=%22124.207%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2253.914%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22136.277%22%20x=%22124.207%22%20font-weight=%22700%22%20font-size=%2230.808%22%3E4Hz%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "95281825-5850-408d-9040-93866452f146",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 328,
                "y": 264
              }
            },
            {
              "id": "7fbb0c58-cf32-4b7c-a563-4ca90483b38a",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 0,
                "y": 264
              }
            },
            {
              "id": "e5fa97d8-48f3-476e-869d-db06a7129fbb",
              "type": "basic.constant",
              "data": {
                "name": "HZ",
                "value": "4",
                "local": true
              },
              "position": {
                "x": 176,
                "y": 144
              }
            },
            {
              "id": "a5871f1a-81de-44d4-a5f5-68d16db8c8c8",
              "type": "0e64bc728cbb881007bf629e44dc5b5b0fa3a34c",
              "position": {
                "x": 176,
                "y": 264
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "43040f78-9e91-4e32-af92-9f3f1a47ee35",
              "type": "basic.info",
              "data": {
                "info": "Creado a partir de un **corazón  \ngenérico**, dando el valor adecuado  \na su parámetro frecuencia",
                "readonly": true
              },
              "position": {
                "x": -32,
                "y": 56
              },
              "size": {
                "width": 320,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "a5871f1a-81de-44d4-a5f5-68d16db8c8c8",
                "port": "70887b0b-826c-4150-a873-605b77da8272"
              },
              "target": {
                "block": "95281825-5850-408d-9040-93866452f146",
                "port": "in"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "7fbb0c58-cf32-4b7c-a563-4ca90483b38a",
                "port": "out"
              },
              "target": {
                "block": "a5871f1a-81de-44d4-a5f5-68d16db8c8c8",
                "port": "4656865c-bcf1-4668-8e13-9221e32222d3"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "e5fa97d8-48f3-476e-869d-db06a7129fbb",
                "port": "constant-out"
              },
              "target": {
                "block": "a5871f1a-81de-44d4-a5f5-68d16db8c8c8",
                "port": "319cdca8-e777-4c8b-88ca-f885ba96ad06"
              },
              "vertices": []
            }
          ]
        }
      }
    },
    "847695050c24a20b6b0bf53d7776ed2a49dff53d": {
      "package": {
        "name": "Corazon_2KHz",
        "version": "0.1",
        "description": "Bombear 2000 bits por segundo",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22215.59%22%20height=%22156.392%22%20viewBox=%220%200%20202.11681%20146.61832%22%3E%3Cpath%20d=%22M78.495%20143.399c-2.574-4.43-6.565-8.766-14.127-15.35-4.096-3.566-6.588-5.546-20.775-16.506-11.12-8.593-16.668-13.36-23.098-19.847C14.07%2085.208%2010.293%2080.04%207.052%2073.303%204.984%2069%203.562%2064.854%202.676%2060.547c-1.123-5.472-1.275-7.324-1.27-15.382.008-10.573.357-12.332%203.828-19.385%202.58-5.239%204.54-7.997%208.62-12.141%203.963-4.022%206.536-5.85%2012.1-8.6%206.18-3.057%2010.65-3.859%2019.86-3.562%207.157.232%209.776.943%2015.45%204.208%208.929%205.138%2015.858%2013.387%2017.776%2021.162.313%201.27.636%202.312.719%202.312.082%200%20.805-1.487%201.606-3.305%202.727-6.179%205.26-9.95%209.284-13.828%2012.32-11.88%2031.744-14.027%2047.45-5.25%206.414%203.584%2011.633%208.802%2015.676%2015.675%203.184%205.41%204.812%2012.595%205.09%2022.464.402%2014.298-2.214%2024.207-9.174%2034.766-2.763%204.191-4.806%206.73-8.638%2010.73-6.182%206.458-11.758%2011.205-24.92%2021.216-8.307%206.317-13.23%2010.378-20.355%2016.8-5.71%205.143-14.558%2014.1-15.41%2015.596-.372.655-.71%201.19-.749%201.19-.039%200-.544-.816-1.124-1.814z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%222.813%22/%3E%3Ctext%20y=%22136.183%22%20x=%22114.834%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2253.914%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22136.183%22%20x=%22114.834%22%20font-weight=%22700%22%20font-size=%2230.808%22%3E2KHz%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "8c55f855-ff63-4c7e-9fdf-6dc944c3fd01",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 336,
                "y": 200
              }
            },
            {
              "id": "2cce1142-ac36-4a4e-afc6-35137f9f23c2",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 8,
                "y": 200
              }
            },
            {
              "id": "1278b175-36a4-4af7-ae6b-5c20dfb87920",
              "type": "basic.constant",
              "data": {
                "name": "HZ",
                "value": "2000",
                "local": true
              },
              "position": {
                "x": 184,
                "y": 80
              }
            },
            {
              "id": "69ad14b8-f03b-43fb-8b67-b6e9b8bd04de",
              "type": "0e64bc728cbb881007bf629e44dc5b5b0fa3a34c",
              "position": {
                "x": 184,
                "y": 200
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "46e6c1e9-9fbe-4ec4-b1e5-a96f8abcceff",
              "type": "basic.info",
              "data": {
                "info": "Creado a partir de un **corazón  \ngenérico**, dando el valor adecuado  \na su parámetro frecuencia",
                "readonly": true
              },
              "position": {
                "x": -24,
                "y": -8
              },
              "size": {
                "width": 320,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "69ad14b8-f03b-43fb-8b67-b6e9b8bd04de",
                "port": "70887b0b-826c-4150-a873-605b77da8272"
              },
              "target": {
                "block": "8c55f855-ff63-4c7e-9fdf-6dc944c3fd01",
                "port": "in"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "2cce1142-ac36-4a4e-afc6-35137f9f23c2",
                "port": "out"
              },
              "target": {
                "block": "69ad14b8-f03b-43fb-8b67-b6e9b8bd04de",
                "port": "4656865c-bcf1-4668-8e13-9221e32222d3"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "1278b175-36a4-4af7-ae6b-5c20dfb87920",
                "port": "constant-out"
              },
              "target": {
                "block": "69ad14b8-f03b-43fb-8b67-b6e9b8bd04de",
                "port": "319cdca8-e777-4c8b-88ca-f885ba96ad06"
              },
              "vertices": []
            }
          ]
        }
      }
    },
    "c3c2cf677c11bd4c8025b170cc461a846b08821e": {
      "package": {
        "name": "Baliza-luminosa",
        "version": "0.1",
        "description": "Baliza luminosa de 1 led. Parpadea a 2Hz cuando se activa",
        "author": "0.1",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20262.57626%20292.25879%22%20width=%22262.576%22%20height=%22292.259%22%3E%3Cpath%20d=%22M222.476%20260.293v26.258H39.815v-26.258c0-6.308%205.108-11.416%2011.416-11.416H211.06c6.307%200%2011.416%205.108%2011.416%2011.416z%22%20fill=%22#57555c%22/%3E%3Cpath%20d=%22M211.06%20237.46v11.417H51.23V237.46c0-6.307%205.11-11.416%2011.417-11.416h136.997c6.307%200%2011.416%205.109%2011.416%2011.416z%22%20fill=%22#fedb51%22/%3E%3Cpath%20d=%22M199.644%20131.288v94.756H62.647v-94.756c0-37.77%2030.727-68.498%2068.498-68.498s68.499%2030.727%2068.499%2068.498z%22%20fill=%22#fd6244%22/%3E%3Cpath%20d=%22M131.288%2091.33a5.71%205.71%200%200%200%205.708-5.707%205.71%205.71%200%200%200-5.708-5.708%205.71%205.71%200%200%200-5.708%205.708%205.71%205.71%200%200%200%205.708%205.708z%22/%3E%3Cpath%20d=%22M39.957%20292.259H222.62a5.708%205.708%200%200%200%205.708-5.708v-26.258c0-7.441-4.772-13.786-11.416-16.143v-6.69c0-7.44-4.773-13.786-11.417-16.142v-90.03c0-40.917-33.288-74.206-74.206-74.206-40.918%200-74.206%2033.289-74.206%2074.206v90.03c-6.644%202.356-11.417%208.7-11.417%2016.142v6.69c-6.643%202.357-11.416%208.701-11.416%2016.143v26.258a5.708%205.708%200%200%200%205.708%205.708zm91.331-223.76c34.623%200%2062.79%2028.167%2062.79%2062.79v89.047H68.498v-89.048c0-34.622%2028.168-62.79%2062.79-62.79zM62.79%20231.751h136.996a5.715%205.715%200%200%201%205.708%205.708v5.708H57.082v-5.708a5.715%205.715%200%200%201%205.708-5.708zm-17.125%2028.541a5.715%205.715%200%200%201%205.709-5.708h159.829a5.715%205.715%200%200%201%205.708%205.708v20.55H45.665zM262.576%20131.288a5.708%205.708%200%200%200-5.708-5.708H222.62a5.708%205.708%200%200%200%200%2011.416h34.25a5.708%205.708%200%200%200%205.707-5.708zM0%20131.288a5.708%205.708%200%200%200%205.708%205.708h34.25a5.708%205.708%200%200%200%200-11.416H5.707A5.708%205.708%200%200%200%200%20131.288zM199.907%2070.742l24.214-24.214a5.709%205.709%200%200%200-8.073-8.073l-24.214%2024.214a5.709%205.709%200%200%200%208.073%208.073zM70.743%2070.742a5.709%205.709%200%200%200%200-8.073L46.529%2038.455a5.709%205.709%200%200%200-8.074%208.073L62.67%2070.742a5.709%205.709%200%200%200%208.073%200zM136.996%2039.957V5.708a5.708%205.708%200%200%200-11.416%200v34.25a5.708%205.708%200%200%200%2011.416%200z%22/%3E%3Cpath%20d=%22M146.001%2094.135c15.336%206.097%2025.244%2020.68%2025.244%2037.153a5.708%205.708%200%200%200%2011.417%200c0-10.48-3.149-20.569-9.104-29.176-5.814-8.4-13.884-14.827-23.34-18.586a5.709%205.709%200%200%200-4.217%2010.61z%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "8c4a3556-e438-423f-a475-cd8a155337e0",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 16,
                "y": 168
              }
            },
            {
              "id": "6bfaf689-c78a-434e-89c3-4c70b580117c",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 528,
                "y": 184
              }
            },
            {
              "id": "49a24d5e-2dd4-4b5d-bb0e-6718a59d9a38",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 16,
                "y": 248
              }
            },
            {
              "id": "5e9eaf01-4471-4a14-9751-b97bff1d5231",
              "type": "46c6caf136ed8deb60b1f86ad87388b243954154",
              "position": {
                "x": 184,
                "y": 168
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "d2e6457c-b9b6-41c0-86b6-8e7b8db9b909",
              "type": "b2090f68ef94fd3c5c0eaea93eb6ba7e80aff0b6",
              "position": {
                "x": 368,
                "y": 184
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "33d38582-5cff-445a-b03a-52389cfe0916",
              "type": "basic.info",
              "data": {
                "info": "**Baliza luminosa**\n\nParpadeo del LED a 2Hz",
                "readonly": true
              },
              "position": {
                "x": 48,
                "y": 40
              },
              "size": {
                "width": 456,
                "height": 72
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "d2e6457c-b9b6-41c0-86b6-8e7b8db9b909",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "6bfaf689-c78a-434e-89c3-4c70b580117c",
                "port": "in"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "8c4a3556-e438-423f-a475-cd8a155337e0",
                "port": "out"
              },
              "target": {
                "block": "5e9eaf01-4471-4a14-9751-b97bff1d5231",
                "port": "b3b20031-2450-4a38-9bb1-52d7731142a7"
              }
            },
            {
              "source": {
                "block": "5e9eaf01-4471-4a14-9751-b97bff1d5231",
                "port": "7340e107-20a2-41fb-b78e-132f842054f4"
              },
              "target": {
                "block": "d2e6457c-b9b6-41c0-86b6-8e7b8db9b909",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "49a24d5e-2dd4-4b5d-bb0e-6718a59d9a38",
                "port": "out"
              },
              "target": {
                "block": "d2e6457c-b9b6-41c0-86b6-8e7b8db9b909",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            }
          ]
        }
      }
    },
    "46c6caf136ed8deb60b1f86ad87388b243954154": {
      "package": {
        "name": "Corazon_2Hz",
        "version": "0.1",
        "description": "Bombear 2 bits por segundo",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22200.13%22%20height=%22156.592%22%20viewBox=%220%200%20187.62306%20146.80587%22%3E%3Cpath%20d=%22M78.589%20143.492c-2.574-4.428-6.565-8.765-14.127-15.349-4.096-3.566-6.588-5.547-20.776-16.507-11.12-8.592-16.667-13.358-23.097-19.846-6.426-6.488-10.203-11.656-13.443-18.393-2.069-4.303-3.49-8.449-4.376-12.756C1.647%2055.17%201.494%2053.316%201.5%2045.26c.008-10.573.357-12.332%203.828-19.385%202.58-5.239%204.54-7.997%208.62-12.141%203.963-4.022%206.535-5.85%2012.099-8.6%206.18-3.058%2010.651-3.86%2019.86-3.562%207.157.231%209.777.943%2015.45%204.208%208.93%205.138%2015.858%2013.387%2017.776%2021.161.314%201.272.637%202.313.72%202.313.082%200%20.804-1.487%201.606-3.305%202.727-6.18%205.26-9.95%209.284-13.828%2012.32-11.88%2031.744-14.027%2047.45-5.25%206.414%203.584%2011.633%208.802%2015.676%2015.675%203.184%205.41%204.812%2012.595%205.09%2022.464.401%2014.298-2.214%2024.207-9.175%2034.766-2.762%204.19-4.805%206.73-8.637%2010.73-6.183%206.458-11.758%2011.205-24.921%2021.216-8.306%206.317-13.23%2010.378-20.355%2016.8-5.71%205.143-14.557%2014.099-15.41%2015.596-.372.654-.709%201.189-.748%201.189-.039%200-.544-.816-1.124-1.814z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%222.813%22/%3E%3Ctext%20y=%22136.277%22%20x=%22124.207%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2253.914%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22136.277%22%20x=%22124.207%22%20font-weight=%22700%22%20font-size=%2230.808%22%3E2Hz%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "7340e107-20a2-41fb-b78e-132f842054f4",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 512,
                "y": 208
              }
            },
            {
              "id": "b3b20031-2450-4a38-9bb1-52d7731142a7",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 184,
                "y": 208
              }
            },
            {
              "id": "d1294315-16b7-4a0d-b955-ff89709fada0",
              "type": "basic.constant",
              "data": {
                "name": "HZ",
                "value": "2",
                "local": true
              },
              "position": {
                "x": 360,
                "y": 88
              }
            },
            {
              "id": "e0d41cb1-3dce-4bad-8bd3-55a8d454455c",
              "type": "0e64bc728cbb881007bf629e44dc5b5b0fa3a34c",
              "position": {
                "x": 360,
                "y": 208
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "6e84c2db-d26a-4c0f-a689-6363d34dad3b",
              "type": "basic.info",
              "data": {
                "info": "Creado a partir de un **corazón  \ngenérico**, dando el valor adecuado  \na su parámetro frecuencia",
                "readonly": true
              },
              "position": {
                "x": 152,
                "y": 0
              },
              "size": {
                "width": 320,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "e0d41cb1-3dce-4bad-8bd3-55a8d454455c",
                "port": "70887b0b-826c-4150-a873-605b77da8272"
              },
              "target": {
                "block": "7340e107-20a2-41fb-b78e-132f842054f4",
                "port": "in"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "b3b20031-2450-4a38-9bb1-52d7731142a7",
                "port": "out"
              },
              "target": {
                "block": "e0d41cb1-3dce-4bad-8bd3-55a8d454455c",
                "port": "4656865c-bcf1-4668-8e13-9221e32222d3"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "d1294315-16b7-4a0d-b955-ff89709fada0",
                "port": "constant-out"
              },
              "target": {
                "block": "e0d41cb1-3dce-4bad-8bd3-55a8d454455c",
                "port": "319cdca8-e777-4c8b-88ca-f885ba96ad06"
              },
              "vertices": []
            }
          ]
        }
      }
    }
  }
}