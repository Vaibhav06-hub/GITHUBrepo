variable "nsg" {
  type = map(object(
    {
      name     = string
      priority = number
      port     = string
    }
    )
  )
  default = {
    NSG1 = {
      name     = "AllowrRDP"
      priority = 100
      port     = "3389"
    }

    NSG2 = {
      name     = "AllowHTTP"
      priority = 200
      port     = "80"
    }

    NSG3 = {
      name     = "AllowHTTPS"
      priority = 300
      port     = "443"
    }
  }
}