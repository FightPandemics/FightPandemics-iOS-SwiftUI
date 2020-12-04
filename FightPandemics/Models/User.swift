//
//  User.swift
//  FightPandemics
//
//  Created by Luko on 01/12/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import Foundation

// auth
// feedback
// geo
// organizations
// posts
// users
// sendgrid
// version

struct User: Identifiable {
    let id = UUID()
    let name: String
    let initials: String
//    var location: Location
    let location: String
    let comments: [String]
    let posts: Post
    /// etc
}

// Mock Data (an user´s struct array)
let usersMockData: [User] = [
    
    User(
         name: "Ana Muller",
         initials: "AM",
         location: "Berlin, Germany",
         comments: ["hola que tul"],
         posts: Post(id: "1",
                      title: "I have 200 face Masks to give away.",
                      text: "I have a small store and I would like to give away 100 mask but I don’t know where, please contact me if you need them. I have a small store and I would like to give away 100 mask but I don’t know where, please contact me if you need them. please contact m ...")),
    User(
         name: "Victor Maragiaglio",
         initials: "VM",
         location:"Madrid, Spain",
         comments: ["hola que tul"],
         posts: Post(id: "1",
                      title: "Food bank in need of canned goods donations!",
                      text: "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas, las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.")),

    User(
         name: "Juana Santervas",
         initials: "JS",
         location: "Rosario, Argentina",
         comments: ["hola que tul"],
         posts: Post(id: "1", title: "primer post", text: "fdsalñfh sadñfh sdahfads lhfas d")),
    
]
