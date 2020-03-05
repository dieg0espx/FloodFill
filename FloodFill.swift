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


   
        for x in stride(from: height-1, to: -1, by: -1){
            for y in stride(from: width-1, to: -1, by: -1){
                if square[x][y] == 1{
                    square[x-1][y] = square[x][y] + 1
                    square[x][y-1] = square[x][y] + 1
                }
            }
        }

    printSquare()
}


