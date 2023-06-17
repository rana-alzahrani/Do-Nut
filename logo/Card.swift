
//  Card.swift
//  logo

import SwiftUI

struct Card : Identifiable{
    var id = UUID().uuidString
    var con: String
    var mess: String
    var name: String
    var mess1: String
}
var cards :[Card]=[
    Card(id: "1", con:"Congratulations!", mess: "You achieved your goal:", name: "(Goal name)", mess1: "successfully!"),
    Card(id: "2", con:"Congratulations!", mess: "You achieved your goal:", name: "(Goal name)", mess1: "successfully!"),
    Card(id: "3", con:"Congratulations!", mess: "You achieved your goal:", name: "(Goal name)", mess1: "successfully!"),
    Card(id: "4", con:"Congratulations!", mess: "You achieved your goal:", name: "(Goal name)", mess1: "successfully!"),
    Card(id: "5", con:"Congratulations!", mess: "You achieved your goal:", name: "(Goal name)", mess1: "successfully!"),
]
