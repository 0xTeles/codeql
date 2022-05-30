import tutorial

from Person t
where t.getHeight() > 150 and t.getHeight() <= avg(Person x || x.getHeight() ) and (t.getHairColor() = "brown" or t.getHairColor() = "black") and t.getLocation() = "east" and t.getAge() >=30 and t = max(Person p | p.getLocation() = "east" | p order by p.getAge()) 
select t