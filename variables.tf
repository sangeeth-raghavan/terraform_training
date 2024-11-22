variable "resource_group_location"	{	
		description	= "Location of the resrouce group"
		type		= string
		default 	= "Central India"
	}

variable "resource_group_name"	{
		description	= "Name of the resource group"
		type		= string
		default		= "RG-01"
	}

variable "vm_size"	{
		description     = "Size of the VM"
                type            = string
                default         = "Standard_B1s"
        }

variable "admin_username"	{	
		description     = "Name of the admin username"
                type            = string
                default         = "terrauser"
        }

variable "admin_password"	{
		description     = "Password for the admin user"
                type            = string
                sensitive       = true
        }

variable "custom_data_script" {
  description = "Script to execute during the machine provisioning"
  type        = string
  default     = <<-SCRIPT
#!/bin/bash
sudo apt update
sudo apt install apache2 -y
sudo echo "Welcome to terraform training.Testing changes to custom data" > /var/www/html/index.html
sudo systemctl start apache2
sudo systemctl enable apache2
SCRIPT
}

