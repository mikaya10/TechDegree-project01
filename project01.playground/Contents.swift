//each players

let player1 : [String : String] = ["name": "Joe Smith", "height": "42", "experience":"true", "guardian": "Jim and Jan Smith"]
let player2 : [String : String] = ["name": "Jill Tanner", "height": "36", "experience":"true", "guardian": "Clara Tanner"]
let player3 : [String : String] = ["name": "Bill Bon", "height":"43" , "experience":"true", "guardian": "Sara and Jenny Bon"]
let player4 : [String : String] = ["name": "Eva Gordon", "height": "45", "experience":"false", "guardian": "Wendy and Mike Gordon"]
let player5 : [String : String] = ["name": "Matt Gill", "height": "40", "experience":"false", "guardian": "Charles and Sylvia Gill"]
let player6 : [String : String] = ["name": "Kimmy Stein", "height":"41" , "experience":"false", "guardian": "Bill and Hillary Stein"]
let player7 : [String : String] = ["name": "Sammy Adams", "height": "45", "experience":"false", "guardian": "Jeff Adams"]
let player8 : [String : String] = ["name": "Karl Saygan", "height": "42", "experience":"true", "guardian": "Heather Bledsoe"]
let player9 : [String : String] = ["name": "Suzane Greenberg", "height": "44", "experience":"true", "guardian": "Henrietta Dumas"]
let player10 : [String : String] = ["name": "Sal Dali", "height": "41", "experience":"false", "guardian": "Gala Dali"]
let player11 : [String : String] = ["name": "Joe Kavalier", "height": "39", "experience":"false", "guardian": "Sam and Elaine Kavalier"]
let player12 : [String : String] = ["name": "Ben Finkelstein", "height": "44", "experience":"false", "guardian": "Aaron and Jill Finkelstein"]
let player13 : [String : String] = ["name": "Diego Soto", "height": "41", "experience":"true", "guardian": "Robin and Sarika Soto"]
let player14 : [String : String] = ["name": "Chloe Alaska", "height": "47", "experience":"false", "guardian": "David and Jamie Alaska"]
let player15 : [String : String] = ["name": "Arnold Willis", "height": "43", "experience":"false", "guardian": "Claire Willis"]
let player16 : [String : String] = ["name": "Phillip Helm", "height": "44", "experience":"true", "guardian": "Thomas Helm and Eva Jones"]
let player17 : [String : String] = ["name": "Les Clay", "height": "42", "experience":"true", "guardian": "Wynonna Brown"]
let player18 : [String : String] = ["name": "Herschel Krustofski", "height": "45", "experience":"true", "guardian": "Hyman and Rachel Krustofski"]

//gathering all players


var players:[[String:String]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]


//grope players in experienced and inexperienced
var experienced: [[String: String]] = []
var inexperienced: [[String: String]] = []

for player in  players {
    if player["experience"] == "true" {
        experienced.append(player)
    }else {
        inexperienced.append(player)
    }
}
//order players in height
let sortedexperienced = experienced.sorted{
    $0["height"]! > $1["height"]!
}

let sortedinedexperienced = inexperienced.sorted{
    $0["height"]! > $1["height"]!
}

//print(sortedexperienced)



//groupe players in team
var teamDragons: [[String : String]] = []
var teamSharks: [[String : String]] = []
var teamRaptors: [[String : String]] = []

var allTeam = [teamDragons, teamSharks, teamRaptors]

for i in 0 ..< sortedexperienced.count {
    if i % allTeam.count == 0 {
        teamDragons.append(sortedexperienced[i])
    } else if i % allTeam.count == 1 {
        teamSharks.append(sortedexperienced[i])
    } else {
        teamRaptors.append(sortedexperienced[i])
    }
}

for i in 0 ..< sortedinedexperienced.count {
    if i % allTeam.count == 0 {
        teamRaptors.append(sortedinedexperienced[i])
    } else if i % allTeam.count == 1 {
        teamSharks.append(sortedinedexperienced[i])
    } else {
        teamDragons.append(sortedinedexperienced[i])
    }
}

//calculate average height of each team

var totalHeightDragons = 0.0
for player in teamDragons{
    let height = player["height"]!
    totalHeightDragons += Double(height)!
}
var averageHeightDragons = totalHeightDragons / Double(teamDragons.count)


var totalHeightSharks = 0.0
for player in teamSharks{
    let height = player["height"]!
    totalHeightSharks += Double(height)!
}
var averageHeightSharks = totalHeightSharks / Double(teamSharks.count)

var totalHeightRaptors = 0.0
for player in teamRaptors{
    let height = player["height"]!
    totalHeightRaptors += Double(height)!
}
var averageHeightRaptors = totalHeightRaptors / Double(teamRaptors.count)








//letters
var letters = [String]()


for player in teamDragons {
    
    let name = player["name"]!
    let guardians = player["guardian"]!
    var letter = "Dear, \(guardians), \(name )is chosen to play in Team Dragons. Please come to our first practice on March 17th at 1PM. See you there!"
    letters.append(letter)

}

for player in teamSharks {
    
    let name = player["name"]!
    let guardians = player["guardian"]!
    var letter = "Dear, \(guardians), \(name )is chosen to play in Team Sharks. Please come to our first practice on March 17th at 3PM. See you there!"
    letters.append(letter)
    
}

for player in teamRaptors {
    
    let name = player["name"]!
    let guardians = player["guardian"]!
    var letter = "Dear, \(guardians), \(name )is chosen to play in Team Raptors. Please come to our first practice on March 18th at 1PM. See you there!"
    letters.append(letter)
}

for letter in letters {
    print(letter)
}




