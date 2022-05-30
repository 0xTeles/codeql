import tutorial 


Person childOf(Person p) {
  p = parentOf(result)  
}

Person ancestorOf(Person p){
  result = parentOf(p) or result = parentOf(ancestorOf(p))
}

Person relativeOf(Person p){
  parentOf*(result) = parentOf*(p)
}


predicate hasCriminalRecord(Person p) {
  p = "Hester" or p = "Hugh" or p = "Charlie"
}


from Person p 
where not p.isDeceased() and p = relativeOf(
  "King Basil"
) and not hasCriminalRecord(p)
select (p)