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
          "id": "17eaf983-6a91-46a4-9b52-d1aab5174aed",
          "type": "basic.output",
          "data": {
            "name": "Zumbador",
            "pins": [
              {
                "index": "0",
                "name": "D13",
                "value": "144"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": -424,
            "y": 256
          }
        },
        {
          "id": "a634a217-3f44-4ed9-8479-1cb962d910d9",
          "type": "basic.output",
          "data": {
            "name": "DISP",
            "range": "[6:0]",
            "pins": [
              {
                "index": "6",
                "name": "GP7",
                "value": "50"
              },
              {
                "index": "5",
                "name": "GP6",
                "value": "49"
              },
              {
                "index": "4",
                "name": "GP5",
                "value": "43"
              },
              {
                "index": "3",
                "name": "GP4",
                "value": "42"
              },
              {
                "index": "2",
                "name": "GP3",
                "value": "41"
              },
              {
                "index": "1",
                "name": "GP2",
                "value": "39"
              },
              {
                "index": "0",
                "name": "GP1",
                "value": "38"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 904,
            "y": 448
          }
        },
        {
          "id": "3f975624-9422-4f53-bc4f-a661e0f7188e",
          "type": "basic.input",
          "data": {
            "name": "Sensor_IR",
            "pins": [
              {
                "index": "0",
                "name": "D0",
                "value": "119"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -1024,
            "y": 520
          }
        },
        {
          "id": "978dc826-3573-43df-a2c2-19f9784e848b",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": -840,
            "y": 608
          }
        },
        {
          "id": "25c0f33d-2858-48ae-974f-13129f19ecd0",
          "type": "basic.input",
          "data": {
            "name": "Botón",
            "pins": [
              {
                "index": "0",
                "name": "SW1",
                "value": "10"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -632,
            "y": 624
          }
        },
        {
          "id": "272ba932-b5c5-48db-8b06-28915b8b0bcc",
          "type": "basic.input",
          "data": {
            "name": "switch",
            "range": "[1:0]",
            "pins": [
              {
                "index": "1",
                "name": "D12",
                "value": "143"
              },
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
            "x": 152,
            "y": 776
          }
        },
        {
          "id": "02d50fe6-9072-49cb-b46b-67f21e510329",
          "type": "basic.constant",
          "data": {
            "name": "",
            "value": "400",
            "local": false
          },
          "position": {
            "x": -720,
            "y": 144
          }
        },
        {
          "id": "6ea33d13-0377-4d5c-b1e7-390fe92dfc84",
          "type": "basic.constant",
          "data": {
            "name": "ms",
            "value": "10",
            "local": false
          },
          "position": {
            "x": -704,
            "y": 384
          }
        },
        {
          "id": "7d73f55a-37be-49d7-abfa-5028158f5646",
          "type": "basic.constant",
          "data": {
            "name": "Módulo",
            "value": "3",
            "local": false
          },
          "position": {
            "x": -424,
            "y": 352
          }
        },
        {
          "id": "f9d7cffb-29bb-462a-a6d1-b14507005885",
          "type": "basic.constant",
          "data": {
            "name": "Módulo",
            "value": "10",
            "local": false
          },
          "position": {
            "x": -120,
            "y": 352
          }
        },
        {
          "id": "22a22dc2-31cc-428e-8405-bd8c3a59c746",
          "type": "basic.constant",
          "data": {
            "name": "Módulo",
            "value": "10",
            "local": false
          },
          "position": {
            "x": 88,
            "y": 344
          }
        },
        {
          "id": "d1fb7d8f-4d9f-4a1e-ad92-e4dccbbf8872",
          "type": "basic.constant",
          "data": {
            "name": "Módulo",
            "value": "10",
            "local": false
          },
          "position": {
            "x": 304,
            "y": 336
          }
        },
        {
          "id": "ae3c7e04-1fd7-4665-a220-6c5048c14349",
          "type": "20a5fb31eb558c71abf31d3b29443214db14c843",
          "position": {
            "x": 752,
            "y": 544
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "069ec790-09ef-4252-a293-be6871e0c49e",
          "type": "3d2d16068c495f9dcae3633c3321a073853d155f",
          "position": {
            "x": -120,
            "y": 448
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "4862c963-fbee-4c4b-83ec-b13a97bcbd2f",
          "type": "2ad1f9ba564ce18aac9465f95b70d3a84a6052bb",
          "position": {
            "x": -864,
            "y": 504
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "f72a52f8-042c-4a0f-a877-5d60b29ada24",
          "type": "f91a2729e24bdc5bb7370785202c65c6526d7a01",
          "position": {
            "x": -704,
            "y": 488
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "04d7f723-1564-4eb3-9bda-41ddd6422515",
          "type": "0e64bc728cbb881007bf629e44dc5b5b0fa3a34c",
          "position": {
            "x": -720,
            "y": 240
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "54c72024-bdae-4379-9888-657ce9b10ca3",
          "type": "b2090f68ef94fd3c5c0eaea93eb6ba7e80aff0b6",
          "position": {
            "x": -560,
            "y": 256
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "d93136ee-bdac-4b7e-8f02-aca81eb68306",
          "type": "3d2d16068c495f9dcae3633c3321a073853d155f",
          "position": {
            "x": 88,
            "y": 440
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "f52ff543-5c62-47fe-8ae3-e381af1f7f37",
          "type": "3d2d16068c495f9dcae3633c3321a073853d155f",
          "position": {
            "x": 304,
            "y": 432
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "429c6edd-45f8-4046-bc7b-611c52361fe8",
          "type": "95dec985861a5d56fd374aa9021950940d48207d",
          "position": {
            "x": 560,
            "y": 528
          },
          "size": {
            "width": 96,
            "height": 192
          }
        },
        {
          "id": "1a6bc60d-f5db-4e54-993b-893d4caf6840",
          "type": "fc9dacc62ad25cd2832c3442bf277af9b708249b",
          "position": {
            "x": 376,
            "y": 656
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "af665aee-b676-4bba-8b1d-16e392ceb9bb",
          "type": "basic.info",
          "data": {
            "info": "**Display DEC**",
            "readonly": true
          },
          "position": {
            "x": 760,
            "y": 512
          },
          "size": {
            "width": 136,
            "height": 32
          }
        },
        {
          "id": "bbe05809-ef6c-4fc1-80df-5e7220a92ba3",
          "type": "basic.info",
          "data": {
            "info": "**Contador**  \n**Unidades**",
            "readonly": true
          },
          "position": {
            "x": -104,
            "y": 552
          },
          "size": {
            "width": 120,
            "height": 48
          }
        },
        {
          "id": "2ca68880-80cd-41a2-8fed-797035a26269",
          "type": "basic.info",
          "data": {
            "info": "**Contador**  \n**Decenas**",
            "readonly": true
          },
          "position": {
            "x": 104,
            "y": 544
          },
          "size": {
            "width": 120,
            "height": 72
          }
        },
        {
          "id": "00af1e53-f601-4a48-bad2-4de5fa57503a",
          "type": "basic.info",
          "data": {
            "info": "**Contador**  \n**Centenas**",
            "readonly": true
          },
          "position": {
            "x": 320,
            "y": 536
          },
          "size": {
            "width": 120,
            "height": 72
          }
        },
        {
          "id": "e344304c-df82-4325-999c-9d1e6a5a74bd",
          "type": "basic.info",
          "data": {
            "info": "**Selección del dígito**  \na mostrar en el display",
            "readonly": true
          },
          "position": {
            "x": 136,
            "y": 712
          },
          "size": {
            "width": 200,
            "height": 56
          }
        },
        {
          "id": "70568947-58c4-4fd7-a922-cdbcd1ccb6e3",
          "type": "basic.info",
          "data": {
            "info": "Emitir pitido al  \ndetectar brazo  \ndel spinner",
            "readonly": true
          },
          "position": {
            "x": -544,
            "y": 176
          },
          "size": {
            "width": 144,
            "height": 72
          }
        },
        {
          "id": "c4282023-3e79-43bb-8c5e-77e72899b373",
          "type": "basic.info",
          "data": {
            "info": "**Reset**",
            "readonly": true
          },
          "position": {
            "x": -608,
            "y": 592
          },
          "size": {
            "width": 112,
            "height": 32
          }
        },
        {
          "id": "c55c81c2-cf2d-490e-8cd4-e3f24a05006f",
          "type": "basic.info",
          "data": {
            "info": "**LED Testigo**",
            "readonly": true
          },
          "position": {
            "x": -832,
            "y": 592
          },
          "size": {
            "width": 144,
            "height": 40
          }
        },
        {
          "id": "21b51710-64f7-4d9f-91cb-c9da7c606f77",
          "type": "basic.info",
          "data": {
            "info": "Evento:\nBrazo detectado",
            "readonly": true
          },
          "position": {
            "x": -560,
            "y": 488
          },
          "size": {
            "width": 152,
            "height": 56
          }
        },
        {
          "id": "81bbcbce-2dd5-4870-99d1-c173a03eeb1c",
          "type": "basic.info",
          "data": {
            "info": "**Solución ejercicio 27.1:** (5 Bitpoints). Contador de vueltas de un spinner, de 0 a 999\n\nCrear un circuito capaz de contar las **vueltas de un spinner**. Debe tener **3 dígitos decimales**, por lo que  \ncontará desde **000** hasta **999**. Para detectar los brazos del spinner se usará **un sensor de infrarrojos IR**.  \nCada vez que uno de los brazos del spinner sea detectado por el IR se emitirá un **pitido de 10ms**  \nSe colocará un **display de 7 segmentos** para ver el dígito del contador seleccionado: unidades, decenas o  \ncentenas. Tendrá un **pulsador de reset** para iniciar la cuenta a cero",
            "readonly": true
          },
          "position": {
            "x": -1096,
            "y": -144
          },
          "size": {
            "width": 840,
            "height": 128
          }
        },
        {
          "id": "71f5d5a4-e3b0-4e36-b896-4269e2f8371c",
          "type": "basic.info",
          "data": {
            "info": "**Mostrar en el**  \n**display el dígito**\n**seleccionado**",
            "readonly": true
          },
          "position": {
            "x": 568,
            "y": 448
          },
          "size": {
            "width": 184,
            "height": 72
          }
        },
        {
          "id": "78fd6674-2099-4c87-863f-1ab5e3773087",
          "type": "e79148d23652be6d5149f8f6881f7f47bd958497",
          "position": {
            "x": -424,
            "y": 456
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "e3f8bc26-40ed-46aa-959e-59bd54aae661",
          "type": "basic.info",
          "data": {
            "info": "**Detector de**  \n**vueltas**\n**Unidades**",
            "readonly": true
          },
          "position": {
            "x": -424,
            "y": 552
          },
          "size": {
            "width": 120,
            "height": 48
          }
        },
        {
          "id": "b99e95e9-69f6-499f-8c54-fce2ab7c701f",
          "type": "basic.info",
          "data": {
            "info": "Evento:\nVuelta completada",
            "readonly": true
          },
          "position": {
            "x": -288,
            "y": 480
          },
          "size": {
            "width": 152,
            "height": 56
          }
        },
        {
          "id": "a0a141b5-c32c-4d56-8bc2-5a6856017ea9",
          "type": "basic.info",
          "data": {
            "info": "**IR de pulsos**",
            "readonly": true
          },
          "position": {
            "x": -856,
            "y": 472
          },
          "size": {
            "width": 152,
            "height": 40
          }
        },
        {
          "id": "d0e6a296-fc9d-4fc2-b4f2-99c80b24ebc2",
          "type": "basic.info",
          "data": {
            "info": "[Vídeo en Youtube](https://www.youtube.com/watch?v=WpYWPK14Y6Q): ",
            "readonly": true
          },
          "position": {
            "x": -256,
            "y": -112
          },
          "size": {
            "width": 608,
            "height": 80
          }
        },
        {
          "id": "d78acd2a-0227-4742-9796-42f144f80fe2",
          "type": "basic.info",
          "data": {
            "info": "[![Click to see the youtube video](http://img.youtube.com/vi/WpYWPK14Y6Q/0.jpg)](https://www.youtube.com/watch?v=WpYWPK14Y6Q)",
            "readonly": true
          },
          "position": {
            "x": -256,
            "y": -88
          },
          "size": {
            "width": 776,
            "height": 80
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "ae3c7e04-1fd7-4665-a220-6c5048c14349",
            "port": "41c13e73-0b44-430e-94c9-a32415133ae4"
          },
          "target": {
            "block": "a634a217-3f44-4ed9-8479-1cb962d910d9",
            "port": "in"
          },
          "vertices": [],
          "size": 7
        },
        {
          "source": {
            "block": "3f975624-9422-4f53-bc4f-a661e0f7188e",
            "port": "out"
          },
          "target": {
            "block": "4862c963-fbee-4c4b-83ec-b13a97bcbd2f",
            "port": "add059ff-0fce-4060-b7d2-9bfe2ab760ef"
          }
        },
        {
          "source": {
            "block": "3f975624-9422-4f53-bc4f-a661e0f7188e",
            "port": "out"
          },
          "target": {
            "block": "978dc826-3573-43df-a2c2-19f9784e848b",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4862c963-fbee-4c4b-83ec-b13a97bcbd2f",
            "port": "bd2f26b1-a39e-46fe-b762-bc399df80c73"
          },
          "target": {
            "block": "f72a52f8-042c-4a0f-a877-5d60b29ada24",
            "port": "61d11f03-6fbc-4467-a947-d546fa6f6429"
          }
        },
        {
          "source": {
            "block": "6ea33d13-0377-4d5c-b1e7-390fe92dfc84",
            "port": "constant-out"
          },
          "target": {
            "block": "f72a52f8-042c-4a0f-a877-5d60b29ada24",
            "port": "7ca578e5-8e36-4c04-bbea-144418c8e9af"
          }
        },
        {
          "source": {
            "block": "02d50fe6-9072-49cb-b46b-67f21e510329",
            "port": "constant-out"
          },
          "target": {
            "block": "04d7f723-1564-4eb3-9bda-41ddd6422515",
            "port": "319cdca8-e777-4c8b-88ca-f885ba96ad06"
          }
        },
        {
          "source": {
            "block": "54c72024-bdae-4379-9888-657ce9b10ca3",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "17eaf983-6a91-46a4-9b52-d1aab5174aed",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "f72a52f8-042c-4a0f-a877-5d60b29ada24",
            "port": "c45dab76-9d0f-4742-9e4d-3048637d245d"
          },
          "target": {
            "block": "54c72024-bdae-4379-9888-657ce9b10ca3",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          }
        },
        {
          "source": {
            "block": "04d7f723-1564-4eb3-9bda-41ddd6422515",
            "port": "70887b0b-826c-4150-a873-605b77da8272"
          },
          "target": {
            "block": "54c72024-bdae-4379-9888-657ce9b10ca3",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "25c0f33d-2858-48ae-974f-13129f19ecd0",
            "port": "out"
          },
          "target": {
            "block": "069ec790-09ef-4252-a293-be6871e0c49e",
            "port": "743b5299-2d89-4783-b7c9-12a5b36df406"
          }
        },
        {
          "source": {
            "block": "f9d7cffb-29bb-462a-a6d1-b14507005885",
            "port": "constant-out"
          },
          "target": {
            "block": "069ec790-09ef-4252-a293-be6871e0c49e",
            "port": "eb9f9c33-e717-43f0-98eb-dbd9c278fa8c"
          }
        },
        {
          "source": {
            "block": "22a22dc2-31cc-428e-8405-bd8c3a59c746",
            "port": "constant-out"
          },
          "target": {
            "block": "d93136ee-bdac-4b7e-8f02-aca81eb68306",
            "port": "eb9f9c33-e717-43f0-98eb-dbd9c278fa8c"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "069ec790-09ef-4252-a293-be6871e0c49e",
            "port": "cc17ff4d-1c27-4dc3-a14c-da730d54750e"
          },
          "target": {
            "block": "d93136ee-bdac-4b7e-8f02-aca81eb68306",
            "port": "26aba23f-8567-4e9b-bd45-c26724030f33"
          }
        },
        {
          "source": {
            "block": "25c0f33d-2858-48ae-974f-13129f19ecd0",
            "port": "out"
          },
          "target": {
            "block": "d93136ee-bdac-4b7e-8f02-aca81eb68306",
            "port": "743b5299-2d89-4783-b7c9-12a5b36df406"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "d1fb7d8f-4d9f-4a1e-ad92-e4dccbbf8872",
            "port": "constant-out"
          },
          "target": {
            "block": "f52ff543-5c62-47fe-8ae3-e381af1f7f37",
            "port": "eb9f9c33-e717-43f0-98eb-dbd9c278fa8c"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "d93136ee-bdac-4b7e-8f02-aca81eb68306",
            "port": "cc17ff4d-1c27-4dc3-a14c-da730d54750e"
          },
          "target": {
            "block": "f52ff543-5c62-47fe-8ae3-e381af1f7f37",
            "port": "26aba23f-8567-4e9b-bd45-c26724030f33"
          }
        },
        {
          "source": {
            "block": "25c0f33d-2858-48ae-974f-13129f19ecd0",
            "port": "out"
          },
          "target": {
            "block": "f52ff543-5c62-47fe-8ae3-e381af1f7f37",
            "port": "743b5299-2d89-4783-b7c9-12a5b36df406"
          }
        },
        {
          "source": {
            "block": "429c6edd-45f8-4046-bc7b-611c52361fe8",
            "port": "e8a00c7d-5a56-4696-9d66-93e53aa3650f"
          },
          "target": {
            "block": "ae3c7e04-1fd7-4665-a220-6c5048c14349",
            "port": "ad153a4b-fef0-423f-a84d-61a59c3283e5"
          },
          "size": 4
        },
        {
          "source": {
            "block": "f52ff543-5c62-47fe-8ae3-e381af1f7f37",
            "port": "c659caa2-1cf7-4da3-855a-2b0c0ecc7510"
          },
          "target": {
            "block": "429c6edd-45f8-4046-bc7b-611c52361fe8",
            "port": "b91b637a-5271-48b8-928c-aa9bfc9730c4"
          },
          "size": 4
        },
        {
          "source": {
            "block": "f52ff543-5c62-47fe-8ae3-e381af1f7f37",
            "port": "c659caa2-1cf7-4da3-855a-2b0c0ecc7510"
          },
          "target": {
            "block": "429c6edd-45f8-4046-bc7b-611c52361fe8",
            "port": "9bd56563-2c49-4aa6-a900-5049c4b14aca"
          },
          "vertices": [],
          "size": 4
        },
        {
          "source": {
            "block": "d93136ee-bdac-4b7e-8f02-aca81eb68306",
            "port": "c659caa2-1cf7-4da3-855a-2b0c0ecc7510"
          },
          "target": {
            "block": "429c6edd-45f8-4046-bc7b-611c52361fe8",
            "port": "23f2d4fe-6825-4aa6-9d81-f6f73a555218"
          },
          "vertices": [
            {
              "x": 216,
              "y": 584
            }
          ],
          "size": 4
        },
        {
          "source": {
            "block": "069ec790-09ef-4252-a293-be6871e0c49e",
            "port": "c659caa2-1cf7-4da3-855a-2b0c0ecc7510"
          },
          "target": {
            "block": "429c6edd-45f8-4046-bc7b-611c52361fe8",
            "port": "871e08b8-a80a-4476-ae18-08e962f0fa97"
          },
          "vertices": [
            {
              "x": 16,
              "y": 552
            }
          ],
          "size": 4
        },
        {
          "source": {
            "block": "1a6bc60d-f5db-4e54-993b-893d4caf6840",
            "port": "0f7487e5-b070-4277-bba6-acf69934afca"
          },
          "target": {
            "block": "429c6edd-45f8-4046-bc7b-611c52361fe8",
            "port": "2cd7e8ed-1ed2-4a5c-a72a-337d703c9712"
          }
        },
        {
          "source": {
            "block": "1a6bc60d-f5db-4e54-993b-893d4caf6840",
            "port": "f5a71d7b-de20-4527-80c8-0eb20de0dc77"
          },
          "target": {
            "block": "429c6edd-45f8-4046-bc7b-611c52361fe8",
            "port": "1e637a79-4a6d-495c-bcac-9664bdbe4b94"
          }
        },
        {
          "source": {
            "block": "272ba932-b5c5-48db-8b06-28915b8b0bcc",
            "port": "out"
          },
          "target": {
            "block": "1a6bc60d-f5db-4e54-993b-893d4caf6840",
            "port": "a409d207-7594-4558-8e15-89712262cf5b"
          },
          "size": 2
        },
        {
          "source": {
            "block": "7d73f55a-37be-49d7-abfa-5028158f5646",
            "port": "constant-out"
          },
          "target": {
            "block": "78fd6674-2099-4c87-863f-1ab5e3773087",
            "port": "eb9f9c33-e717-43f0-98eb-dbd9c278fa8c"
          }
        },
        {
          "source": {
            "block": "f72a52f8-042c-4a0f-a877-5d60b29ada24",
            "port": "8c6fda76-1ba0-4ef8-a53d-7bc8a9db4454"
          },
          "target": {
            "block": "78fd6674-2099-4c87-863f-1ab5e3773087",
            "port": "26aba23f-8567-4e9b-bd45-c26724030f33"
          }
        },
        {
          "source": {
            "block": "25c0f33d-2858-48ae-974f-13129f19ecd0",
            "port": "out"
          },
          "target": {
            "block": "78fd6674-2099-4c87-863f-1ab5e3773087",
            "port": "743b5299-2d89-4783-b7c9-12a5b36df406"
          }
        },
        {
          "source": {
            "block": "78fd6674-2099-4c87-863f-1ab5e3773087",
            "port": "cc17ff4d-1c27-4dc3-a14c-da730d54750e"
          },
          "target": {
            "block": "069ec790-09ef-4252-a293-be6871e0c49e",
            "port": "26aba23f-8567-4e9b-bd45-c26724030f33"
          }
        }
      ]
    }
  },
  "dependencies": {
    "20a5fb31eb558c71abf31d3b29443214db14c843": {
      "package": {
        "name": "DisplayDEC",
        "version": "0.1",
        "description": "DisplayDEC. Decodificador BCD a 7 segmentos. Cátodo común",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22165.784%22%20height=%22222.76%22%20viewBox=%220%200%2043.863567%2058.938523%22%3E%3Crect%20width=%2242.906%22%20height=%2257.981%22%20x=%226.108%22%20y=%22-145.921%22%20ry=%22.555%22%20fill=%22#8a7a7a%22%20stroke=%22#000%22%20stroke-width=%22.958%22%20stroke-linejoin=%22round%22%20transform=%22translate(-5.63%20146.4)%22/%3E%3Cg%20transform=%22translate(-5.63%20146.4)%22%3E%3Cpath%20d=%22M14.12-121.766c-.188-.61%202.966-16.632%203.196-16.837.23-.204%201.125-.742%201.355-.716.23.026%202.916%202.968%203.018%203.3.102.333-2.318%2014.76-2.557%2015.148-.18.292-1.765%201.97-2.353%201.92-.588-.052-2.471-2.204-2.66-2.815zM19.592-139.652l2.276%202.764%2016.007-.18s3.708-2.814%203.478-3.454c-.23-.64-1.177-1.1-1.177-1.1s-18.027-.128-18.999.205c-.971.332-1.687%201.049-1.687%201.28%200%20.23.102.485.102.485zM35.86-120.476c-.319-.835%202.55-15.94%202.694-16.193.145-.253%203.2-2.696%203.67-2.642.47.055%201.32.742%201.447%201.122.127.38-2.44%2016.428-2.604%2016.808-.162.38-2.404%202.57-3.001%202.624-.597.054-1.887-.884-2.206-1.719zM19.84-120.367c.718-.191%2014.133-.158%2014.818-.008.684.15%202.143%201.512%202.169%202.344.025.832-1.509%201.868-2.123%202.252-.613.384-14.626.333-15.086.102-.46-.23-2.302-1.919-2.302-2.482%200-.563%201.806-2.018%202.524-2.209zM12.893-114.857c.344-.682%202.684-2.508%203.4-2.534.716-.025%201.586%201.1%201.688%201.69.102.588-2.685%2016.682-3.068%2017.296-.384.614-2.813%202.815-3.427%202.84-.614.026-1.687-1.228-1.764-1.842-.077-.614%202.826-16.769%203.17-17.45zM15.756-98.2c.939-.44%2016.037-.55%2016.596-.307.558.243%202.608%202.2%202.66%202.994.05.793-1.382%201.867-1.97%201.97-.588.102-19.51.716-20.047.384-.537-.333-1.074-.998-1.125-1.459-.051-.46%202.948-3.142%203.886-3.582zM32.53-99.966c-.35-1.035%202.336-14.684%202.553-15.118.217-.435%201.49-2.029%202.314-1.954.824.074%202.17%201.592%202.423%202.28.253.687-1.829%2018.785-3.313%2018.83-1.484.043-3.625-3.002-3.976-4.038z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%22.958%22/%3E%3Cellipse%20cx=%2243.78%22%20cy=%22-97.407%22%20rx=%222.875%22%20ry=%222.877%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%22.958%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:1.25%22%20x=%22100.815%22%20y=%22242.206%22%20font-weight=%22400%22%20font-size=%2210.583%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22/%3E%3C/g%3E%3C/svg%3E"
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
                "y": 320
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
                "x": 120,
                "y": 320
              }
            },
            {
              "id": "cdd743bb-3b27-43ef-88a6-f33405eb3e8d",
              "type": "basic.code",
              "data": {
                "code": "reg o;\n\nalways @(*) \nbegin\n\tcase(i)\n      4'h0: o = 7'b111_1110;\n      4'h1: o = 7'b011_0000;\n      4'h2: o = 7'b110_1101;\n      4'h3: o = 7'b111_1001;\n      4'h4: o = 7'b011_0011;\n      4'h5: o = 7'b101_1011;\n      4'h6: o = 7'b101_1111;\n      4'h7: o = 7'b111_0000;\n      4'h8: o = 7'b111_1111;\n      4'h9: o = 7'b111_1011;\n      default: o = 7'b0000000;\n\tendcase\nend\n",
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
                "width": 312,
                "height": 296
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
    "3d2d16068c495f9dcae3633c3321a073853d155f": {
      "package": {
        "name": "Contador-4bits-up-rst",
        "version": "0.1",
        "description": "Contador módulo M, ascendente, de 4 bits, con reset ",
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
              "id": "c659caa2-1cf7-4da3-855a-2b0c0ecc7510",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[3:0]",
                "size": 4
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
                "value": "16",
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
                "code": "//-- Numero de bits del contador\nlocalparam N = 4; \n\n//-- En contadores de N bits:\n//-- M = 2 ** N\n\n//-- Internamente usamos un bit mas\n//-- (N+1) bits\nreg [N:0] qi = 0;\n\nalways @(posedge clk)\n  if (rst | ov)\n    qi <= 2'b00;\n  else\n    if (cnt)\n      qi <= qi + 1;\n      \nassign q = qi;\n\n//-- Comprobar overflow\nassign ov = (qi == M);\n    ",
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
                      "range": "[3:0]",
                      "size": 4
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
                "block": "c659caa2-1cf7-4da3-855a-2b0c0ecc7510",
                "port": "in"
              },
              "size": 4
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
    "95dec985861a5d56fd374aa9021950940d48207d": {
      "package": {
        "name": "Mux 4 a 1 de 4 bits",
        "version": "0.0.1",
        "description": "Multiplexor de 4 a 1 de 4 bits",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2246.347%22%20height=%22182.066%22%20viewBox=%220%200%2043.450545%20170.68778%22%3E%3Cpath%20d=%22M42.044%2021.324c0-7.134-3.893-13.724-10.206-17.275a20.674%2020.674%200%200%200-20.365.08C5.189%207.728%201.349%2014.347%201.407%2021.481v127.723c-.058%207.135%203.782%2013.755%2010.066%2017.355a20.674%2020.674%200%200%200%2020.365.079c6.313-3.551%2010.206-10.14%2010.206-17.275z%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.068%22%20y=%2270.768%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.068%22%20y=%2270.768%22%3E2%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.018%22%20y=%2227.719%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.018%22%20y=%2227.719%22%3E3%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.068%22%20y=%22113.534%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.068%22%20y=%22113.534%22%3E1%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.068%22%20y=%22156.655%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.068%22%20y=%22156.655%22%3E0%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "b91b637a-5271-48b8-928c-aa9bfc9730c4",
              "type": "basic.input",
              "data": {
                "name": "i3",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -712,
                "y": -200
              }
            },
            {
              "id": "9bd56563-2c49-4aa6-a900-5049c4b14aca",
              "type": "basic.input",
              "data": {
                "name": "i2",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -712,
                "y": -128
              }
            },
            {
              "id": "23f2d4fe-6825-4aa6-9d81-f6f73a555218",
              "type": "basic.input",
              "data": {
                "name": "i1",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -712,
                "y": -48
              }
            },
            {
              "id": "e8a00c7d-5a56-4696-9d66-93e53aa3650f",
              "type": "basic.output",
              "data": {
                "name": "o",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 0,
                "y": -8
              }
            },
            {
              "id": "871e08b8-a80a-4476-ae18-08e962f0fa97",
              "type": "basic.input",
              "data": {
                "name": "i0",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -712,
                "y": 16
              }
            },
            {
              "id": "1e637a79-4a6d-495c-bcac-9664bdbe4b94",
              "type": "basic.input",
              "data": {
                "name": "sel1",
                "clock": false
              },
              "position": {
                "x": -704,
                "y": 112
              }
            },
            {
              "id": "2cd7e8ed-1ed2-4a5c-a72a-337d703c9712",
              "type": "basic.input",
              "data": {
                "name": "sel0",
                "clock": false
              },
              "position": {
                "x": -704,
                "y": 176
              }
            },
            {
              "id": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
              "type": "basic.code",
              "data": {
                "code": "//-- Multiplexor de 4 a 1, \n//-- de 4 bits\n\nwire [1:0] sel = {s1, s0};\n\nassign o = (sel == 2'b00) ? i0 :\n           (sel == 2'b01) ? i1 :\n           (sel == 2'b10) ? i2 : i3;\n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i3",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "i2",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "i1",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "i0",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "s1"
                    },
                    {
                      "name": "s0"
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
                "x": -464,
                "y": -104
              },
              "size": {
                "width": 352,
                "height": 256
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "2cd7e8ed-1ed2-4a5c-a72a-337d703c9712",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "s0"
              }
            },
            {
              "source": {
                "block": "1e637a79-4a6d-495c-bcac-9664bdbe4b94",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "s1"
              },
              "vertices": [
                {
                  "x": -520,
                  "y": 104
                }
              ]
            },
            {
              "source": {
                "block": "871e08b8-a80a-4476-ae18-08e962f0fa97",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "i0"
              },
              "size": 4
            },
            {
              "source": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "o"
              },
              "target": {
                "block": "e8a00c7d-5a56-4696-9d66-93e53aa3650f",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "23f2d4fe-6825-4aa6-9d81-f6f73a555218",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "i1"
              },
              "vertices": [
                {
                  "x": -576,
                  "y": 0
                }
              ],
              "size": 4
            },
            {
              "source": {
                "block": "9bd56563-2c49-4aa6-a900-5049c4b14aca",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "i2"
              },
              "vertices": [
                {
                  "x": -584,
                  "y": -64
                }
              ],
              "size": 4
            },
            {
              "source": {
                "block": "b91b637a-5271-48b8-928c-aa9bfc9730c4",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "i3"
              },
              "vertices": [
                {
                  "x": -552,
                  "y": -128
                }
              ],
              "size": 4
            }
          ]
        }
      }
    },
    "fc9dacc62ad25cd2832c3442bf277af9b708249b": {
      "package": {
        "name": "Separador-bus",
        "version": "0.1",
        "description": "Separador de bus de 2-bits en dos cables",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22354.768%22%20height=%22241.058%22%20viewBox=%220%200%20332.59497%20225.99201%22%3E%3Cpath%20d=%22M168.377%2077.643l61.147-60.938C240.21%206.25%20254.56.461%20269.484.5h62.611v26.186l-61.698.046c-8.012-.043-15.705%203.133-21.47%208.81L187.48%2096.857a57.292%2057.292%200%200%201-39.993%2016.139%2057.292%2057.292%200%200%201%2039.993%2016.14l61.448%2061.314c5.765%205.677%2013.458%208.853%2021.47%208.81l61.698.046v26.186h-62.612c-14.924.039-29.463-5.9-40.204-16.28l-60.902-60.863a29.857%2029.857%200%200%200-21.347-8.81L.5%20139.427V86.457h146.524a29.884%2029.884%200%200%200%2021.353-8.814z%22%20fill=%22green%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "f5a71d7b-de20-4527-80c8-0eb20de0dc77",
              "type": "basic.output",
              "data": {
                "name": "o1"
              },
              "position": {
                "x": 568,
                "y": 144
              }
            },
            {
              "id": "a409d207-7594-4558-8e15-89712262cf5b",
              "type": "basic.input",
              "data": {
                "name": "i",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": 120,
                "y": 200
              }
            },
            {
              "id": "0f7487e5-b070-4277-bba6-acf69934afca",
              "type": "basic.output",
              "data": {
                "name": "o0"
              },
              "position": {
                "x": 568,
                "y": 272
              }
            },
            {
              "id": "16e78204-213e-4833-9096-89d735307ec2",
              "type": "basic.code",
              "data": {
                "code": "assign o1 = i[1];\nassign o0 = i[0];",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i",
                      "range": "[1:0]",
                      "size": 2
                    }
                  ],
                  "out": [
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
                "width": 192,
                "height": 112
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o1"
              },
              "target": {
                "block": "f5a71d7b-de20-4527-80c8-0eb20de0dc77",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o0"
              },
              "target": {
                "block": "0f7487e5-b070-4277-bba6-acf69934afca",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "a409d207-7594-4558-8e15-89712262cf5b",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i"
              },
              "size": 2
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
    }
  }
}