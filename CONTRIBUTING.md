# Contributing to azure-names-generator

Thank you for your interest in contributing to **azure-names-generator**! 🎉

This project is an open source Terraform module for generating standardized Azure resource names. We welcome contributions of all kinds, including bug reports, feature requests, documentation improvements, and code enhancements.

## 🛠️ How to Contribute

### 1. Fork the Repository
Click the "Fork" button at the top right of this page to create your own copy of the repository.

### 2. Clone Your Fork
```
git clone https://github.com/YOUR-USERNAME/azure-names-generator.git  
cd azure-names-generator
```

### 3. Create a New Branch
`git checkout -b feature/my-new-feature`

### 4. Make Your Changes
Make your changes in your local repository. Ensure that your code adheres to the project's coding standards and includes appropriate tests. 

### 5. Updating Documentation
Documentation is automatically validated in CI. If your changes affect variables, outputs, or other module metadata, make sure to regenerate the docs before committing. Otherwise, your pull request may fail the validation check.  
You can use the following command in the root directoy to generate the updated documentation:

```bash
terraform-docs markdown table --output-file README.md --output-mode inject .
```

> Note: Check [terraform-docs installation](https://terraform-docs.io/user-guide/installation/) if you don't currently have the tool.

### 6. Push and Create a Pull Request
`git push origin feature/my-new-feature`

Then go to GitHub and open a Pull Request.

## 🚫 Tag Creation Policy
To ensure consistency and control over published versions:

- Tag creation is restricted to maintainers and release managers.
- Contributors must not push tags directly.

- ✅ Maintainer Workflow
Tags like v1.0.0, v1.1.0, etc., will trigger automated validation and prepare the module for publishing to the Terraform Registry.

## ✅ Guidelines

- Follow Terraform best practices.
- Keep code clean and well-documented.
- Add tests for new features.
- Update the README if needed.
- Be respectful and collaborative.

We appreciate your help in making this module better for everyone!