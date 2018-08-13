Feature: Add hotel
	In order to simulate hotel management system
	As api consumer
	I want to be able to add hotel,get hotel details and book hotel

@AddHotel
Scenario Outline: User adds hotel in database by providing valid inputs
	Given User provided valid Id '<id>'  and '<name>'for hotel 
	And Use has added required details for hotel
	When User calls AddHotel api
	Then Hotel with name '<name>' should be present in the response
Examples: 
| id | name   |
| 1  | hotel1 |
| 2  | hotel2 |
| 3  | hotel3 |


Scenario Outline: User adds and gets  hotel information  by id
Given User provided valid Id '<id>'  and '<name>'for hotel 
And Use has added required details for hotel
And User calls AddHotel api
When User calls get hotel by id '<id>'
Then verify that hotel is present with valid id '<id>'
Examples: 
| id | name   |
| 4  | hotel1 |

Scenario: User gets details of all the hotels
	Given User provided valid Id '1'  and 'hotel1' for hotel
	And Use has added required details for hotel
	And User calls AddHotel api
	And User provided valid Id '2'  and 'hotel2' for hotel
	And Use has added required details for hotel
	And User calls AddHotel api
	And User provided valid Id '3'  and 'hotel3' for hotel
	And Use has added required details for hotel
	And User calls AddHotel api
	When User calls GetHotels api
	Then User should get the details of hotel with id 1,2,3
