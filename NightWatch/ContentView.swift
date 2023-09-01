//
//  ContentView.swift
//  NightWatch
//
//  Created by Aimee Dowell on 31/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                VStack (alignment: .leading) {
                    //MARK: Nightly Tasks
                    Group {
                    HStack {
                            Text(Image(systemName: "cloud.moon"))
                                .foregroundColor(.yellow)
                                .font(.title3)
                                .fontWeight(.heavy)
                            Text("Nightly Tasks")
                                .underline()
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .fontWeight(.heavy)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                                .padding(.top)
                            .textCase(.uppercase)
                        }
                        Text("- Check all windows")
                        Text("- Check all doors")
                        Text("- Check that the safe is locked")
                        Text("- Check the mailbox")
                        Text("- Inspect security cameras")
                        Text("- Clear ice from sidewalks")
                        Text("- Document \"strange and unusual\" occurences")
                        Divider()
                        //MARK: Weekly Tasks
                        HStack {
                            Text(Image(systemName: "calendar.day.timeline.left"))
                                .foregroundColor(.yellow)
                                .font(.title3)
                                .fontWeight(.heavy)
                            Text("Weekly Tasks")
                                .underline()
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .fontWeight(.heavy)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                                .padding(.top)
                            .textCase(.uppercase)
                        }
                    }
                    Text("- Check inside all vacant rooms")
                    Text("- Walk the perimeter of the property")
                    Divider()
                    //MARK: Monthly Tasks
                    HStack {
                        Text(Image(systemName: "calendar"))
                            .foregroundColor(.yellow)
                            .font(.title3)
                            .fontWeight(.heavy)
                        
                        Text("Monthly Tasks")
                            .underline()
                            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                            .fontWeight(.heavy)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                            .padding(.top)
                        .textCase(.uppercase)
                    }
                    Text("- Test security alarms")
                    Text("- Test smoke alarms")
                }
                .foregroundColor(.gray)
                Spacer()
            }
            .padding([.top, .leading])
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
