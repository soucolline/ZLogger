// https://github.com/Quick/Quick

import Quick
import Nimble

@testable import ZLogger

class TableOfContentsSpec: QuickSpec {
  override func spec() {
    describe("Simple tests") {
      it("should succeed") {
        expect(1) == 1
      }
    }
  }
}
