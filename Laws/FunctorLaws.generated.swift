// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import XCTest
@testable import FunctionalKit
import SwiftCheck

class FunctorLawsTests: XCTestCase {

//MARK: Array
// Identity Law
    func testArrayIdentity() {
        property("Array - Functor Laws - Identity") <- forAll { (x: ArrayOf<Int>) in
            return x.getArray.map(fidentity) == fidentity(x.getArray)
        }
    }
//MARK: Future
// Identity Law
    func testFutureIdentity() {
        property("Future - Functor Laws - Identity") <- forAll { (x: Int) in
            return Future.unfold({ $0(x) }).map(fidentity) == fidentity(Future.unfold({ $0(x) }))
        }
    }

}
