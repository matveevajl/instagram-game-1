package com.betuple

class Inner {

    fun runOne() {
        println("Inner. Run method one")
    }

    fun runTwo() {
        println("Inner. Run method two")
    }
}

class Some {

    var inner: Inner? = null

    init {
        inner = Inner()
    }

    fun doAny() {
        inner?.let{
            it.runOne()
            it.runTwo()
        }
    }
}

fun main(args : Array<String>) {
    val some = Some()
    some.doAny()
}