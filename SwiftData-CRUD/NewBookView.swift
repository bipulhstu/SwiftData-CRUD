//
//  NewBookView.swift
//  SwiftData-CRUD
//
//  Created by Bipul Islam on 21/12/24.
//

import SwiftUI

struct NewBookView: View {
    @Environment(\.modelContext) private var context
    //to dismiss the view
    @Environment(\.dismiss) var dismiss
    @State private var title = ""
    @State private var author = ""
    
    
    var body: some View {
        NavigationStack{
            Form{
                TextField("Book Title", text: $title)
                TextField("Author", text: $author)
                
                Button("Create"){
                    let newBook = Book(title: title, author: author)
                    context.insert(newBook)
                    dismiss()
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .buttonStyle(.borderedProminent)
                .padding(.vertical)
                .disabled(title.isEmpty || author.isEmpty)
                .navigationBarTitle("New Book")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .topBarLeading) {
                        Button("Cancel"){
                            dismiss()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    NewBookView()
}
