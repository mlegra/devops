import groovy.json.JsonOutput
import groovy.json.JsonSlurper

def Meth1(){
   
   env.var = "Hi Lizy"
   println ("Hi Lizy")
   println ("\n")
   println ("5+4="+ (5+4))

   /*def flag = 0
   def total = params.Cant
   int totalC = total.toInteger()
   println (total)
   println ("-----")
                  for(flag = 0;flag < totalC;flag++)
                   {echo params.Cant}*/
             
            return
        }
 def Meth2(){
 def slurper = new groovy.json.JsonSlurperClassic()
 def result = slurper.parseText('[{"person":{"name":"Guillaume","age":33,"pets":["dog","cat"]}},{"person":{"name":"Sofia","age":33,"pets":["dog","cat"]}}]')

                  println (result.person[0].name)
                  println (result.person[1].name)
                  /*assert result.person.age == 33
                  assert result.person.pets.size() == 2
                  assert result.person.pets[0] == "dog"
                  assert result.person.pets[1] == "cat"*/
               
}

return this