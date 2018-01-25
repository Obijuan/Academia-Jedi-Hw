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
          "id": "c14fa047-7394-4cfd-8c1e-b806af0993d1",
          "type": "basic.info",
          "data": {
            "info": "<B>Ejercicio 12.3</B>: (5 Bitpoints) Hacer un circuito digital para controlar la apertura\nde una caja fuerte. Hay tres pulsadores externos para introducir la clave. Hay un pulsador\nexterno para abrir la caja. Sólo se abrirá si la clave introducida en los interruptores\nes la correcta. Esta clave será 101 (Interruptores primero y tercero a 1, y el segundo a cero)\nCuando la clave es la correcta y se aprieta el pulsador, se moverá un servo que simula el cierre\nde la caja. Al soltar el pulsador el servo volverá a su posición inicial\n",
            "readonly": true
          },
          "position": {
            "x": 48,
            "y": -80
          },
          "size": {
            "width": 768,
            "height": 144
          }
        },
        {
          "id": "08b55ee3-890d-403c-9792-da4254a88da4",
          "type": "basic.info",
          "data": {
            "info": "Entregar:\n\n  -1 Pantallazo del circuito (2 Bitpoints)\n  -1 Vídeo del funcionamiento (2 Bitpoints)\n  \n  Enviarlos por redes sociales (Twitter, G+) con mención \n  a @Obijuan_cube. El vídeo puede estar en youtube o directamente en el tuit/post",
            "readonly": true
          },
          "position": {
            "x": 40,
            "y": 128
          },
          "size": {
            "width": 688,
            "height": 144
          }
        },
        {
          "id": "df40451e-59d3-4af3-8ab9-1245aaf6cee6",
          "type": "basic.info",
          "data": {
            "info": "GITHUB:\n\n  1 Bitpoint adicional si lo entregáis por Github (sólo pantallazo, el vídeo\n  no hace falta, para que no ocupe tanto espacio)",
            "readonly": true
          },
          "position": {
            "x": 56,
            "y": 280
          },
          "size": {
            "width": 624,
            "height": 96
          }
        },
        {
          "id": "1cd9be80-6036-4ed2-8bc1-adcb962196f8",
          "type": "basic.info",
          "data": {
            "info": "<B>NOTA</B>: El funcionamiento de esta caja fuerte es todavía muy básico. En sucesivos tutoriales\nlo iremos refinando. Como todavía no sabemos usar elementos de memoria, el servo vuelve a\nsu posición inicial al dejar de apretar el pulsador",
            "readonly": true
          },
          "position": {
            "x": 56,
            "y": 32
          },
          "size": {
            "width": 768,
            "height": 80
          }
        }
      ],
      "wires": []
    },
    "state": {
      "pan": {
        "x": 65,
        "y": 151
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}