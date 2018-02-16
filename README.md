# DodgeBall League

This project stemmed from an shared interest in dodgeball and a mild fascination with backyard baseball. The idea was to create a dodgeball game based, in part, from Dodgeball the Movie, ESPN's Fantasy Football application and BackYard Baseball's selection process. 


## Install Instructions

1. Clone repository from GitHub
2. Open terminal
3. Navigate to the repository directory
4. Set-up: Run bundle install, rake db:migrate, rake db:seed.
5. Enter rails s to open server.
6. Use path: localhost:3000.
  

## Functionality

This is an web application built to represent the dynamic aspects associated with Dodgeball League play.

Including:

  * Creating a team
  * Joining a league
  * Choosing players for a team
  * Trading players
  * Playing matches
  * Checking your results
  * Receiving notifications of your team's activity.
  * Levels differentiating the top ranked users(Think Pokemon leveling up).
  


## Execution

This web application was built within the Ruby on Rails framework. Tables associated are listed below.

* leagues 
  * name
  
* matches
  * winning_team_id
  * away_team_id
  * date
  * home_team_id
  
* player_teams
  * player_id
  * team_id 
  
* rankings 
  * name 
  * level
  
* notifications
  * user_id
  * match_id
  * unread
   
* players
  * name
  * number
  * height
  * wingspan
  * position 
  * image_url
  
* users
  * name
  * password_digest
  * ranking_id
  
* teams
  * name 
  * user_id
  * league_id
  * wins
  * losses
 
## Contributing
1. Fork it ( https://github.com/morgannegagne/dodgeball )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request
