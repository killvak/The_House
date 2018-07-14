//
//  EventData.swift
//  The_House
//
//  Created by Killva on 7/14/18.
//  Copyright © 2018 Killva. All rights reserved.
//

import Foundation


struct EvenData {
    
    var title : String
    var headerImageS : String
    var desc : String
    var datee : String
    var profileImageS : String
    
    
}


let data : [EvenData ] = [

    EvenData(title: "Tuesday Marathon", headerImageS: "m-1", desc: "The marathon is a long-distance race, completed by running, walking , or a run/walk strategy. There are also wheelchair divisions. The marathon has an official distance of 42.195 kilometres", datee: "Aug 03", profileImageS: "m-0"),
    EvenData(title: "Master Photographers", headerImageS: "c-1", desc: "A portfolio for each photographer features a selection of their legendary images, an introduction to the photographer’s oeuvre, a brief biography, and commentary on each of the featured photographs. ", datee: "Jun 09", profileImageS: "c-0"),
    EvenData(title: "Traveling 101", headerImageS: "t-1", desc: "Nothing is both as rewarding and as stressful as traveling. With that in mind we have assembled the be-all and end-all list of travel tips to keep in mind as you both plan and execute your next vacation. From when to book travel to get the best deal, to how to travel like a local, these tips aren’t to be missed.", datee: "dec 12", profileImageS: "t-0") ,
    EvenData(title: "family Come First", headerImageS: "fa-1", desc: "My family is my live and my Everything", datee: "Jul 25", profileImageS: "fa-0")


]
