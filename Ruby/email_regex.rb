# Rubeque   http://rubeque.herokuapp.com/problems/introduction-to-regular-expressions


def find_emails(string) 


  puts string.scan(/\S{1,}@\w{1,}[.]\w{2,}/).inspect

end



find_emails("john@mail.com to jane@mail.com")
find_emails("why@ @chunkybacon.com why@chunkybacon.com")
find_emails("why @ @ why@chunkybacon")


# Alternate solution 

def find_emails_alt(string)

  puts string.scan(/\w+@\w+\.\w+/).inspect

end 