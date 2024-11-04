use clap::{Parser, Subcommand};
use std::io::Result;
//use assert_cmd::Command;

mod somethingelse;
mod sss;
mod test;

use crate::test::c;

#[derive(Parser)]
#[command(author, version, about, long_about = None)]
pub struct Cli {
    #[command(subcommand)]
    subcmds: Commands,
}

#[derive(Subcommand)]
enum Commands {
    Update, // recompiles cache
    Source,
    Cd, // for cd'ing into the $SHELLBY_HOME directory
}

fn main() -> Result<()> {
    //let args = Args::Parse
    println!("Hello, world!");
    test::b();
    c();

    Ok(())
}
