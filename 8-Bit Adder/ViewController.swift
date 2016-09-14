//
//  ViewController.swift
//  8-Bit Adder
//
//  Created by Francois W. Nel on 24/09/2015.
//  Open sourced on 15/02/2016.
//  Creative Commons BY-NC-SA © 2016 Francois W. Nel.
//

import UIKit

class ViewController: UIViewController {
    var registerX: [Bool] = [false, false, false, false, false, false, false, false]
    var registerY: [Bool] = [false, false, false, false, false, false, false, false]
    var carry: [Bool] = [false, false, false, false, false, false, false, false, false]
    var output: [Bool] = [false, false, false, false, false, false, false, false, false]
    var selectedFunction: [Bool] = [true, false, false, false]


    // Outlets
    @IBOutlet weak var d1: UILabel!
    @IBOutlet weak var d2: UILabel!
    @IBOutlet weak var d4: UILabel!
    @IBOutlet weak var d8: UILabel!
    @IBOutlet weak var d16: UILabel!
    @IBOutlet weak var d32: UILabel!
    @IBOutlet weak var d64: UILabel!
    @IBOutlet weak var d128: UILabel!
    @IBOutlet weak var d256: UILabel!
    @IBOutlet weak var rX1: UIButton!
    @IBOutlet weak var rX1A: UIButton!
    @IBOutlet weak var rX2: UIButton!
    @IBOutlet weak var rX2A: UIButton!
    @IBOutlet weak var rX4: UIButton!
    @IBOutlet weak var rX4A: UIButton!
    @IBOutlet weak var rX8: UIButton!
    @IBOutlet weak var rX8A: UIButton!
    @IBOutlet weak var rX16: UIButton!
    @IBOutlet weak var rX16A: UIButton!
    @IBOutlet weak var rX32: UIButton!
    @IBOutlet weak var rX32A: UIButton!
    @IBOutlet weak var rX64: UIButton!
    @IBOutlet weak var rX64A: UIButton!
    @IBOutlet weak var rX128: UIButton!
    @IBOutlet weak var rX128A: UIButton!
    @IBOutlet weak var rY1: UIButton!
    @IBOutlet weak var rY1A: UIButton!
    @IBOutlet weak var rY2: UIButton!
    @IBOutlet weak var rY2A: UIButton!
    @IBOutlet weak var rY4: UIButton!
    @IBOutlet weak var rY4A: UIButton!
    @IBOutlet weak var rY8: UIButton!
    @IBOutlet weak var rY8A: UIButton!
    @IBOutlet weak var rY16: UIButton!
    @IBOutlet weak var rY16A: UIButton!
    @IBOutlet weak var rY32: UIButton!
    @IBOutlet weak var rY32A: UIButton!
    @IBOutlet weak var rY64: UIButton!
    @IBOutlet weak var rY64A: UIButton!
    @IBOutlet weak var rY128: UIButton!
    @IBOutlet weak var rY128A: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var addButtonA: UIButton!
    @IBOutlet weak var subButton: UIButton!
    @IBOutlet weak var subButtonA: UIButton!
    @IBOutlet weak var andButton: UIButton!
    @IBOutlet weak var andButtonA: UIButton!
    @IBOutlet weak var orButton: UIButton!
    @IBOutlet weak var orButtonA: UIButton!


    // Input A
    @IBAction func rX1_Action(_ sender: UIButton) {
        registerX[0] = true
        update()
    }

    @IBAction func rX1A_Action(_ sender: UIButton) {
        registerX[0] = false
        update()
    }

    @IBAction func rX2_Action(_ sender: UIButton) {
        registerX[1] = true
        update()
    }

    @IBAction func rX2A_Action(_ sender: UIButton) {
        registerX[1] = false
        update()
    }

    @IBAction func rX4_Action(_ sender: UIButton) {
        registerX[2] = true
        update()
    }

    @IBAction func rX4A_Action(_ sender: UIButton) {
        registerX[2] = false
        update()
    }

    @IBAction func rX8_Action(_ sender: UIButton) {
        registerX[3] = true
        update()
    }

    @IBAction func rX8A_Action(_ sender: UIButton) {
        registerX[3] = false
        update()
    }

    @IBAction func rX16_Action(_ sender: UIButton) {
        registerX[4] = true
        update()
    }

    @IBAction func rX16A_Action(_ sender: UIButton) {
        registerX[4] = false
        update()
    }

    @IBAction func rX32_Action(_ sender: UIButton) {
        registerX[5] = true
        update()
    }

    @IBAction func rX32A_Action(_ sender: UIButton) {
        registerX[5] = false
        update()
    }

    @IBAction func rX64_Action(_ sender: UIButton) {
        registerX[6] = true
        update()
    }

    @IBAction func rX64A_Action(_ sender: UIButton) {
        registerX[6] = false
        update()
    }

    @IBAction func rX128_Action(_ sender: UIButton) {
        registerX[7] = true
        update()
    }

    @IBAction func rX128A_Action(_ sender: UIButton) {
        registerX[7] = false
        update()
    }


    // Input B
    @IBAction func rY1_Action(_ sender: UIButton) {
        registerY[0] = true
        update()
    }

    @IBAction func rY1A_Action(_ sender: UIButton) {
        registerY[0] = false
        update()
    }

    @IBAction func rY2_Action(_ sender: UIButton) {
        registerY[1] = true
        update()
    }

    @IBAction func rY2A_Action(_ sender: UIButton) {
        registerY[1] = false
        update()
    }

    @IBAction func rY4_Action(_ sender: UIButton) {
        registerY[2] = true
        update()
    }

    @IBAction func rY4A_Action(_ sender: UIButton) {
        registerY[2] = false
        update()
    }

    @IBAction func rY8_Action(_ sender: UIButton) {
        registerY[3] = true
        update()
    }

    @IBAction func rY8A_Action(_ sender: UIButton) {
        registerY[3] = false
        update()
    }

    @IBAction func rY16_Action(_ sender: UIButton) {
        registerY[4] = true
        update()
    }

    @IBAction func rY16A_Action(_ sender: UIButton) {
        registerY[4] = false
        update()
    }

    @IBAction func rY32_Action(_ sender: UIButton) {
        registerY[5] = true
        update()
    }

    @IBAction func rY32A_Action(_ sender: UIButton) {
        registerY[5] = false
        update()
    }

    @IBAction func rY64_Action(_ sender: UIButton) {
        registerY[6] = true
        update()
    }

    @IBAction func rY64A_Action(_ sender: UIButton) {
        registerY[6] = false
        update()
    }

    @IBAction func rY128_Action(_ sender: UIButton) {
        registerY[7] = true
        update()
    }

    @IBAction func rY128A_Action(_ sender: UIButton) {
        registerY[7] = false
        update()
    }


    // Function
    @IBAction func addButton_Action(_ sender: UIButton) {
        selectedFunction = [true, false, false, false]
        update()
    }

    @IBAction func addButtonA_Action(_ sender: UIButton) {
        selectedFunction = [true, false, false, false]
        update()
    }

    @IBAction func subButton_Action(_ sender: UIButton) {
        selectedFunction = [false, true, false, false]
        update()
    }

    @IBAction func subButtonA_Action(_ sender: UIButton) {
        selectedFunction = [false, true, false, false]
        update()
    }

    @IBAction func andButton_Action(_ sender: UIButton) {
        selectedFunction = [false, false, true, false]
        update()
    }

    @IBAction func andButtonA_Action(_ sender: UIButton) {
        selectedFunction = [false, false, true, false]
        update()
    }

    @IBAction func orButton_Action(_ sender: UIButton) {
        selectedFunction = [false, false, false, true]
        update()
    }

    @IBAction func orButtonA_Action(_ sender: UIButton) {
        selectedFunction = [false, false, false, true]
        update()
    }

    func addBytes(_ inputByte1: inout [Bool], inputByte2: inout [Bool], outputByte: inout [Bool], carryByte: inout [Bool]) {
        for i in 0...7 {
            outputByte[i] = (inputByte1[i] != inputByte2[i]) != carryByte[i]
            carryByte[i+1] = (inputByte1[i] && inputByte2[i]) || ((inputByte1[i] != inputByte2[i]) && carryByte[i])
        }
        outputByte[8] = carryByte[8]
    }

    func subtractBytes(_ inputByte1: inout [Bool], inputByte2: inout [Bool], outputByte: inout [Bool], borrowByte: inout [Bool]) {
        for i in 0...7 {
            outputByte[i] = (inputByte1[i] != inputByte2[i]) != borrowByte[i]
            borrowByte[i+1] = !inputByte1[i] && (inputByte2[i] != borrowByte[i]) || inputByte2[i] && borrowByte[i]
        }
        outputByte[8] = borrowByte[8]
    }

    func andBytes(_ inputByte1: inout [Bool], inputByte2: inout [Bool], outputByte: inout [Bool]) {
        for i in 0...7 {
            outputByte[i] = inputByte1[i] && inputByte2[i]
        }
        outputByte[8] = false
    }

    func orBytes(_ inputByte1: inout [Bool], inputByte2: inout [Bool], outputByte: inout [Bool]) {
        for i in 0...7 {
            outputByte[i] = inputByte1[i] || inputByte2[i]
        }
        outputByte[8] = false
    }

    func xorBytes(_ inputByte1: inout [Bool], inputByte2: inout [Bool], outputByte: inout [Bool]) {
        for i in 0...7 {
            outputByte[i] = inputByte1[i] != inputByte2[i]
        }
        outputByte[8] = false
    }


    // Output
    func update() {
        getOutput()
        updateDisplay()
        updateRegisterX()
        updateRegisterY()
        updateFunctionButtons()
    }

    func getOutput() {
        if selectedFunction[0] {
            addBytes(&registerX, inputByte2: &registerY, outputByte: &output, carryByte: &carry)
        }
        else if selectedFunction[1] {
            subtractBytes(&registerX, inputByte2: &registerY, outputByte: &output, borrowByte: &carry)
        }
        else if selectedFunction[2] {
            andBytes(&registerX, inputByte2: &registerY, outputByte: &output)
        }
        else if selectedFunction[3] {
            xorBytes(&registerX, inputByte2: &registerY, outputByte: &output)
        }
    }

    func updateDisplay() {
        if output[0] {
            d1.isHidden = false
        }
        else {
            d1.isHidden = true
        }
        if output[1] {
            d2.isHidden = false
        }
        else {
            d2.isHidden = true
        }
        if output[2] {
            d4.isHidden = false
        }
        else {
            d4.isHidden = true
        }
        if output[3] {
            d8.isHidden = false
        }
        else {
            d8.isHidden = true
        }
        if output[4] {
            d16.isHidden = false
        }
        else {
            d16.isHidden = true
        }
        if output[5] {
            d32.isHidden = false
        }
        else {
            d32.isHidden = true
        }
        if output[6] {
            d64.isHidden = false
        }
        else {
            d64.isHidden = true
        }
        if output[7] {
            d128.isHidden = false
        }
        else {
            d128.isHidden = true
        }
        if output[8] {
            d256.isHidden = false
        }
        else {
            d256.isHidden = true
        }
    }

    func updateRegisterX() {
        if registerX[0] {
            rX1A.isHidden = false
        }
        else {
            rX1A.isHidden = true
        }
        if registerX[1] {
            rX2A.isHidden = false
        }
        else {
            rX2A.isHidden = true
        }
        if registerX[2] {
            rX4A.isHidden = false
        }
        else {
            rX4A.isHidden = true
        }
        if registerX[3] {
            rX8A.isHidden = false
        }
        else {
            rX8A.isHidden = true
        }
        if registerX[4] {
            rX16A.isHidden = false
        }
        else {
            rX16A.isHidden = true
        }
        if registerX[5] {
            rX32A.isHidden = false
        }
        else {
            rX32A.isHidden = true
        }
        if registerX[6] {
            rX64A.isHidden = false
        }
        else {
            rX64A.isHidden = true
        }
        if registerX[7] {
            rX128A.isHidden = false
        }
        else {
            rX128A.isHidden = true
        }
    }

    func updateRegisterY() {
        if registerY[0] {
            rY1A.isHidden = false
        }
        else {
            rY1A.isHidden = true
        }
        if registerY[1] {
            rY2A.isHidden = false
        }
        else {
            rY2A.isHidden = true
        }
        if registerY[2] {
            rY4A.isHidden = false
        }
        else {
            rY4A.isHidden = true
        }
        if registerY[3] {
            rY8A.isHidden = false
        }
        else {
            rY8A.isHidden = true
        }
        if registerY[4] {
            rY16A.isHidden = false
        }
        else {
            rY16A.isHidden = true
        }
        if registerY[5] {
            rY32A.isHidden = false
        }
        else {
            rY32A.isHidden = true
        }
        if registerY[6] {
            rY64A.isHidden = false
        }
        else {
            rY64A.isHidden = true
        }
        if registerY[7] {
            rY128A.isHidden = false
        }
        else {
            rY128A.isHidden = true
        }
    }

    func updateFunctionButtons() {
        if selectedFunction[0] {
            addButtonA.isHidden = false
        }
        else {
            addButtonA.isHidden = true
        }
        if selectedFunction[1] {
            subButtonA.isHidden = false
        }
        else {
            subButtonA.isHidden = true
        }
        if selectedFunction[2] {
            andButtonA.isHidden = false
        }
        else {
            andButtonA.isHidden = true
        }
        if selectedFunction[3] {
            orButtonA.isHidden = false
        }
        else {
            orButtonA.isHidden = true
        }
    }

    override func viewDidLoad() {
        update()

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

