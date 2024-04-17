//
//  Cookie.swift
//  
//
//  Created by Michael Potter on 4/15/24.
//

import Foundation
import Ignite
struct Cookie: StaticPage {
    var title = "Ignite Clicker"
    func body(context: PublishingContext) -> [BlockElement] {
        Group {
            Text("Cookie")
            Text("0").id("score")
            Button {
                Image("/images/cookie.png", description: "A cookie to click").textSelection(.none)
            }.addCustomAttribute(name: "onclick", value: "clickCookie()")
            Divider()
            Button {
                Text("Reset").textSelection(.all)
            }.addCustomAttribute(name: "onclick", value: "reset()")
            Spacer(size: 5).textSelection(.none)
            Button {
                Text("Manual Upgrade 1: 25").id("man1").textSelection(.all)
            }.addCustomAttribute(name: "onclick", value: "manualUpg1()")
            Spacer(size: 5).textSelection(.none)
            Button {
                Text("Auto Upgrade 1: 50").id("auto1").textSelection(.all)
            }.addCustomAttribute(name: "onclick", value: "autoUpg1()")
            
            
            
            Script(file: "/IgniteTest/js/clicker.js")
            
            
        }.padding(.top, .extraLarge)
            .margin().style("text-align: center").textSelection(.none)
    }
}
