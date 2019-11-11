# BuClubApp
Tabbed-view application that shows the roster, schedule, stats, and information about the BU Club baseball team. 

Gathered roster information and stats from https://www.clubbaseball.org/league/team/?team=36c1ba31-b586-4be7-a37b-343c6d9363ee&season=46d3ea9a-a080-4273-befb-58b30c2adb01#team-player

Used SwiftSoup to parse HTML table from the above website to display the roster and stats into individual tableviewcells. The tableviewcells open a navigation controller and new viewcontroller that displays stats of the clicked player. I used a background thread for retrieving the data from the website in real time. Was difficult retrieving the data I wanted but I learned a lot of HTML and a lot about scraping data from the internet in general. 

Problems that I face now are that the application loads the cells before the html is done parsing causing funky behavior. In the future I want the application to remember the stats that it has currently and then check the website to see if any of the data changed therefore the data is cached. Also want to retrieve information from the games online instead of entering manually. 

Added a collection view in the about format instead of what I had previously created a photo gallery of the team which is currently just green squares because I don't have pictures, but I learned to work with the collection view which happens to be pretty similar to implement as the tableview cells. 
