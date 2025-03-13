# use `gcloud beta billing accounts list`
# if you have too many accounts, check the Cloud Console :)
billing_account = {
 id              = "0161B6-329FE2-A0EB8A"
}

# use `gcloud organizations list`
organization = {
 domain      = "patterson-family.me"
 id          = 74626139967
 customer_id = "C01m324xw"
}



# locations for GCS, BigQuery, and logging buckets created here
locations = {
  bq      = "US"
  gcs     = "US"
  logging = "global"
  pubsub  = []
}

environments = {
  dev = {
    name = "Development"
  }
  test = {
    name = "Test"
  }
  prod = {
    name       = "Production"
    is_default = true
  }
}

workload_identity_providers = {
  vw-github = {
    attribute_condition = "attribute.repository_owner==\"revel-labs\""
    issuer              = "github"
  }
}

cicd_config = {
  bootstrap = {
    identity_provider = "vw-github"
    repository = {
        name   = "revel-labs/cloud-foundation-fabric-0-bootstrap"
        branch = null
        type   = "github"
    }
  }
  resman = {
    identity_provider = "vw-github"
    repository = {
        name   = "revel-labs/cloud-foundation-fabric-1-resman"
        branch = null
        type   = "github"
    }
  }
  networking = {
    identity_provider = "vw-github"
    repository = {
        name   = "revel-labs/cloud-foundation-fabric-1-networking"
        branch = null
        type   = "github"
    }
  }
}


# use something unique and no longer than 9 characters
prefix = "vw"