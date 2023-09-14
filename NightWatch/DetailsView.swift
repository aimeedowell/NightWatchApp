//
//  DetailsView.swift
//  NightWatch
//
//  Created by Aimee Dowell on 04/09/2023.
//

import SwiftUI

struct DetailsView: View {
    @Binding var task: Task
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "map")
                Text("Placeholder for motel floor plan")
            }
            Text(task.name)
            
            if horizontalSizeClass == .regular {
                Divider()
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                Divider()
            }

            Button("Mark Complete") {
                task.isComplete = true
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DetailsView(task: Binding<Task>.constant(Task(name: "Test Task", isComplete: false, lastCompleted: nil)))
                .previewInterfaceOrientation(.portraitUpsideDown)
            DetailsView(task: Binding<Task>.constant(Task(name: "Test Task", isComplete: false, lastCompleted: nil)))
                .previewInterfaceOrientation(.landscapeRight)
        }
    }
}
