## Ways to trigger github actions jobs

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
