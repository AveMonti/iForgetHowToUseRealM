//
//  TaskList.swift
//  iForgetHowToUseRealM
//
//  Created by Mateusz Chojnacki on 31/07/2019.
//  Copyright © 2019 Mateusz Chojnacki. All rights reserved.
//

import Foundation
import RealmSwift

class TaskListR: Object {
    @objc dynamic var nameTaskList = ""
    let subTaskList = List<SubTaskR>()
    
    convenience init(nameTaskList: String) {
        self.init()
        self.nameTaskList = nameTaskList;
    }
}
