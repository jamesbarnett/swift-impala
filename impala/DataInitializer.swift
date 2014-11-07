//
//  DataInitializer.swift
//  impala
//
//  Created by James Barnett on 10/31/14.
//  Copyright (c) 2014 vivid-abstraction. All rights reserved.
//

import Foundation

class DataInitializer {
  func data() -> Catalog {
    
    var catalog = Catalog(designer: "Jim Barnett",
      collections: [
        Collection(year: 2014, season: Season.Winter, description: "Blondes", image: "blondes",
          pieces: [
            Piece(title: "Kristen Bell",
              description: "Veronica Mars, Gossip Girl",
              image: "kristen_bell"),
            Piece(title: "Dreama Walker",
              description: "The Good Wife, Compliance",
              image: "dreama_walker"),
            Piece(title: "Piper Perabo",
              description: "Covert Affairs, Coyote Ugly",
              image: "piper_perabo")
          ]),
        Collection(year: 2014, season: Season.Spring, description: "Brunettes", image: "brunettes",
          pieces: [
            Piece(title: "Rose Byrne",
              description: "Damages, I Give It a Year",
              image: "rose_byrne"),
            Piece(title: "Zooey Deschanel",
              description: "New Girl, Weeds",
              image: "zooey_deschanel"),
            Piece(title: "Lizzy Caplan",
              description: "True Blood, Party Down",
              image: "lizzy_caplan")
          ]
        ),
        Collection(year: 2014, season: Season.Summer, description: "Redheads", image: "redheads",
          pieces: [
            Piece(title: "Felicia Day",
              description: "The Guild, Dollhouse",
              image: "felicia_day"),
            Piece(title: "Sarah Rafferty",
              description: "Suits, Brothers & Sisters",
              image: "sarah_rafferty"),
            Piece(title: "Emma Stone",
              description: "The Help, Superbad",
              image: "emma_stone")
          ])
      ]
    )
    
    return catalog
  }
}