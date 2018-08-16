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
          "id": "3c593066-c1c9-4332-a029-374a2935475c",
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
            "x": -104,
            "y": -88
          }
        },
        {
          "id": "b63243b4-e05b-4fe9-b73d-c7c26ad4ea75",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "D12",
                "value": "143"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 168,
            "y": -88
          }
        },
        {
          "id": "c330acf7-e9ab-408a-a36f-7d80002a374c",
          "type": "basic.info",
          "data": {
            "info": "## Ejemplo 3: Mostrar el sensor IR en un LED, sin biestable\n\nCircuito combinacional que muestra el estado del **Sensor IR** en el **LED**  \nEs el mismo circuito que el ejemplo 1, pero conectando un sensor IR  \nen vez del pulsador externo",
            "readonly": true
          },
          "position": {
            "x": -200,
            "y": -256
          },
          "size": {
            "width": 624,
            "height": 120
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "3c593066-c1c9-4332-a029-374a2935475c",
            "port": "out"
          },
          "target": {
            "block": "b63243b4-e05b-4fe9-b73d-c7c26ad4ea75",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}