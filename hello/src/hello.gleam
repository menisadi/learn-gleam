import gleam/io

pub fn main() -> Nil {
  let msg: String = "Hi!"
  let name: String = "Meni"
  io.println(msg <> ", " <> name)
}
