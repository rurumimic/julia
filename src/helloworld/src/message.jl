module message

export hi

import Random

characters = ["Alice", "Bob", "Charlie", "David", "Judy"]

hi() = "Hi, " * Random.rand(characters)

end # of module
