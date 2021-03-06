//
//  UnitTestLadderGame.swift
//  UnitTestLadderGame
//
//  Created by Mrlee on 2017. 10. 31..
//  Copyright © 2017년 Codesquad Inc. All rights reserved.
//

import XCTest
@testable import LadderGame

class UnitTestLadderGame: XCTestCase {
    var ladderGame: LadderGame!
    var gameInfoTest: GameInfo!
    
    override func setUp() {
        super.setUp()
        let names = "ttt,eee,sss,ttt"
        let rowNumber = 4
        gameInfoTest = GameInfo(player: names, row: rowNumber)
        ladderGame = LadderGame(gameInfoTest)
        
    }
    
    override func tearDown() {
        super.tearDown()
        ladderGame = nil
        gameInfoTest = nil
    }
    
    func testGameInfo() {
        XCTAssertNotNil(gameInfoTest)
        XCTAssertEqual(gameInfoTest.columnNumber, 4)
    }
    
    func testGameLadder() {
        XCTAssertNotNil(ladderGame)
        XCTAssertNotNil(ladderGame.names)
        XCTAssertEqual(ladderGame.columnNumber, 3)
        XCTAssertEqual(ladderGame.rowNumber, 4)
        XCTAssertNotNil(ladderGame.frames)        
    }
}
