//
//  TaskView.swift
//  ToDoListVisionApp
//
//  Created by Davaughn Williams on 3/21/25.
//

import SwiftUI

struct TaskView: View {
    @State var nameTextField = ""
    @State var descTextField = ""
    @Bindable var vm: ToDoListManager
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("name:")
                    .bold()
                    .foregroundStyle(.black)
                    .padding(.leading)
                TextField("",text: $nameTextField)
            }
            .frame(width: 500, height: 50)
            .background(Color.white)
            .foregroundStyle(.black)
            .clipShape(RoundedRectangle (cornerRadius: 30))
            .shadow(radius: 30)
            HStack {
                Spacer()
                Text("description:")
                    .bold()
                    .foregroundStyle(.black)
                    .padding(.leading)
                TextField("",text: $descTextField)
            }
            .frame(width: 500, height: 50)
            .background(Color.white)
            .foregroundStyle(.black)
            .clipShape(RoundedRectangle (cornerRadius: 30))
            .shadow(radius: 30)
            
            Button {
                vm.tasks.append(Task(name: nameTextField, description: descTextField))
//                dismiss()
            } label: {
                Text("Add Task")
            }
            .background(Color.white)
            .foregroundStyle(.black)
            .clipShape(RoundedRectangle (cornerRadius: 30))
            .shadow(radius: 30)


        }
    }
}

#Preview {
    TaskView(vm: ToDoListManager())
}
