CREATE (Stachu:Employee {name:"Stachu", surname: "Jones", position:"CEO"})
CREATE (Jacek:Employee {name:"Jacek", surname: "Jaworek", position:"Janitor"})
CREATE (Michal:Employee {name:"Michal", surname: "Karmowski", position:"BodyGuard"})
CREATE (Julia:Employee {name:"Julia", surname: "Kostera", position:"Secretary"})
CREATE (Janusz:Employee {name:"Janusz", surname: "Walczuk", position:"Programmer"})
CREATE (HR:Department {name:"HR"})
CREATE (IT:Department {name:"IT"})

MATCH
  (a:Employee),
  (b:Department)
WHERE a.name = 'Stachu' AND b.name = 'IT'
CREATE (a)-[r:WORKS_IN]->(b)
RETURN type(r)

MATCH
  (e:Employee),
  (d:Department)
WHERE e.name = 'Jacek' AND d.name = 'IT'
CREATE (e)-[r:WORKS_IN]->(d)<-[:MANAGES]-(e)
RETURN type(r)

MATCH
  (e:Employee),
  (d:Department)
WHERE e.name = 'Michal' AND d.name = 'HR'
CREATE (e)-[r:WORKS_IN]->(d)
RETURN type(r)

MATCH
  (e:Employee),
  (d:Department)
WHERE e.name = 'Julia' AND d.name = 'HR'
CREATE (e)-[r:WORKS_IN]->(d)
RETURN type(r)

MATCH
  (e:Employee),
  (d:Department)
WHERE e.name = 'Janusz' AND d.name = 'IT'
CREATE (e)-[r:WORKS_IN]->(d)
RETURN type(r)