variable "app_name" {
  default="cloud-jupyter"
  }
  
variable "persistent-disk-name" {
  }
  
variable "docker_image" {
  default = "nginx:1.7.9"
#  default="jupyter/base-notebook:latest"
  }
  
variable "mount_path" {
  default="/home/jovyan/work"
  }

variable "envs" {
  default = [
    {
      name="JUPYTER_ENABLE_LAB"
      value="yes"
      },
    ]
  }

variable "command" {
  default="start-notebook.sh"
  }

variable "args" {
  default = [
    "--notebook-dir=/home/jovyan/work/lab",
    "--NotebookApp.ip='*'",
    "--NotebookApp.allow_origin='*'",
    "--NotebookApp.token=''"
    ]
  }

variable "jupyter_password" {
}

variable "container_port" {
  default = 8080
#  default = 8888
  }
