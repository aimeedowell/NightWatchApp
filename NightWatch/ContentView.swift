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
        NavigationView {
            List {
                Section (header: TaskSectionHeader(symbolName: "cloud.moon", headerText: "Nightly Tasks")) {
                    ForEach (nightlyTasks, id: \.self, content: {
                        task in
                        NavigationLink(task, destination: DetailsView(taskText: task))
                    })
                }
                Section (header: TaskSectionHeader(symbolName: "sunset", headerText: "Weekly Tasks")) {
                    ForEach (weeklyTasks, id: \.self, content: {
                        task in
                        NavigationLink(task, destination: DetailsView(taskText: task))
                    })
                }
                Section (header: TaskSectionHeader(symbolName: "calendar", headerText: "Monthly Tasks")) {
                    ForEach (monthlyTasks, id: \.self, content: {
                        task in
                        NavigationLink(task, destination: DetailsView(taskText: task))
                    })
                }
            }.listStyle(GroupedListStyle()).navigationTitle("All Tasks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TaskSectionHeader: View {
    let symbolName: String
    let headerText: String
    var body: some View {
        HStack {
            Image(systemName: symbolName)
            Text(headerText)
        }.font(.title3)
    }
}

