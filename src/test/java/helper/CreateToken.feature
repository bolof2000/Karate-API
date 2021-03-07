Feature: Authentication token

     Background: Define URL
        Given url 'https://conduit.productionready.io/api/'

    Scenario: Create a new article
        Given path 'users/login'
        And request {"user": {"email": "bolof@gmail.com", "password": "Testtest" }}
        When method Post
        Then status 200
        * def AuthorizationToken = response.user.token
        And match response.user.username == 'bolof2000'