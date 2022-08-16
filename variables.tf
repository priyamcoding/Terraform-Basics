

variable "name" {
  type = string
  description = "provide filename here "
  default = "priyam"
}

variable "name1" {
    type = string 
    description = "Add filename"
    default = "firstfile.txt"
}


variable "name2" {
    type = number  
    description = "Add filename"
    default = 100
} 

variable "name3" {
    type = list(number)  
    description = "Add filename"
    default = [1, 2, 3]
} 


variable "name4" {
    type = list(any)  
    description = "Add filename"
    default = [1, 2, 3, "a", "b"]
} 

variable "name5" {
    type = map(string)  
    description = "Add filename"
    default = {
    "0" = "secondfile.txt"
    "1" = "thirdfile.rtf"
} 
}

variable "name6" {
  type = object({
    name = string 
    content = string 
  })
  default = {
    content = "Hello!"
    name = "fourthfile.txt"
  }
  
}

variable "name7" {
  type = map

  default = {
    us-east-1 = "image-1234"
    us-west-2 = "image-4567"
  }
}

variable "active" {
  default = false
}