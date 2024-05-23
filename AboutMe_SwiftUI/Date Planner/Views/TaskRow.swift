//
//  TaskRow.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 11/8/22.
//

import SwiftUI

struct TaskRow: View {
    @Binding var task: EventTask
    @FocusState private var isFocused: Bool
    var isEditing: Bool
    
    var body: some View {
        HStack {
            Button {
                task.isCompleted.toggle()
            } label: {
                Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
            }
            .buttonStyle(.plain)
            
            if isEditing || task.isNew {
                TextField("Task description", text: $task.text)
                    .focused($isFocused)
                    .onChange(of: isFocused) { newValue in
                        if newValue == false {
                            task.isNew = false
                        }
                    }
            } else {
                Text(task.text)
            }
            Spacer()
        }
        .padding(.vertical, 10)
        .task {
            if task.isNew {
                isFocused = true
            }
        }
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: .constant(EventTask(text: "Do something!")), isEditing: false)
    }
}
