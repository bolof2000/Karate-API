Feature: User Sign up


    Background: Preconditions 
        * def dataGenerator = java.type('/Volumes/DevelopmentEnv/Java-Base/Automation/karateAutomation/src/test/java/helper/DataGenerator.java')
       
        Scenario: New User sign Up 
            * def  randomEmail = dataGenerator.getRandomEmail()
            * def randomUsername = dataGenerator.getRandomeUsername()

            Given path 'users'

            And request 

            """
            {
                "user" {

                    "email" : #(randomEmail),
                    "password" : #(testtest),
                    "username" : #(randomUsername)
                }
            }
            """
            When method Post 
        
            Then status 200 
        

    



    