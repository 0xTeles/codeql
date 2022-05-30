import tutorial

predicate isSouthern(Person p) {
  p.getLocation() = "south"
}

predicate isBald(Person p) {
  not exists(string c | p.getHairColor() = c )
}

class Southerner extends Person {
  Southerner() { isSouthern(this) }
}

class Child extends Person {
  Child() { this.getAge() < 10}
  
  override predicate isAllowedIn(string region) {
    region = this.getLocation()
  }
}

from Southerner p 
where p.isAllowedIn("north") and isBald(p)
select p