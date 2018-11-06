{
  "version": "1.2",
  "package": {
    "name": "Cable",
    "version": "0.1",
    "description": "Un simple cable pasivo, para organizar las conexiones complicadas",
    "author": "Juan Gonzalez-Gómez (Obijuan)",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22352.857%22%20height=%224%22%20viewBox=%220%200%2093.360123%201.0583333%22%3E%3Cpath%20d=%22M0%20.53h93.36%22%20fill=%22green%22%20stroke=%22green%22%20stroke-width=%221.058%22/%3E%3C/svg%3E"
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "fa0b6dda-1c99-4e8b-a140-cda4eadf6837",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 224,
            "y": 184
          }
        },
        {
          "id": "76f5099a-54df-47eb-b828-f2ab2f211687",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 632,
            "y": 184
          }
        },
        {
          "id": "f77fa55a-aa72-4444-9bd8-ba3e03253d9b",
          "type": "basic.code",
          "data": {
            "code": "assign o = i;",
            "params": [],
            "ports": {
              "in": [
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
            "x": 368,
            "y": 184
          },
          "size": {
            "width": 192,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "fa0b6dda-1c99-4e8b-a140-cda4eadf6837",
            "port": "out"
          },
          "target": {
            "block": "f77fa55a-aa72-4444-9bd8-ba3e03253d9b",
            "port": "i"
          }
        },
        {
          "source": {
            "block": "f77fa55a-aa72-4444-9bd8-ba3e03253d9b",
            "port": "o"
          },
          "target": {
            "block": "76f5099a-54df-47eb-b828-f2ab2f211687",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}