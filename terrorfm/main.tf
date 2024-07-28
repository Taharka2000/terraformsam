resource "github_repository" "sammba" {
  name       = var.reposName
  visibility = "public"
}

resource "null_resource" "deploy_react" {
   provisioner "local-exec" {
    command = "/home/sammba/Bureau/bonjour/terrorfm/deploy.sh"
  }

  depends_on = [github_repository.sammba]
  triggers = {
    always_run = "${timestamp()}"
  }
}



