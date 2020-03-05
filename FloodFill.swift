//
//  FloodFill.swift
//  SwiftAlgorithmsDataStructures
//
//  Created by Diego Espinosa on 2020-03-03.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//

import Foundation

func floodFill(){    
    let a = readLine()!.split(separator: " ")
    let width = Int(a[0])!
    let height = Int(a[1])!
    var square = [[Int]] (repeating: [Int](repeating: 0, count: width), count: height)
    
    func printSquare(){
        print()
        for x in 0..<height{
            for y in 0..<width{
                print(square[x][y], terminator: " ")
            }
            print()
        }
    }
    
    // Filling the array
    for x in 0..<height{
        let nums = readLine()!.split(separator: " ")
        for y in 0..<width{
            square[x][y] = Int(nums[y])!
        }
    }
    
    var yes1 = false
    var yes2 = false
    var count = 0
    
    for x in stride(from: height-1, to: 0, by: -1){
        for y in stride(from: width-1, to: 0, by: -1){
            if square[x][y] == 1{
                if square[x-1][y] == 0{
                    square[x-1][y] = 1
                    yes1 = true
                }
                if square[x][y-1] == 0{
                    square[x][y-1] = 1
                    yes2 = true
                }
                if(yes1 || yes2){
                    yes1 = false
                    yes2 = false
                    count += 1
                }
                printSquare()
            }
        }
    }
    
    print(count)
}
