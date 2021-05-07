Feature: User details

Background:
* url 'https://jsonplaceholder.typicode.com'
    
Scenario: get all users 
    Given path 'users'
    When method get
    Then status 200

	  * def first = response[9]
	  
Scenario: get the first user by id
    Given path 'users'
    When method get
    Then def first = response[0]
    And match first.id == 1
    And print first
    And status 200    