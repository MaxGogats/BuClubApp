# BuClubApp
Tabbed-view application that shows the roster, schedule, stats, and information about the BU Club baseball team. 

Gathered roster information and stats from https://www.clubbaseball.org/league/team/?team=36c1ba31-b586-4be7-a37b-343c6d9363ee&season=46d3ea9a-a080-4273-befb-58b30c2adb01#team-player

Used SwiftSoup to parse HTML table from the above website to display the roster and stats into individual tableviewcells. The tableviewcells open a navigation controller and new viewcontroller that displays stats of the clicked player. 
