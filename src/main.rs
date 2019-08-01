#![no_main]

#[no_mangle]
pub extern "C" fn double_num(i: i32) -> i32 {
    println!("call from main.rs");
    i * 2
}
