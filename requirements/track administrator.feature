Feature: track administrator

	# POST /products
	# GET, PUT, DELETE /products/{product_id}

Background: Given I am logged in as administrator

	Scenario: retrieve track
		When I retrieve a track by it's name
		Then I should hear a few seconds of it
		And I should be prompted to add it to the basket

	Scenario: remove track from site
		When I delete a track by it's name
    Then I should see the deleted track

	Scenario: add track to site
		When I add a new track with a name
		And I specify it's description
		And I specify it's category
		Then I should see the created track

	Scenario: not logged in
		Given that I'm not logged in
		When I try to add, delete or update a track
		Then I should see a message telling me "Not allowed"
