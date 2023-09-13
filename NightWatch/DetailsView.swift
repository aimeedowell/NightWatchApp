//
//  DetailsView.swift
//  NightWatch
//
//  Created by Aimee Dowell on 04/09/2023.
//

import SwiftUI

struct DetailsView: View {
    @Binding var task: Task
    var body: some View {
        VStack {
            Text(task.name)
            Text("Placeholder for task description")
            Button("Mark Complete") {
                task.isComplete = true
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(task: Binding<Task>.constant(Task(name: "Test Task", isComplete: false, lastCompleted: nil)))
    }
}
