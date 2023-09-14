//
//  ContentView.swift
//  NightWatch
//
//  Created by Aimee Dowell on 31/08/2023.
//

import SwiftUI


struct ContentView: View {
    @ObservedObject var nightWatchTasks: NightWatchTasks
    @State private var focusModeOn = false
    
    var body: some View {
        let nightWatchBindingWrapper = $nightWatchTasks
        
        NavigationView {
            List {
                Section (header: TaskSectionHeader(symbolName: "cloud.moon", headerText: "Nightly Tasks")) {
                    let taskIndices = nightWatchTasks.nightlyTasks.indices
                    let tasks = nightWatchTasks.nightlyTasks
                    let taskIndexPairs = Array(zip(tasks, taskIndices))
                    
                    ForEach (taskIndexPairs, id: \.0.id, content: {
                        task, taskIndex in
                        let tasksBinding = nightWatchBindingWrapper.nightlyTasks
                        if focusModeOn == false || (focusModeOn && task.isComplete == false)
                        {
                            NavigationLink(
                                destination: DetailsView(task: tasksBinding[taskIndex]),
                                label: {
                                    TaskRow(task: task)
                                })
                        }
                    }).onDelete(perform: {indexSet in
                        nightWatchTasks.nightlyTasks.remove(atOffsets: indexSet)
                    })
                    .onMove(perform: {indices, newOffset in
                        nightWatchTasks.nightlyTasks.move(fromOffsets: indices, toOffset: newOffset)
                    })
                }
                Section (header: TaskSectionHeader(symbolName: "sunset", headerText: "Weekly Tasks")) {
                    let taskIndices = nightWatchTasks.nightlyTasks.indices
                    let tasks = nightWatchTasks.weeklyTasks
                    let taskIndexPairs = Array(zip(tasks, taskIndices))
                    
                    ForEach (taskIndexPairs, id: \.0.id, content: {
                        task, taskIndex in
                        let tasksBinding = nightWatchBindingWrapper.weeklyTasks
                        if focusModeOn == false || (focusModeOn && task.isComplete == false)
                        {
                            NavigationLink(
                                destination: DetailsView(task: tasksBinding[taskIndex]),
                                label: {
                                    TaskRow(task: task)
                                })
                        }
                    })
                        .onDelete(perform: {indexSet in
                        nightWatchTasks.weeklyTasks.remove(atOffsets: indexSet)
                    })
                    .onMove(perform: {indices, newOffset in
                        nightWatchTasks.weeklyTasks.move(fromOffsets: indices, toOffset: newOffset)
                    })
                }
                Section (header: TaskSectionHeader(symbolName: "calendar", headerText: "Monthly Tasks")) {
                    let taskIndices = nightWatchTasks.nightlyTasks.indices
                    let tasks = nightWatchTasks.monthlyTasks
                    let taskIndexPairs = Array(zip(tasks, taskIndices))
                    
                    ForEach (taskIndexPairs, id: \.0.id, content: {
                        task, taskIndex in
                        let tasksBinding = nightWatchBindingWrapper.monthlyTasks
                        if focusModeOn == false || (focusModeOn && task.isComplete == false)
                        {
                            NavigationLink(
                                destination: DetailsView(task: tasksBinding[taskIndex]),
                                label: {
                                    TaskRow(task: task)
                                })
                        }
                    }).onDelete(perform: {indexSet in
                        nightWatchTasks.monthlyTasks.remove(atOffsets: indexSet)
                    })
                    .onMove(perform: {indices, newOffset in
                        nightWatchTasks.monthlyTasks.move(fromOffsets: indices, toOffset: newOffset)
                    })
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("All Tasks")
            .toolbar {
                ToolbarItem (placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem (placement: .navigationBarTrailing) {
                    Button("Reset") {
                        let refreshedNightWatchTasks = NightWatchTasks()
                        self.nightWatchTasks.nightlyTasks = refreshedNightWatchTasks.nightlyTasks
                        self.nightWatchTasks.weeklyTasks = refreshedNightWatchTasks.weeklyTasks
                        self.nightWatchTasks.monthlyTasks = refreshedNightWatchTasks.monthlyTasks
                    }
                }
                ToolbarItem (placement: .bottomBar) {
                    Toggle(isOn: $focusModeOn, label: {
                        Text("Focus Mode")
                    }).toggleStyle(.switch)
                }

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let nightWatchTasks = NightWatchTasks()
        Group {
            ContentView(nightWatchTasks: nightWatchTasks)
            TaskRow(task: Task(name: "Test Task", isComplete: true, lastCompleted: nil))
                .previewLayout(.fixed(width: 300, height: 70))
        }
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


struct TaskRow: View {
    let task: Task
    
    var body: some View {
        VStack {
            if task.isComplete {
                HStack {
                    Image(systemName: "checkmark.square")
                    Text(task.name)
                        .foregroundColor(.gray)
                    .strikethrough()
                }
            } else {
                HStack {
                    Image(systemName: "square")
                    Text(task.name)
                }
            }
        }
    }
}
