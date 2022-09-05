variable "ibm_cloud_api_key" {
  description = "API Key to use"
  default     = "DoIJHPqCGkvt2_jcwiAf6TV7sPdLBPILmrFyfX4Bu2AX"
}
variable "crn" {
  type        = string
  default     = "crn:v1:bluemix:public:power-iaas:us-south:a/035c4a9a8dfd4a969cd9409ae37d139c:d79a6170-22cc-47a0-bede-5f141d44f6c0::"
  description = "Power Systems Virtual Server CRN"
}
variable "image_name" {
  description = "Name of the image you want to use"
  default     = "IBMi-74-05-2984-1"
}
variable "memory" {
  type        = number
  default     = 5
  description = "The amount of memory that you want to assign to your instance in gigabytes"
}
variable "processors" {
  type        = number
  default     = 0.25
  description = "The number of vCPUs to assign to the VM as visible within the guest Operating System"
}
variable "instance_name" {
  type        = string
  default     = "jcgm"
  description = "The name to assign to the instance"
}
variable "processor_type" {
  type        = string
  default     = "shared"
  description = "The type of processor mode in which the VM will run with 'shared', 'capped' or 'dedicated'"
}
variable "sys_type" {
  type        = string
  default     = "s922"
  description = "The type of system on which to create the VM: 's922', 'e880', 'e980', 'e1080', or 's1022'"
}
variable "storage_type" {
  type        = string
  default     = "tier3"
  description = "The type of storage tier to assign for storage volume performance: 'tier1' or 'tier3'"
}
variable "ssh_key_name" {
  type        = string
  default = "jcgmkey"
  description = "The name of the public SSH RSA key to use when creating the instance, as defined for the selected Power Systems Virtual Server CRN"
}
variable "ssh_key" {
  type        = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC9bojoLwVSFNhhuke0w7X19KRkXtP+xIreivtSSjKJvfxlr0h51AM7cXCpNHebexFNK658lid4g+8wySk7BxR7PFS0XrX721j4EutluM17vRxKl6PwM28AlM+aDVqKCrlLc+B2bKLZSjyVr4ktXKn9tEYwNyWTfsqQoOTIelVOZo23aaq6KIYf+KebGPZw1v5XcNP97sGIeCW8J/q0bfoF9pwiXHzS2AMFCfM6xPgFwjUoomfJ8NqbndO0jnSOH4v000jOESnGMEe5JVWYW3AsIgps6ASEjE6Z49pDkxkmAFPzIv5ro5/Olby62xv9A3RfIjEjB8ilk3RfIjEjB8ilks0hde13wretQ87gYKVnJlpAT5QrrWxJ+6jcbVD8Eyop/2KgOkyUl8ONay+PawQbX5Mqa90+ePhDmN9HndoDR3zbp52kCLiX+n7FnviT7HXlINYWxNCnJsGF+cQxnviT7HXlINYW+nShLS7BPe/dz69uNhvZMkm4TJ2Acp3FugkgQsuj28C0TTIw1wzqJ+oyWlfdg4TbAPGHND6oBAKagqHQWkHepTjTh3gKxb93ztOENAOYSJOgtCQ2fjQdTS6etzaTh3gKxb93ztOqazkH0ZYfpm3Rp0YO7RZjs7DnTylo6IA39JUN9iwQ+ek0fj9GY0OhdL3HAjCRYzR7BsUWevc53Nose.guerra.m3ogku+z9KWc8ifCaYE0IzzWNPPmgljuQ== jose.guerra.m@ibm.com"
  description = "The name of the public SSH RSA key to use when creating the instance, as defined for the selected Power Systems Virtual Server CRN"
}
variable "network_name" {
  type        = string
  default = "jcgm-sn1"
  description = "The network ID or name to assign to the instance, as defined for the selected Power Systems Virtual Server CRN"
}