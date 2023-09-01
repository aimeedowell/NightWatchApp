//
//  ContentView.swift
//  NightWatch
//
//  Created by Aimee Dowell on 31/08/2023.
//

import SwiftUI

struct ContentView: View {
    var nightlyTasks:[String] = [
        "Check all windows",
        "Check all doors",
        "Check that the safe is locked",
        "Check the mailbox",
        "Inspect security cameras",
        "Clear ice from sidewalks",
        "Document \"strange and unusual\" occurences"]
    
    var weeklyTasks:[String] = [
        "Check inside all vacant rooms",
        "Walk the perimeter of the property"]
    
    var monthlyTasks:[String] = [
        "Test security alarms",
        "Test smoke alarms"]
    
    var body: some View {
        List {
            Section (header: HStack {
                Image(systemName: "cloud.moon")
                Text("Nightly Tasks")
            }.font(.title3)) {
                ForEach (nightlyTasks, id: \.self, content: {
                    task in
                    Text(task)
                })
            }
            Section (header: HStack {
                Image(systemName: "sunset")
                Text("Weekly Tasks")
            }.font(.title3)) {
                ForEach (weeklyTasks, id: \.self, content: {
                    task in
                    Text(task)
                })
            }
            Section (header: HStack {
                Image(systemName: "calendar")
                Text("Monthly Tasks")
            }.font(.title3)) {
                ForEach (monthlyTasks, id: \.self, content: {
                    task in
                    Text(task)
                })
            }
        }.listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
