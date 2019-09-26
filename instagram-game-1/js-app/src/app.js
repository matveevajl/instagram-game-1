const inner = {
    let: input => {input({
                          runOne: () => {console.log("Inner. Run method one")},
                          runTwo: () => {console.log("Inner. Run method two")}
    })}
};

function doAny() {
    inner ? inner.let(it => {
        it.runOne();
        it.runTwo();
    }) : null;
}

doAny();