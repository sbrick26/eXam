//
//  ViewController.swift
//  eXam
//
//  Created by Swayam Barik on 7/9/16.
//  Copyright © 2016 Swayam Barik. All rights reserved.
//

import UIKit

var grades: [Double] = []
var loads = 0
var semesterGrade = 0.0
var roundedGrade = 0
var des = ""
var courseType = ""
var totalGrade = 0.0
var needScore = 0.0
var maintainScore = 0.0

class ViewController: UIViewController {

    
    @IBOutlet weak var gradeLabel: UILabel!
    var grade = ""
    
    
    var total = 0.0
    
    
    @IBOutlet weak var semesterGradeLabel: UILabel!
    
    @IBOutlet weak var examDescription: UILabel!
    
    @IBAction func apibCourse(sender: AnyObject) {
        courseType = "ap"
    }
    @IBAction func honorsCourse(sender: AnyObject) {
        courseType = "honors"
    }
    
    
    @IBAction func onLevelCourse(sender: AnyObject) {
        courseType = "onLevel"
    }
    
    
    @IBAction func one(sender: AnyObject) {
        grade += "1"
        gradeLabel.text = grade
    }
    
   
    @IBAction func two(sender: AnyObject) {
        grade += "2"
        gradeLabel.text = grade
    }
    
    @IBAction func three(sender: AnyObject) {
        grade += "3"
        gradeLabel.text = grade
    }
    
    @IBAction func four(sender: AnyObject) {
        grade += "4"
        gradeLabel.text = grade
    }
    
    @IBAction func five(sender: AnyObject) {
        grade += "5"
        gradeLabel.text = grade
    }
    
    @IBAction func six(sender: AnyObject) {
        grade += "6"
        gradeLabel.text = grade
    }
    
    @IBAction func seven(sender: AnyObject) {
        grade += "7"
        gradeLabel.text = grade
    }
    
    @IBAction func eight(sender: AnyObject) {
        grade += "8"
        gradeLabel.text = grade
    }
    
    @IBAction func nine(sender: AnyObject) {
        grade += "9"
        gradeLabel.text = grade
    }
    
    @IBAction func decimal(sender: AnyObject) {
        grade += "."
        gradeLabel.text = grade
    }
    
    @IBAction func zero(sender: AnyObject) {
        grade += "0"
        gradeLabel.text = grade
    }
    
    @IBAction func backspace(sender: AnyObject) {
        if grade != ""
        {
            grade.removeAtIndex(grade.endIndex.predecessor())
            gradeLabel.text = grade
        }
    }

    
    @IBAction func nextFirstGrade(sender: AnyObject) {
        
        grades.append(Double(gradeLabel.text!)!)
        print(grades)
    }
    
    @IBAction func nextSecondGrade(sender: AnyObject) {
        grades.append(Double(gradeLabel.text!)!)
        print(grades)
    }
    
    @IBAction func nextThirdGrade(sender: AnyObject) {
        grades.append(Double(gradeLabel.text!)!)
        print(grades)
        
        for grade in grades{
            total += grade
        }
        semesterGrade = total/3
        roundedGrade = Int(round(semesterGrade))
        semesterGrade = round(semesterGrade*100)/100
        
        
        
        if courseType == "ap"
        {
            if roundedGrade >= 97
            {
                totalGrade = 96.5*7
                needScore = totalGrade - semesterGrade
                
                des = "You have a \(semesterGrade) average! You are maxing the class and do not need to take the exam! However, if you have more than 3 absences, you’ll need a \(needScore) on the exam to maintain the 6.0 GPA!"
            }
            
            else if roundedGrade >= 94
            {
                totalGrade = 96.5*7
                needScore = totalGrade - semesterGrade
                totalGrade = 93.5*7
                maintainScore = totalGrade - semesterGrade
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 6.0! In order to maintain your current GPA Point of 5.8, you'll need a \(maintainScore) on the exam!"
            }
            else if roundedGrade >= 90
            {
                totalGrade = 93.5*7
                needScore = totalGrade - semesterGrade
                totalGrade = 89.5*7
                maintainScore = totalGrade - semesterGrade
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 5.8! In order to maintain your current GPA Point of 5.6, you'll need a \(maintainScore) on the exam!"
            }
            
            else if roundedGrade >= 87
            {
                totalGrade = 93.5*7
                needScore = totalGrade - semesterGrade
                totalGrade = 86.5*7
                maintainScore = totalGrade - semesterGrade
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 5.6! In order to maintain your current GPA Point of 5.4, you'll need a \(maintainScore) on the exam!"
            }
            
            else if roundedGrade >= 84
            {
                totalGrade = 86.5*7
                needScore = totalGrade - semesterGrade
                totalGrade = 83.5*7
                maintainScore = totalGrade - semesterGrade
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 5.4! In order to maintain your current GPA Point of 5.2, you'll need a \(maintainScore) on the exam!"
            }
            
        }
        else if courseType == "honors"
        {
            
        }
        else
        {
            
        }
        
        
        
        
    }
    
    
    @IBAction func recal(sender: AnyObject) {
        grades = []
        loads = 2
        semesterGrade = 0.0
        grade = ""
        roundedGrade = 0
        total = 0.0
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loads += 1
        print(loads)
        if loads%5 == 0
        {
            let triggerTime = (Int64(NSEC_PER_SEC) * 1)
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, triggerTime), dispatch_get_main_queue(), { () -> Void in
                self.semesterGradeLabel.text = String(roundedGrade)
                print("printed the label")
                print(semesterGrade)
                print(roundedGrade)
            })
            
            
            
        }
        reloadInputViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



