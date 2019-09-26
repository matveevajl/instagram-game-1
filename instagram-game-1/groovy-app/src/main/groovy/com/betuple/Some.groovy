package com.betuple

class InnerClosure {

    def runOne() {
        println("Inner. Run method one")
    }

    def runTwo() {
        println("Inner. Run method two")
    }
}

class Inner {

    def let(Closure closure) {
        closure.call(new InnerClosure())
    }

}

class Some {

    Inner inner = null

    Some() {
        inner = new Inner()
    }

    def doAny() {
        inner?.let {
            it.runOne()
            it.runTwo()
        }
    }
}

class Main {
    static void main(String[] args) {
        Some some = new Some()
        some.doAny()
    }
}
