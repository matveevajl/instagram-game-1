package main

import (
	"fmt"
)

type InnerClosure struct {}

func (inner InnerClosure) runOne() {
    fmt.Println("Inner. Run method one")
}

func (inner InnerClosure) runTwo() {
    fmt.Println("Inner. Run method two")
}

type Inner struct {}

func (inner Inner) let(innerFunc func(it InnerClosure)) {
    innerFunc(InnerClosure{})
}

type Some struct {
    Inner Inner
}

func (some Some) doAny() {
    some.Inner.let(func(it InnerClosure) {
        it.runOne()
        it.runTwo()
    })
}

func main() {
    some := Some{}
    some.doAny()
}