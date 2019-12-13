Feature:
    Como Jugador
    Quiero ingresar el tamano del mapa
    Para tener un mapa personalizado

    Scenario:
    Given visito la pagina del mapa
    And lleno el campo "mapaX" con el valor de "10"
    When presiono el boton de "Simular"
    Then deberia ver el mensaje "El mapa en X: 10"

    Scenario:
    Given visito la pagina del mapa
    And lleno el campo y "mapaY" con el valor de "10"
    When presiono el boton de "Simular"
    Then deberia ver el mensaje de la pos "El mapa en Y: 10"