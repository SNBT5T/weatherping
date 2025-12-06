terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "weatherping" {
  name = "docker.io/snbt5t/weatherping:latest"
}

resource "docker_container" "weatherping" {
  name  = "weatherping-container"
  image = docker_image.weatherping.image_id

  ports {
    internal = 5000
    external = 5000
  }
}
