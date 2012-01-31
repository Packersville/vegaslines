# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.create([{ city: 'Atlanta', name: 'Falcons'}, {city: 'Baltimore', name:'Ravens'}, {city: 'New England', name: 'Patriots'}, {city: 'Buffalo', name: 'Bills'}, {city: 'Carolina', name: 'Panthers'},
                     {city: 'Chicago', name: 'Bears'}, {city: 'Cincinatti', name: 'Bengals'}, {city: 'Cleveland', name: 'Browns'}, {city: 'Dallas', name: 'Cowboys'}, {city: 'Denver', name: 'Broncos'},
                     {city: 'Detroit', name: 'Lions'}, {city: 'Indianapolis', name: 'Colts'}, {city: 'Jacksonville', name: 'Jaguars'}, {city: 'Kansas City', name: 'Chiefs'}, {city: 'Miami', name: 'Dolphins'},
                     {city: 'Green Bay', name: 'Packers'}, {city: 'Houston', name: 'Texans'}, {city: 'Minnessota', name: 'Vikings'}, {city: 'Tennessee', name: 'Titans'}, {city: 'New Orleans', name: 'Saints'},
                     {city: 'New York', name: 'Giants'}, {city: 'New York', name: 'Jets'}, {city: 'Oakland', name: 'Raiders'}, {city: 'Philadelphia', name: 'Eagles'}, {city: 'Arizona', name: 'Cardinals'},
                     {city: 'Pittsburgh', name: 'Steelers'}, {city: 'St Louis', name: 'Rams'}, {city: 'San Diego', name: 'Chargers'}, {city: 'San Francisco', name: '49ers'}, {city: 'Seattle', name: 'Seahawks'},
                     {city: 'Tampa Bay', name: 'Buccaneers'}, {city: 'Washington', name: 'Redskins'}])

Game.create([{ week_id: 1,away_team_id: 1, home_team_id: 2,index: 1}, { week_id: 1,away_team_id: 3, home_team_id: 4,index: 2}, { week_id: 1,away_team_id: 5, home_team_id: 6,index: 3}, 
             { week_id: 1,away_team_id: 7, home_team_id: 8,index: 4}, { week_id: 1,away_team_id: 9, home_team_id: 10,index: 5}, { week_id: 1,away_team_id: 11, home_team_id: 12,index: 6},
             { week_id: 1,away_team_id: 13, home_team_id: 14,index: 7}, { week_id: 1,away_team_id: 15, home_team_id: 16,index: 8}, { week_id: 1,away_team_id: 17, home_team_id: 18,index: 9},
             { week_id: 1,away_team_id: 19, home_team_id: 20,index: 10}, { week_id: 1,away_team_id: 21, home_team_id: 22,index: 11}, { week_id: 1,away_team_id: 23, home_team_id: 24,index: 12},
             { week_id: 1,away_team_id: 25, home_team_id: 26,index: 13}, { week_id: 1,away_team_id: 27, home_team_id: 28,index: 14}, { week_id: 1,away_team_id: 29, home_team_id: 30,index: 15},
             { week_id: 1,away_team_id: 31, home_team_id: 32,index: 16}])