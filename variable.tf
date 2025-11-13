variable "vm_config" {
    type = list(object({
      name = string
      zone = string
      machine_type = string
      image = string
    }))
    default = [ {
      name = "vm-1"
      zone = "us-east1-b"
      machine_type = "e2-medium"
      image = "centos-cloud/centos-stream-9"
    } ,{
      name = "vm-2"
      zone = "us-east1-c"
      machine_type = "e2-medium"
      image = "debian-cloud/debian-11" 
    },
   ]



  
}

variable "user_name" {
    type = string
  default  = "sujithmanelli4321"
}
