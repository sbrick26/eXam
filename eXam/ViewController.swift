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
    
    @IBOutlet weak var nextFirstLabel: UIButton!
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var nextSecondLabel: UIButton!
    
    @IBOutlet weak var semesterGradeLabel: UILabel!
    
    @IBOutlet weak var nextThirdLabel: UIButton!
    @IBOutlet weak var examDescription: UILabel!
    
    @IBOutlet weak var onLabel: UIButton!
    @IBOutlet weak var preLabel: UIButton!
    @IBOutlet weak var apibCourseLabel: UIButton!
    
    @IBOutlet weak var startButton: UIButton!
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
                needScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                
                des = "You have a \(semesterGrade) average! You are maxing the class and do not need to take the exam! However, if you have more than 3 absences, you’ll need a \(needScore) on the exam to maintain the 6.0 GPA!"
            }
            
            else if roundedGrade >= 94
            {
                totalGrade = 96.5*7
                needScore = totalGrade - semesterGrade*6
                
                totalGrade = 93.5*7
                maintainScore = totalGrade - semesterGrade*6
                
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 6.0! In order to maintain your current GPA Point of 5.8, you'll need a \(maintainScore) on the exam!"
            }
            else if roundedGrade >= 90
            {
                totalGrade = 93.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 89.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 5.8! In order to maintain your current GPA Point of 5.6, you'll need a \(maintainScore) on the exam!"
            }
            
            else if roundedGrade >= 87
            {
                totalGrade = 89.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 86.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 5.6! In order to maintain your current GPA Point of 5.4, you'll need a \(maintainScore) on the exam!"
            }
            
            else if roundedGrade >= 84
            {
                totalGrade = 86.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 83.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 5.4! In order to maintain your current GPA Point of 5.2, you'll need a \(maintainScore) on the exam!"
            }
            else if roundedGrade >= 80
            {
                totalGrade = 83.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 79.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 5.2! In order to maintain your current GPA Point of 5.0, you'll need a \(maintainScore) on the exam!"
            }
            else if roundedGrade >= 77
            {
                totalGrade = 79.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 76.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 5.0! In order to maintain your current GPA Point of 4.8, you'll need a \(maintainScore) on the exam!"
            }
            else if roundedGrade >= 74
            {
                totalGrade = 76.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 73.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 4.8! In order to maintain your current GPA Point of 4.6, you'll need a \(maintainScore) on the exam!"
            }
            else if roundedGrade >= 71
            {
                totalGrade = 73.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 70.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 4.6! In order to maintain your current GPA Point of 4.4, you'll need a \(maintainScore) on the exam!"
            }
            else{
                totalGrade = 70.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 83.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 4.4! In order to maintain your current GPA Point of 4.2, you'll need a \(maintainScore) on the exam!"
            }
            
        }
        else if courseType == "honors"
        {
            if roundedGrade >= 97
            {
                totalGrade = 96.5*7
                needScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                
                
                des = "You have a \(semesterGrade) average! You are maxing the class and do not need to take the exam! However, if you have more than 3 absences, you’ll need a \(needScore) on the exam to maintain the 5.5 GPA!"
            }
                
            else if roundedGrade >= 94
            {
                totalGrade = 96.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 93.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 5.5! In order to maintain your current GPA Point of 5.3, you'll need a \(maintainScore) on the exam!"
            }
            else if roundedGrade >= 90
            {
                totalGrade = 93.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 89.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 5.3! In order to maintain your current GPA Point of 5.1, you'll need a \(maintainScore) on the exam!"
            }
                
            else if roundedGrade >= 87
            {
                totalGrade = 89.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 86.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 5.1! In order to maintain your current GPA Point of 4.9, you'll need a \(maintainScore) on the exam!"
            }
                
            else if roundedGrade >= 84
            {
                totalGrade = 86.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 83.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 4.9! In order to maintain your current GPA Point of 4.7, you'll need a \(maintainScore) on the exam!"
            }
            else if roundedGrade >= 80
            {
                totalGrade = 83.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 79.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 4.7! In order to maintain your current GPA Point of 4.5, you'll need a \(maintainScore) on the exam!"
            }
            else if roundedGrade >= 77
            {
                totalGrade = 79.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 76.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 4.5! In order to maintain your current GPA Point of 4.3, you'll need a \(maintainScore) on the exam!"
            }
            else if roundedGrade >= 74
            {
                totalGrade = 76.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 73.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 4.3! In order to maintain your current GPA Point of 4.1, you'll need a \(maintainScore) on the exam!"
            }
            else if roundedGrade >= 71
            {
                totalGrade = 73.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 70.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 4.1! In order to maintain your current GPA Point of 3.9, you'll need a \(maintainScore) on the exam!"
            }
            else{
                totalGrade = 70.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 83.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 3.9! In order to maintain your current GPA Point of 3.7, you'll need a \(maintainScore) on the exam!"
            }
        }
        else
        {
            if roundedGrade >= 97
            {
                totalGrade = 96.5*7
                needScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
              
                
                des = "You have a \(semesterGrade) average! You are maxing the class and do not need to take the exam! However, if you have more than 3 absences, you’ll need a \(needScore) on the exam to maintain the 5.0 GPA!"
            }
                
            else if roundedGrade >= 94
            {
                totalGrade = 96.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 93.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 5.0! In order to maintain your current GPA Point of 4.8, you'll need a \(maintainScore) on the exam!"
            }
            else if roundedGrade >= 90
            {
                totalGrade = 93.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 89.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 4.8! In order to maintain your current GPA Point of 4.6, you'll need a \(maintainScore) on the exam!"
            }
                
            else if roundedGrade >= 87
            {
                totalGrade = 89.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 86.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 4.6! In order to maintain your current GPA Point of 4.4, you'll need a \(maintainScore) on the exam!"
            }
                
            else if roundedGrade >= 84
            {
                totalGrade = 86.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 83.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 4.4! In order to maintain your current GPA Point of 4.2, you'll need a \(maintainScore) on the exam!"
            }
            else if roundedGrade >= 80
            {
                totalGrade = 83.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 79.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 4.2! In order to maintain your current GPA Point of 4.0, you'll need a \(maintainScore) on the exam!"
            }
            else if roundedGrade >= 77
            {
                totalGrade = 79.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 76.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 4.0! In order to maintain your current GPA Point of 3.8, you'll need a \(maintainScore) on the exam!"
            }
            else if roundedGrade >= 74
            {
                totalGrade = 76.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 73.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 3.8! In order to maintain your current GPA Point of 3.6, you'll need a \(maintainScore) on the exam!"
            }
            else if roundedGrade >= 71
            {
                totalGrade = 73.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 70.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 3.6! In order to maintain your current GPA Point of 3.4, you'll need a \(maintainScore) on the exam!"
            }
            else{
                totalGrade = 70.5*7
                needScore = totalGrade - semesterGrade*6
                totalGrade = 83.5*7
                maintainScore = totalGrade - semesterGrade*6
                needScore = round(needScore*100)/100
                maintainScore = round(maintainScore*100)/100
                
                des = "You have a \(semesterGrade) average! If you took the exam, you would need a \(needScore) to get to the next GPA Point, which is 3.4! In order to maintain your current GPA Point of 3.2, you'll need a \(maintainScore) on the exam!"
            }
        }
        
        
        
        
    }
    
    
    @IBAction func recal(sender: AnyObject) {
        grades = []
        loads = 2
        semesterGrade = 0.0
        grade = ""
        roundedGrade = 0
        total = 0.0
        des = ""
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loads += 1
        print(loads)
        if loads%6 == 0
        {
            let triggerTime = (Int64(NSEC_PER_SEC) * 1)
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, triggerTime), dispatch_get_main_queue(), { () -> Void in
                self.semesterGradeLabel.text = String(roundedGrade)
                self.examDescription.text = des
                print("printed the label")
                print(semesterGrade)
                print(roundedGrade)
            })
            
            
            
        }
        reloadInputViews()
        
       
        self.view.layer.backgroundColor = UIColor(colorLiteralRed: 3/255, green: 156/255,blue: 159/255, alpha: 1).CGColor
        if loads == 3{
            nextFirstLabel.layer.backgroundColor = UIColor.whiteColor().CGColor
        }
        if loads == 4{
            nextSecondLabel.layer.backgroundColor = UIColor.whiteColor().CGColor
        }
        if loads == 5{
            nextThirdLabel.layer.backgroundColor = UIColor.whiteColor().CGColor
        }
        if loads == 1
        {
            startButton.layer.borderWidth = 1
            startButton.layer.borderColor = UIColor.whiteColor().CGColor
            startButton.layer.backgroundColor = UIColor.whiteColor().CGColor
            startButton.titleLabel?.textColor = UIColor.whiteColor()
            startButton.layer.cornerRadius = 25
            startButton.titleLabel?.font = UIFont(name: "Helvetica Neue Bold", size: 15)
        }
        
        if loads == 2 || loads == 7{
            apibCourseLabel.layer.borderWidth = 1
            apibCourseLabel.layer.borderColor = UIColor.whiteColor().CGColor
            apibCourseLabel.layer.backgroundColor = UIColor.whiteColor().CGColor
            apibCourseLabel.titleLabel?.textColor = UIColor.whiteColor()
            apibCourseLabel.layer.cornerRadius = 25
            apibCourseLabel.titleLabel?.font = UIFont(name: "Helvetica Neue Bold", size: 15)
            preLabel.layer.borderWidth = 1
            preLabel.layer.borderColor = UIColor.whiteColor().CGColor
            preLabel.layer.backgroundColor =  UIColor.whiteColor().CGColor
            preLabel.titleLabel?.textColor = UIColor.whiteColor()
            preLabel.layer.cornerRadius = 25
            preLabel.titleLabel?.font = UIFont(name: "Helvetica Neue Bold", size: 15)
            onLabel.layer.borderWidth = 1
            onLabel.layer.borderColor = UIColor.whiteColor().CGColor
            onLabel.layer.backgroundColor =  UIColor.whiteColor().CGColor
            onLabel.titleLabel?.textColor = UIColor.whiteColor()
            onLabel.layer.cornerRadius = 25
            onLabel.titleLabel?.font = UIFont(name: "Helvetica Neue Bold", size: 15)
        
        
        
        }
        
    }
    
    override func viewWillAppear(animated: Bool) {
         if loads == 2 || loads == 7 {
        UIView.animateWithDuration(0.35, animations: {
            self.apibCourseLabel.center.x -= self.view.bounds.width
            self.preLabel.center.x += self.view.bounds.width
            self.onLabel.center.x -= self.view.bounds.width
            self.question.center.x += self.view.bounds.width
            
        })
        }
        if loads == 1 {
            UIView.animateWithDuration(0.35, animations: {
                self.startButton.center.x -= self.view.bounds.width
                
            })
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}



