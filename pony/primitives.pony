// https://playground.ponylang.io/?gist=64f24adf1d1aef3429366ed96ce031f5
// https://tutorial.ponylang.io/types/primitives.html

// 2 "marker values"
primitive OpenedDoor 
primitive ClosedDoor

// An "enumeration" type
type DoorState is (OpenedDoor | ClosedDoor)

// A collection of functions
primitive BasicMath
  fun add(a: U64, b: U64): U64 =>
    a + b

  fun multiply(a: U64, b: U64): U64 =>
    a * b

actor Main
  new create(env: Env) =>
    let doorState : DoorState = ClosedDoor
    let isDoorOpen : Bool = match doorState
      | OpenedDoor => true 
      | ClosedDoor => false
    end
    env.out.print("Is door open? " + isDoorOpen.string())
    env.out.print("2 + 3 = " + BasicMath.add(2,3).string())

/*

Output:

Is door open? false
2 + 3 = 5

*/