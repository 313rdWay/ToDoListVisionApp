//
//  ContentView.swift
//  ToDoListVisionApp
//
//  Created by Davaughn Williams on 3/21/25.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct Task: Identifiable, Hashable {
    var id = UUID().uuidString
    var name: String
    var description: String
}

struct ContentView: View {
    @Bindable var viewModel: ToDoListManager = ToDoListManager()
    @State var didGoToTaskScreen = false
    var body: some View {
        NavigationStack {
            VStack {
                if viewModel.tasks.count == 0 {
                    Text("No Task Added")
                        .bold()
                    Text("Add a task below")
                        .font(.caption2)
                }
                
                List {
                    ForEach(viewModel.tasks, id: \.self) { task in
                        VStack {
                            Text(task.name)
                                .bold()
                            Text(task.description)
                        }
                        .frame(width: 500, height: 200)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .clipShape(RoundedRectangle (cornerRadius: 30))
                    }
                }
                .navigationDestination(isPresented: $didGoToTaskScreen) {
                    TaskView(vm: viewModel)
                }
                Button("Add Task") {
                    didGoToTaskScreen.toggle()
                }
            }
            .padding()
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
