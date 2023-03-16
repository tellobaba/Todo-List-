//
//  TaskListView.swift
//  Todo List
//
//  Created by Oluwatomiwa on 16/03/2023.
//

import SwiftUI

struct TaskListView: View {
    
    var tasks = Task.getDummyTasks()
    
    var body: some View {
        
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            ScrollView{
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                    
                    VStack {
                        
                        HStack{
                            Text("Today")
                            Spacer()
                            Text("\(tasks.count)")
                            Image("Arrow")
                        }
                        
                        ForEach(tasks){ task in
                            HStack {
                                Image("Box")
                                Text(task.title)
                                Spacer()
                                VStack(alignment: .trailing, spacing: 2 ){
                                    Text("18:00")
                                    Image("Alarm")
                                }
                            }
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 16)
            }
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    Image("Add")
                        .padding(.bottom, 28)
                        .padding(.trailing, 24)
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading){
                Image("Menu")
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing){
                Image("More")
            }
        }
        .navigationTitle("Today")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
