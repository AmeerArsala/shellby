pipelines = [
  {
    name = "fmt-n-lint"
    steps = [
      {
        name     = "format"
        commands = ["cargo fmt"]
      },
      {
        name     = "lint"
        commands = ["cargo clippy -- -W clippy::pedantic -W clippy::nursery -W clippy::unwrap_used -W clippy::expect_used"]
      },
      {
        name     = "audit"
        commands = ["cargo audit"]
      }
    ]
    triggers = [{
      branches = ["main", "dev"]
      actions = ["pre-commit"]
    }]
  },
  {
    name = "stats"
    steps = [
      {
        name = "benchmark"
        commands = ["cargo bench"]
      }
    ]
    triggers = [{
      branches = ["main", "dev"]
      actions = ["manual"]
    }]
  }
]
