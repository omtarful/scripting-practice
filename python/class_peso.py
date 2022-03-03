#!/usr/bin/python3 

#script testing OOP in python with movies and actors
class Actor:
    def __init__(self, first,last,year):
        self.first = first
        self.last = last
        self.year = year

    def getFirst(self):
        return self.first
    def getLast(self):
        return self.last 
    def getYear(self):
        return self.year
    def setFirst(self, f):
        self.first = f
    def setLast(self, l):
        self.last = l 
    def setYear(self, y):
        self.year = y
    def printActor(self):
        print(self.first + " " + self.last + " has " + self.year + " of experience")

class Movie:
    def __init__(self, name=None, n_of_tickets=None, list_of_actor=None):
        self.name = name
        self.n_of_tickets = n_of_tickets
        self.list_of_actor = list_of_actor
    def testActor(self, actor):
        for i in range(len(self.list_of_actor)):
            if(self.list_of_actor[i].getFirst() == actor.getFirst() and self.list_of_actor[i].getLast() == actor.getLast()):
                return True
        return False
    def addActor(self, actor):
        self.list_of_actor.append(actor)
    def getTotalIncome(self):
        return self.n_of_tickets*10
    def movieInfo(self):
        l = ""
        for i in range(len(self.list_of_actor)):
            l += self.list_of_actor[i].getFirst() + " " +  self.list_of_actor[i].getLast() + ","
        return self.name + "has the list of actors: " + l + " The num tickets is "  + str(self.n_of_tickets) + " and the total income is " + str(self.getTotalIncome())

list_of_ac1 = []
list_of_ac1.append(Actor("Leonardo", "Di Caprio",  1999))
list_of_ac1.append(Actor("Manuel", "Ortegas", 1980 ))
list_of_ac1.append(Actor("Marco", "Rubio", 1987))
list_of_ac2 =[]
m1= Movie("Titanic", 100, list_of_ac1)
list_of_ac2.append(Actor("Kamal", "Jumblar", 1777))
list_of_ac2.append(Actor("Immanuel", "Kant",1888))
list_of_ac2.append(Actor("Nothing", "Presence", 1899))
list_of_ac2.append(Actor("Leonardo", "Di Caprio",  1999))
m2= Movie("Sharknado", 300, list_of_ac2)
ac = Actor("Kama", "Jumblar", 1777)
if(not m2.testActor(ac)):
    m2.addActor(ac)
m2.movieInfo() 
def compareMovies(movie1, movie2):
    return movie1.getTotalIncome() > movie2.getTotalIncome()
print(compareMovies(m2, m1))

        

    
    


    