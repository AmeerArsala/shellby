pipelines = [{
  name = "fmt"
  steps = [{
      name     = "format"
      commands = ["cargo fmt"]
    }
  ]
  triggers = [{
    branches = ["main", "dev"]
    actions = ["pre-commit"]
  }]
}]
