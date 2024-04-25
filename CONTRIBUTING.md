<!--
SPDX-FileCopyrightText: 2023 Ludwig Hülk <@Ludee>
SPDX-FileCopyrightText: © Reiner Lemoine Institut
SPDX-License-Identifier: MIT

Title: Contributing to Collaborative Development
Version: super-repo v0.1.0
-->

# Contributing to Collaborative Development

## Prerequisites

- [GitHub](https://github.com/) as a public repository. Please create an account.
- [Git](https://git-scm.com/) for version control. [Git How To](https://githowto.com/) and [Git Cheat Sheet](https://training.github.com/downloads/github-git-cheat-sheet.pdf) provide an introduction into working with Git.

## Types of interaction

Please be self-reflective and always maintain a good culture of discussion and active participation.

### A. Use

Since the open license allows free use, no notification is required.
However, for the authors it is valuable information who uses the software for what purpose.
Indicators are `Watch`, `Fork` and `Starred` of the repository.

### B. Comment

You can provide ideas, hints or report bugs in issues, in PR, at meetings or other channels.
This is no development but can be considered a notable contribution.
If you wish, add your name and details to `CITATION.cff`.

### C. Contribute and Review

Add code or text and become an author of the repository.
Please follow the workflow!
If you are a contributor to this repository, please add your name and details in USERS.cff

### D. Maintain

You contribute and take care of the repository.
You review and answer questions.

## Workflow

The intention of this repository is to provide a reasonably quick interface to
make changed to the documentation pages called Open Energy Academy. Therefore
our commonly used git workflow does not apply here. You are allowed to make
changes directly in the production branch und push them to appear on the live
website. You may fix small typos directly leaving a summary in your commit
message. For anything larger, please write an issue using the issue template.
You can either solve that issue yourself and reference it in your commit
message or assign someone else to the issue.

You are welcome to open a new branch and work on larger topics before
publishing them.

##### Permanent branches

- production - includes the current stable version

#### 2.1. Creating a new (local) branch

Create a new feature branch:

```bash
git checkout -b feature-my-feature
```

Naming convention for branches: `type`-`short-description`
Examples of branch names: `feature-add-new-ontology-class`

On your first commit to the repo:

- Add your name and details to CITATION.cff

Check branch status:

```bash
git status
```

#### 2.3. Commit your changes

If the file does not exist on the remote server yet, use:

```bash
git add filename.md
```

Then commit regularly with:

```bash
git commit filename.md
```

Write a good `commit message`:

- "If applied, this commit will ..."
- Follow [existing conventions for commit messages](https://chris.beams.io/posts/git-commit)
- Keep the subject line [shorter than 50 characters](https://chris.beams.io/posts/git-commit/#limit-50)
- Do not commit more than a few changes at the time: [atomic commits](https://en.wikipedia.org/wiki/Atomic_commit)
- Use [imperative](https://chris.beams.io/posts/git-commit/#imperative)
- Do not end the commit message with a [period](https://chris.beams.io/posts/git-commit/#end) ~~.~~
- Allways end the commit message with the `issueNumber` including the "#"

Examples of commit message: `Added function with some method #42` or `Update documentation for commit messages #1`

#### 2.4 Fix your latest commit message

Do you want to improve your latest commit message? <br>
Is your latest commit not pushed yet? <br>
Edit the commit message of your latest commit:

```bash
git commit --amend
```

### 3. Push your commits

Push your `local` branch on the remote server `origin`. <br>
If your branch does not exist on the remote server yet, use:

```bash
git push --set-upstream origin feature-my-feature
```

When pushing directly to production or after having gone through the previous
step, push regularly with:

```bash
git push
```

### 4. Submit a pull request (PR)

Only if you want others to review a larger set of changes you made, create a pull request. <br>
The `PR title` describes the problem you have solved. <br>
Fill the PR template:

- Summary of the discussion
- Type of change (CHANGELOG.md)

Add `close #issueNumber` to [automatically close](https://help.github.com/en/github/managing-your-work-on-github/closing-issues-using-keywords) the corresponding issue. <br>
Assign a `Reviewer` or GitHub team. <br>
Assign yourself as `Assignee` <br>
Add suitable GitHub `Labels` <br>
Link the corresponding issue in `Development` <br>
Create the PR

#### 4.4. Let someone else review your PR

Assign one reviewer or a user group and get into contact.

If you are the reviewer:

- Check the changes in all corresponding files.
- Checkout the branch and if applicable, run code.
- Comment if you would like to change something (Use `Request changes`)
- If all tests pass and all changes are good, `Approve` the PR.
- Leave a comment and some nice words!

#### 4.1. Merge the PR

Merging in this repository should not privode any problems. If anything out of the ordinary orrurs, follow the GitHub guide [merging a pull request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/incorporating-changes-from-a-pull-request/merging-a-pull-request).

#### 4.2. Delete the feature branch

After merging you can delete the feature branch. If truly necessary git allows reconstruction of deleted branches. 

### 5. Close the issue

Check that all steps have taken place:

- Issue title describes the problem you solved
- The branch was deleted
- PR is closed
- Issue is closed
