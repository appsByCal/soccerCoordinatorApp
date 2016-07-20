//////////////////////////////////////
/// Individual Player Dictionaries ///
//////////////////////////////////////

// var type used so that player data can be altered in future.. For example, next season all of these players will have "soccerExperience"

var joeSmith: [String: String] = [
    "name": "Joe Smith",
    "height": "42",
    "soccerExperience": "yes",
    "guardianNames": "Jim and Jan Smith"]

var jillTurner: [String: String]  = [
    "name": "Jill Turner",
    "height": "36",
    "soccerExperience": "yes",
    "guardianNames": "Clara Turner"]

var billBon: [String: String]  = [
    "name": "Bill Bon",
    "height": "43",
    "soccerExperience": "yes",
    "guardianNames": "Sara and Jenny Bon"]

var evaGordon: [String: String]  = [
    "name": "Eva Gordon",
    "height": "45",
    "soccerExperience": "no",
    "guardianNames": "Wendy and Mike Gordon"]

var mattGill: [String: String]  = [
    "name": "Matt Gill",
    "height": "40",
    "soccerExperience": "no",
    "guardianNames": "Charles and Sylvia Gill"]

var kimmyStein: [String: String]  = [
    "name": "Kimmy Stein",
    "height": "41",
    "soccerExperience": "no",
    "guardianNames": "Bill and Hillary Stein"]

var sammyAdams: [String: String]  = [
    "name": "Sammy Adams",
    "height": "45",
    "soccerExperience": "no",
    "guardianNames": "Jeff Adams"]

var karlSaygan: [String: String]  = [
    "name": "Karl Saygan",
    "height": "42",
    "soccerExperience": "yes",
    "guardianNames": "Heather Bledsoe"]

var suzaneGreenberg: [String: String]  = [
    "name": "Suzane Greenberg",
    "height": "44",
    "soccerExperience": "yes",
    "guardianNames": "Henrietta Dumas"]

var salDali: [String: String]  = [
    "name": "Sal Dali",
    "height": "41",
    "soccerExperience": "no",
    "guardianNames": "Gala Dali"]

var joeKavalier: [String: String]  = [
    "name": "Joe Kavalier",
    "height": "39",
    "soccerExperience": "no",
    "guardianNames": "Sam and Elaine Kavalier"]

var benFinkelstein: [String: String]  = [
    "name": "Ben Finkelstein",
    "height": "44",
    "soccerExperience": "no",
    "guardianNames": "Aaron and Jill Finkelstein"]

var diegoSoto: [String: String]  = [
    "name": "Diego Soto",
    "height": "41",
    "soccerExperience": "yes",
    "guardianNames": "Robin and Sarika Soto"]

var chloeAlaska: [String: String]  = [
    "name": "Chloe Alaska",
    "height": "47",
    "soccerExperience": "no",
    "guardianNames": "David and Jamie Alaska"]

var arnoldWillis: [String: String]  = [
    "name": "Arnold Willis",
    "height": "43",
    "soccerExperience": "no",
    "guardianNames": "Claire Willis"]

var phillipHelm: [String: String]  = [
    "name": "Phillip Helm",
    "height": "44",
    "soccerExperience": "yes",
    "guardianNames": "Thomas Helm and Eva Jones"]

var lesClay: [String: String]  = [
    "name": "Les Clay",
    "height": "42",
    "soccerExperience": "yes",
    "guardianNames": "Wynonna Brown"]

var herschelKrustofski: [String: String]  = [
    "name": "Herschel Krustofski",
    "height": "45",
    "soccerExperience": "yes",
    "guardianNames": "Hyman and Rachel Krustofski"]

///////////////////////////
/// League Roster Array ///
///////////////////////////

// var type used so that players can be added or subtracted from the roster in the future.

var roster: [[String: String]] = [
    joeSmith,
    jillTurner,
    billBon,
    evaGordon,
    mattGill,
    kimmyStein,
    sammyAdams,
    karlSaygan,
    suzaneGreenberg,
    salDali,
    joeKavalier,
    benFinkelstein,
    diegoSoto,
    chloeAlaska,
    arnoldWillis,
    phillipHelm,
    lesClay,
    herschelKrustofski
]

/////////////////////
/// Sorting Logic ///
/////////////////////

// Step 1 //
// Create empty team arrays which can accept dictionaries of the type [String: String]

var dragons: [[String: String]] = []
var sharks: [[String: String]] = []
var raptors: [[String: String]] = []

var teams = [dragons, sharks, raptors]

// Step 2 // - Sort players by experience
// Part A: Create 2 arrays, named "experiencedPlayers" and "inexperiencedPlayers" respectively.

var experiencedPlayers: [[String: String]] = []
var inexperiencedPlayers: [[String: String]] = []

// Part B: for in loop runs through the roster array and checks every player's dictionary to see if soccerExperience == "yes". If it does, the player is added to the experienced player array, if not, they are added to the inexperienced player array.

for player in roster {
    if player["soccerExperience"] == "yes" {
        experiencedPlayers.append(player)
    } else {
        inexperiencedPlayers.append(player)
    }
}

// Step 3 //
// Calculate how many experienced and inexperienced players go on each team.

let totalPlayersCount = roster.count / teams.count
let experiencedPlayersCount = experiencedPlayers.count / teams.count

// Step 4 //
// Add an equal number of experienced players to each team, then add inexperienced players until the number of players on each team matches roster.count / teams.count

// As a side note, even if there isn't a perfect amount of players to split evenly among the teams, this code still compiles. For example, if you deleted an inexperienced player from the roster, the code would still compile, and team raptors would have 5 players on it.

for experiencedPlayer in experiencedPlayers {
    if dragons.count < experiencedPlayersCount {
        dragons.append(experiencedPlayer)
    } else if sharks.count < experiencedPlayersCount {
        sharks.append(experiencedPlayer)
    } else if raptors.count < experiencedPlayersCount {
        raptors.append(experiencedPlayer)
    }
}

for inexperiencedPlayer in inexperiencedPlayers {
    if dragons.count < totalPlayersCount {
        dragons.append(inexperiencedPlayer)
    } else if sharks.count < totalPlayersCount {
        sharks.append(inexperiencedPlayer)
    } else if raptors.count < totalPlayersCount {
        raptors.append(inexperiencedPlayer)
    }
}

///////////////////////////////
/// Send letters to parents ///
///////////////////////////////

for player in dragons {
    print("Hi \(player["guardianNames"])! Your child \n\(player["name"]) has been selected to play for the Dragons. First practice will be held in Compton on March 17th, at 1 PM. Sadly, we don't have a coach for your child's team, so practice will be totally unsupervised.")
}

for player in sharks {
    print("Hi \(player["guardianNames"])! Your child \n\(player["name"]) has been selected to play for the Sharks. First practice will be held in Boston on March 17th, at 3 PM. Your team's coach is a South Boston townie and can't prnounce the letter R.. We purposefully gave him the team named Sharks so you can laugh at him! Don't bring up anything related to Boston sports teams however, as he will probably talk about Tom Brady and David Ortiz for hours on end...")
}

for player in raptors {
    print("Hi \(player["guardianNames"])! Your child \n\(player["name"]) has been selected to play for the Raptors. First practice will be held in Toronto on March 18th, at 1 PM. Your team's coach is hip hop superstar Aubrey Graham, better known as Drake! He has no athletic coaching ability whatsoever, but tough cookies!")
}

// Thanks Team Treehouse!
