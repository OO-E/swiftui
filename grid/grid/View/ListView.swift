//
//  ListView.swift
//  grid
//
//  Created by OO E on 18.04.2021.
//

import SwiftUI

struct ListView: View {
    
    @State var task = [Task]()
    
    private func addTask() {
        task.append(Task(name: "Wash the car"))
        
    }
    
    var body: some View {
        
        List {
            Button(action: addTask, label: {
                Text("Add Task")
            })
            
            ForEach(task) { task in
                Text(task.name)
            }
            
        }
    }
}

struct Task: Identifiable {
    
    let id = UUID()
    let name: String
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
