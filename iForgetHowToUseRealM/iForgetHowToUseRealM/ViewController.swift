//
//  ViewController.swift
//  iForgetHowToUseRealM
//
//  Created by Mateusz Chojnacki on 31/07/2019.
//  Copyright © 2019 Mateusz Chojnacki. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    var realm = RealmService.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let newTask = TaskListR(nameTaskList: "task1")
        self.realm.create(taskList: newTask)
        let newTask2 = TaskListR(nameTaskList: "task2")
        self.realm.create(taskList: newTask2)
        
        print(self.realm.getAll()[0].nameTaskList)
        print(self.realm.getAll()[1].nameTaskList)
        
        self.realm.update(taskList: newTask, taskListName: "task3")
        print(self.realm.getAll()[0].nameTaskList)
        print(self.realm.getAll())
        
        
    }


}

