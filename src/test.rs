use crate::somethingelse::jjj;


fn a() -> i32 {
    let output: u32 = jjj();
    println!("{output}");
    1
}

pub fn b() {
    println!("Hi");
}

pub fn c() -> i32 {
    a()
}
