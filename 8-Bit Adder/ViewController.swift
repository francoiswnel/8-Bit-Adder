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
    @IBAction func rX1_Action(sender: UIButton) {
        registerX[0] = true
        update()
    }

    @IBAction func rX1A_Action(sender: UIButton) {
        registerX[0] = false
        update()
    }

    @IBAction func rX2_Action(sender: UIButton) {
        registerX[1] = true
        update()
    }

    @IBAction func rX2A_Action(sender: UIButton) {
        registerX[1] = false
        update()
    }

    @IBAction func rX4_Action(sender: UIButton) {
        registerX[2] = true
        update()
    }

    @IBAction func rX4A_Action(sender: UIButton) {
        registerX[2] = false
        update()
    }

    @IBAction func rX8_Action(sender: UIButton) {
        registerX[3] = true
        update()
    }

    @IBAction func rX8A_Action(sender: UIButton) {
        registerX[3] = false
        update()
    }

    @IBAction func rX16_Action(sender: UIButton) {
        registerX[4] = true
        update()
    }

    @IBAction func rX16A_Action(sender: UIButton) {
        registerX[4] = false
        update()
    }

    @IBAction func rX32_Action(sender: UIButton) {
        registerX[5] = true
        update()
    }

    @IBAction func rX32A_Action(sender: UIButton) {
        registerX[5] = false
        update()
    }

    @IBAction func rX64_Action(sender: UIButton) {
        registerX[6] = true
        update()
    }

    @IBAction func rX64A_Action(sender: UIButton) {
        registerX[6] = false
        update()
    }

    @IBAction func rX128_Action(sender: UIButton) {
        registerX[7] = true
        update()
    }

    @IBAction func rX128A_Action(sender: UIButton) {
        registerX[7] = false
        update()
    }


    // Input B
    @IBAction func rY1_Action(sender: UIButton) {
        registerY[0] = true
        update()
    }

    @IBAction func rY1A_Action(sender: UIButton) {
        registerY[0] = false
        update()
    }

    @IBAction func rY2_Action(sender: UIButton) {
        registerY[1] = true
        update()
    }

    @IBAction func rY2A_Action(sender: UIButton) {
        registerY[1] = false
        update()
    }

    @IBAction func rY4_Action(sender: UIButton) {
        registerY[2] = true
        update()
    }

    @IBAction func rY4A_Action(sender: UIButton) {
        registerY[2] = false
        update()
    }

    @IBAction func rY8_Action(sender: UIButton) {
        registerY[3] = true
        update()
    }

    @IBAction func rY8A_Action(sender: UIButton) {
        registerY[3] = false
        update()
    }

    @IBAction func rY16_Action(sender: UIButton) {
        registerY[4] = true
        update()
    }

    @IBAction func rY16A_Action(sender: UIButton) {
        registerY[4] = false
        update()
    }

    @IBAction func rY32_Action(sender: UIButton) {
        registerY[5] = true
        update()
    }

    @IBAction func rY32A_Action(sender: UIButton) {
        registerY[5] = false
        update()
    }

    @IBAction func rY64_Action(sender: UIButton) {
        registerY[6] = true
        update()
    }

    @IBAction func rY64A_Action(sender: UIButton) {
        registerY[6] = false
        update()
    }

    @IBAction func rY128_Action(sender: UIButton) {
        registerY[7] = true
        update()
    }

    @IBAction func rY128A_Action(sender: UIButton) {
        registerY[7] = false
        update()
    }


    // Function
    @IBAction func addButton_Action(sender: UIButton) {
        selectedFunction = [true, false, false, false]
        update()
    }

    @IBAction func addButtonA_Action(sender: UIButton) {
        selectedFunction = [true, false, false, false]
        update()
    }

    @IBAction func subButton_Action(sender: UIButton) {
        selectedFunction = [false, true, false, false]
        update()
    }

    @IBAction func subButtonA_Action(sender: UIButton) {
        selectedFunction = [false, true, false, false]
        update()
    }

    @IBAction func andButton_Action(sender: UIButton) {
        selectedFunction = [false, false, true, false]
        update()
    }

    @IBAction func andButtonA_Action(sender: UIButton) {
        selectedFunction = [false, false, true, false]
        update()
    }

    @IBAction func orButton_Action(sender: UIButton) {
        selectedFunction = [false, false, false, true]
        update()
    }

    @IBAction func orButtonA_Action(sender: UIButton) {
        selectedFunction = [false, false, false, true]
        update()
    }

    func addBytes(inout inputByte1: [Bool], inout inputByte2: [Bool], inout outputByte: [Bool], inout carryByte: [Bool]) {
        for i in 0...7 {
            outputByte[i] = (inputByte1[i] != inputByte2[i]) != carryByte[i]
            carryByte[i+1] = (inputByte1[i] && inputByte2[i]) || ((inputByte1[i] != inputByte2[i]) && carryByte[i])
        }
        outputByte[8] = carryByte[8]
    }

    func subtractBytes(inout inputByte1: [Bool], inout inputByte2: [Bool], inout outputByte: [Bool], inout borrowByte: [Bool]) {
        for i in 0...7 {
            outputByte[i] = (inputByte1[i] != inputByte2[i]) != borrowByte[i]
            borrowByte[i+1] = !inputByte1[i] && (inputByte2[i] != borrowByte[i]) || inputByte2[i] && borrowByte[i]
        }
        outputByte[8] = borrowByte[8]
    }

    func andBytes(inout inputByte1: [Bool], inout inputByte2: [Bool], inout outputByte: [Bool]) {
        for i in 0...7 {
            outputByte[i] = inputByte1[i] && inputByte2[i]
        }
        outputByte[8] = false
    }

    func orBytes(inout inputByte1: [Bool], inout inputByte2: [Bool], inout outputByte: [Bool]) {
        for i in 0...7 {
            outputByte[i] = inputByte1[i] || inputByte2[i]
        }
        outputByte[8] = false
    }

    func xorBytes(inout inputByte1: [Bool], inout inputByte2: [Bool], inout outputByte: [Bool]) {
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
            d1.hidden = false
        }
        else {
            d1.hidden = true
        }
        if output[1] {
            d2.hidden = false
        }
        else {
            d2.hidden = true
        }
        if output[2] {
            d4.hidden = false
        }
        else {
            d4.hidden = true
        }
        if output[3] {
            d8.hidden = false
        }
        else {
            d8.hidden = true
        }
        if output[4] {
            d16.hidden = false
        }
        else {
            d16.hidden = true
        }
        if output[5] {
            d32.hidden = false
        }
        else {
            d32.hidden = true
        }
        if output[6] {
            d64.hidden = false
        }
        else {
            d64.hidden = true
        }
        if output[7] {
            d128.hidden = false
        }
        else {
            d128.hidden = true
        }
        if output[8] {
            d256.hidden = false
        }
        else {
            d256.hidden = true
        }
    }

    func updateRegisterX() {
        if registerX[0] {
            rX1A.hidden = false
        }
        else {
            rX1A.hidden = true
        }
        if registerX[1] {
            rX2A.hidden = false
        }
        else {
            rX2A.hidden = true
        }
        if registerX[2] {
            rX4A.hidden = false
        }
        else {
            rX4A.hidden = true
        }
        if registerX[3] {
            rX8A.hidden = false
        }
        else {
            rX8A.hidden = true
        }
        if registerX[4] {
            rX16A.hidden = false
        }
        else {
            rX16A.hidden = true
        }
        if registerX[5] {
            rX32A.hidden = false
        }
        else {
            rX32A.hidden = true
        }
        if registerX[6] {
            rX64A.hidden = false
        }
        else {
            rX64A.hidden = true
        }
        if registerX[7] {
            rX128A.hidden = false
        }
        else {
            rX128A.hidden = true
        }
    }

    func updateRegisterY() {
        if registerY[0] {
            rY1A.hidden = false
        }
        else {
            rY1A.hidden = true
        }
        if registerY[1] {
            rY2A.hidden = false
        }
        else {
            rY2A.hidden = true
        }
        if registerY[2] {
            rY4A.hidden = false
        }
        else {
            rY4A.hidden = true
        }
        if registerY[3] {
            rY8A.hidden = false
        }
        else {
            rY8A.hidden = true
        }
        if registerY[4] {
            rY16A.hidden = false
        }
        else {
            rY16A.hidden = true
        }
        if registerY[5] {
            rY32A.hidden = false
        }
        else {
            rY32A.hidden = true
        }
        if registerY[6] {
            rY64A.hidden = false
        }
        else {
            rY64A.hidden = true
        }
        if registerY[7] {
            rY128A.hidden = false
        }
        else {
            rY128A.hidden = true
        }
    }

    func updateFunctionButtons() {
        if selectedFunction[0] {
            addButtonA.hidden = false
        }
        else {
            addButtonA.hidden = true
        }
        if selectedFunction[1] {
            subButtonA.hidden = false
        }
        else {
            subButtonA.hidden = true
        }
        if selectedFunction[2] {
            andButtonA.hidden = false
        }
        else {
            andButtonA.hidden = true
        }
        if selectedFunction[3] {
            orButtonA.hidden = false
        }
        else {
            orButtonA.hidden = true
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

