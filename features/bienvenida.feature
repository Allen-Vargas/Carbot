Feature:
    Como Jugador
    Quiero recibir un saludo al entra a la pagina
    Para sentirme a gusto

    Scenario:
    Given visito la pagina principal
    Then deberia ver un mensaje "Bienvenido a CarsBot"

    Scenario:
    Given visito la pagina principal
    And Ingreso el nombre "Allen" en el campo "nombreTxt"
    When presiono el boton "Saludar"
    Then deberia ver "Bienvenido Jugador Allen"
