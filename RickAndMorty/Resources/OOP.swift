//
//  OOP.swift
//  RickAndMorty
//
//  Created by Elaidzha Shchukin on 09.05.2024.
//

protocol GoodSportsman {
    func getSportType() -> String
}

class GoodBoxer: GoodSportsman {
    func getSportType() -> String {
        return "Boxing"
    }
}

class GoodSwimmer: GoodSportsman {
    func getSportType() -> String {
        return "Swimming"
    }
}

class GoodWeightlifter: GoodSportsman {
    func getSportType() -> String {
        return "Weightlifting"
    }
}

class GoodSportDepartment {
    private let athletes: [GoodSportsman]
    
    init(athletes: [GoodSportsman]) {
        self.athletes = athletes
    }
    
    func athletesSportTypes() -> [String] {
        return athletes.map { $0.getSportType() }
    }
    
    func runGoodOCPExample() {
        let goodSportDepartment = GoodSportDepartment(athletes: [GoodBoxer(), GoodSwimmer(), GoodWeightlifter()])
        print(goodSportDepartment.athletesSportTypes())
    }
}
