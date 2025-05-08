import gleam/io

fn fib(n) -> Int {
  case n {
    1 -> 1
    0 -> 1
    _ -> fib(n-1) + fib(n-2)
  }
}

fn fib_tail_helper(n, a, b) {
  case n {
    1 -> b
    0 -> b
    _ -> fib_tail_helper(n-1, b, a+b)
  }
}

fn fib_tail(n) {
  fib_tail_helper(n, 1, 1)
}

pub fn main() {
  io.print("Naive:")
  let x = 6
  let fx = fib(x)
  echo fx

  io.print("Tail:")
  let fx2 = fib_tail(x)
  echo fx2
}
