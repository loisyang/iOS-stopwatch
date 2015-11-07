//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Jingqi Yang Lois on 9/16/15.
//  Copyright (c) 2015 Jingqi Yang Lois. All rights reserved.
//

import Foundation

class Stopwatch {
    
    private var startTime: NSDate?
    
    func start() {
        startTime = NSDate()
    }
    
    func stop() {
        startTime = nil
    }
    
    var isRunning: Bool {
        if startTime == nil {
            return false
        } else {
            return true
        }
    }
    
    var elapsedTime: NSTimeInterval {
        if let startTime = self.startTime {
            return -1 * startTime.timeIntervalSinceNow // could also just say -startTime.timeIntervalSinceNow
        } else {
            return 0
        }
    }
    
    var elapsedTimeAsString: String {
        // return the formatted string...
        let diffSecs = Int(elapsedTime % 60)
        let diffMins = Int(elapsedTime / 60)
        let diffMiniSecs = Int((elapsedTime*10) % 10)
        let elapsedTimeString: String = String(format: "%02d:%02d:%01d", diffMins, diffSecs, diffMiniSecs)
        return elapsedTimeString
    }
    
}