Feature: Articles

    Background: Define URL
        Given url 'https://conduit.productionready.io/api/'

    Scenario: Create a new article
        
        * def tokenResponse = callonce read('/Volumes/DevelopmentEnv/Java-Base/Automation/karateAutomation/src/test/java/helper/CreateToken.feature')
        * def token = tokenResponse.AuthorizationToken


        Given header Authorization = 'Token ' + token
        Given path 'articles'
        And request {"article": { "tagList": [],"title": "from karate","description": "test this data creation from karate","body": "welcome to karate testing here "}}
        When method Post
        Then status 200
        And match response.article.title == 'from karate'
        
        
