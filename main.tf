
resource "local_file" "firstfile" {
    content  = "This is the first file!"
    filename = "$/Users/priyam/Desktop/firstfile.html"
}


resource "local_file" "secondfile" {
    content  = "This is the second file!"
    filename = "$/Users/priyam/Documents/secondfile.txt"
}


resource "local_file" "thirdfile" {
    content  = "This is the third file!"
    filename = "$/Users/maneesh/Public/thirdfile.rtf"
}


resource "local_file" "fourthfile" {
    content  = "This is the fourth file!"
    filename = "$/Users/Shared/fourthfile.txt"
}

resource "local_file" "demofile" {
    content  = "${random_id.f-name.dec}"
    filename = "${random_id.f-name.hex}"
}

locals {
  name = "priyam.html"
  con = "This is sample content"
}



resource "local_file" "fifthfile" {
    content  = "fifth file content"
    filename = var.name 
}

resource "random_id" "f-name" {
  byte_length = 8 
}

output "op-fname" {
  value = local_file.firstfile.filename
}