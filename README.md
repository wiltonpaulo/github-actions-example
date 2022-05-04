# Ways to trigger jobs on Github-Actions

### Using the command "gh workflow run <jobname>"

Is this case you have to allow write permission to github workflow.

Example:

```yaml
    - name: Run a one-line script
    run: gh workflow run example1-workflow
    env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        OWNER: ${{ github.repository_owner }}
        REPO: ${{ github.event.repository.name }}

```

### The other is simply configuring a "workflow_run" statement

Example:

```yaml
workflow_run:
  workflows: ["trigger"]
  types: [requested]
  branches:
    - main
```

\*\*\* Every job with this block of code will run after "trigger" job.
