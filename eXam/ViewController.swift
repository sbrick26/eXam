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
class ViewController: UIViewController {

    
    @IBOutlet weak var gradeLabel: UILabel!
    var grade = ""
    
    var roundedGrade = 0
    var total = 0.0
    
    
    @IBOutlet weak var semesterGradeLabel: UILabel!
    
    
    
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
                self.semesterGradeLabel.text = String(semesterGrade)
                print("printed the label")
                print(semesterGrade)
            })
        }
        reloadInputViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



