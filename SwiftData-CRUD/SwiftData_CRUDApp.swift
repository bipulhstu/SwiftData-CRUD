//
//  SwiftData_CRUDApp.swift
//  SwiftData-CRUD
//
//  Created by Bipul Islam on 21/12/24.
//

import SwiftUI
import SwiftData

@main
struct SwiftData_CRUDApp: App {
    var body: some Scene {
        WindowGroup {
            BookListView()
        }
        .modelContainer(for: Book.self)
    }
    
    init () {
        print(URL.applicationSupportDirectory.path(percentEncoded: false))
    }
}
