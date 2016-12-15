Feature: buy track

	# POST /tracks
	# GET, PUT, DELETE /products/{track_id}

	Scenario: happy
		When I buy a track
		Then I should see it's description
                And I read the message "you can now download the track in mp3 format"
	
        Scenario: unhappy
	        Given that I have my wallet balance empty
	        When I request to buy a track
	        Then I should see the message " You have no money in your wallet"
		And the system move me at the Home Page
