BINGHAMTON BASEBALL APPLICATION 

Tabbed-view application that shows the roster, stats, schedule, and information about the BU Club baseball team. 

Information Tab: Consists of Team Information including the practice schedule, conference standings, team pictures, and contact info. 

Mailing List Button: User can enter a valid email address and be added to mailing list of the team. At this moment, the entered emails are saved to a database created on mysql.cs.binghamton.edu servers. You can see the table at http://cs.binghamton.edu/~mgogats1/getEmails.php

Roster: Displays the number, name, and position of the roster of the team. When user clicks on a certain player, a navigation controller opens a view controller that displays hitting and pitching stats of clicked player with information found on https://www.clubbaseball.org/league/team/?team=36c1ba31-b586-4be7-a37b-343c6d9363ee&season=46d3ea9a-a080-4273-befb-58b30c2adb01#team-stats. Used CocoaPods and SwiftSoup to parse HTML into usable data. 

Schedule: Hard-coded schedule tableview showing series from past 2 years changeable with a toggle button. 


