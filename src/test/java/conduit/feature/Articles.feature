Feature: Articles

    Background: Define URL
        Given url 'https://conduit.productionready.io/api/'

    Scenario: Create a new article
        Given path 'users/login'
        And request {"user": {"email": "bolof@gmail.com", "password": "Dammy2k100" }}
        When method Post
        Then status 200
        * def token = response.user.token
        And match response.user.username == 'bolof2000'


        Given header Authorization = 'Token ' + token
        Given path 'articles'
        And request {"article": { "tagList": [],"title": "from karate","description": "test this data creation from karate","body": "welcome to karate testing here "}}
        When method Post
        Then status 200
        And match response.article.title == 'from karate'
