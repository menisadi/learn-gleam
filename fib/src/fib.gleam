fn fib(n) -> Int {
  case n {
    1 -> 1
    0 -> 1
    _ -> fib(n-1) + fib(n-2)
  }
}

pub fn main() {
  let x = 6
  let fx = fib(x)
  echo fx
}
