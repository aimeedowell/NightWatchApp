//
//  DetailsView.swift
//  NightWatch
//
//  Created by Aimee Dowell on 04/09/2023.
//

import SwiftUI

struct DetailsView: View {
    let task: Task
    var body: some View {
        VStack {
            Text(task.name)
            Text("Placeholder for task description")
            Text("Placeholder for mark complete button")
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(task: Task(name: "Test Task", isComplete: false, lastCompleted: nil))
    }
}
