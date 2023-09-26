resource "kubernetes_namespace" "devspace" {
  metadata {
    name = "devspace"
  }    
  
}

resource "kubernetes_deployment" "smald-deployemnt" {


    metadata {
        name = "angular-smald"
        labels = {
            app="smald"
        }         
    }

    spec {
      replicas = 3
      selector {
        match_labels = {
            app="smald"
        }
      }
      template {
        metadata {
          labels = {
            app="smald"
          }
        }
        spec {
          container {
            name = "smald-app"
            image = "nkirui2030/smald:v1"
            port {
              container_port = 80
            }

          }
        }
      }
    }
}

resource "kubernetes_service" "smald-service" {
    metadata {
      name = "smald-service"
    }
    spec {
      selector = {
       
            app="smald"
       
      }
      port {
        port = 80
        target_port = 80
      }
      type = "LoadBalancer"
    }
  
}