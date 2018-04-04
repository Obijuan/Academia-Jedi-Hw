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
            "info": "**Ejercicio 15.1**: (3 Bitpoints). **Motor en 4 estados**\n\nHacer que un servo de **rotación continua** realice la siguiente **secuencia** de \nmovimientos, que se repiten **cícliclamente**:  \n\nParado - Giro en sentido horario - Parado - Giro en sentido Antihorario\n\nCada estado debe durar **2 segundos**. Así, estará 2 segundos parado, dos segundos \ngirando en sentido horario, 2 segundos parado, 2 en sentido antihorario... \n(y se vuelve a comenzar)\n\nUsar sólo los componentes que hemos aprendido hasta ahora, y que son los que \nestán en esta colección\n\n**Consejo**: Fijarse en los valores que deben tomar los dos bits de control del servo \nen los diferentes estados y usar corazones y tortugas para reproducir la secuencia\n",
            "readonly": true
          },
          "position": {
            "x": 40,
            "y": -144
          },
          "size": {
            "width": 688,
            "height": 144
          }
        },
        {
          "id": "08b55ee3-890d-403c-9792-da4254a88da4",
          "type": "basic.info",
          "data": {
            "info": "**Entregar**:\n\n  -1 Pantallazo del circuito (1 Bitpoints)\n  \n  -1 Vídeo del funcionamiento (1 Bitpoints)\n  \n  Enviarlos por redes sociales (Twitter, G+) con mención \n  a @Obijuan_cube. El vídeo puede estar en youtube o directamente en el tuit/post\n  ",
            "readonly": true
          },
          "position": {
            "x": 40,
            "y": 120
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
            "info": "**GITHUB**:\n\n  1 Bitpoint adicional si lo entregáis por Github (sólo pantallazo, el vídeo\n  no hace falta, para que no ocupe tanto espacio)",
            "readonly": true
          },
          "position": {
            "x": 40,
            "y": 272
          },
          "size": {
            "width": 624,
            "height": 96
          }
        }
      ],
      "wires": []
    },
    "state": {
      "pan": {
        "x": 137,
        "y": 217.5
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}