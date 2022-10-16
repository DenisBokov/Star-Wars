//
//  StartViewScreen.swift
//  Star Wars
//
//  Created by Denis Bokov on 07.10.2022.
//

import SwiftUI

enum Link: String {
    case peopleURL = "https://swapi.dev/api/people/"
    case planetsURL = "https://swapi.dev/api/planets/"
    case filmsURL = "https://swapi.dev/api/films/"
    case starshipsURL = "https://swapi.dev/api/starships/"
}

enum UserAction: String, CaseIterable {
    case showPeople = "People"
    case showPlanets = "Planets"
    case showFilms = "Films"
    case showStarships = "Starships"
}

struct StartViewScreen: View {
    
    let userActions = UserAction.allCases
    
    var body: some View {
        TabView {
            Text("The content of the first view")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text(UserAction.showPeople.rawValue)
                }
            Text("The content")
                .tabItem {
                    Image(systemName: "film.fill")
                    Text(UserAction.showFilms.rawValue)
                }
            Text("The content")
                .tabItem {
                    Image(systemName: "globe")
                    Text(UserAction.showPlanets.rawValue)
                }
            Text("Starships")
                .tabItem {
                    Image(systemName: "airplane")
                    Text(UserAction.showStarships.rawValue)
                }
        }
    }
}

struct StartViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        StartViewScreen()
    }
}
