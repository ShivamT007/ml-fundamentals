# Machine Learning Fundamentals

Welcome to the **Machine Learning Fundamentals** repository! This repo is designed to help you upskill in fundamental machine learning concepts through curated materials, code examples, and hands-on exercises.

## Introduction to Machine Learning

Machine Learning is a field of artificial intelligence that enables systems to learn patterns from data and make predictions or decisions without being explicitly programmed.

It can be broadly divided into three main categories:

- Supervised learning uses labeled data to train models for tasks such as classification (predicting categories, e.g., spam detection) and regression (predicting continuous values, e.g., house prices).
- Unsupervised learning deals with unlabeled data to uncover hidden structures, with clustering being a common approach to group similar items, such as customer segmentation.
- Reinforcement learning focuses on agents that learn by interacting with an environment, receiving feedback in the form of rewards to optimize decision-making, such as in robotics or game playing.

For each of these approaches, dedicated notebooks will provide both theoretical foundations and practical use cases, guiding you through real-world scenarios and demonstrating how to tackle them effectively.

## File Structure

```text
ml-basics/
├── data/                       # Sample datasets
├── docs/                       # documents to run the repo
├── supervised_learning/        # Supervised learning material
|    |── regression/            # Regression notebooks
├── unsupervised_learning/      # Unsupervised learning material
├── reinforcement_learning/     # Unsupervised learning material
├── requirements.txt            # Python dependencies
└── README.md                   # Documentation
```

## Setup

You have 3 options for environment setup using Notebooks. Please choose the one which suits you best.

1. [**Github CodeSpaces**](docs/env-setup-codespaces.md) - a purely cloud-based environment.  This should be your go-to option if you do NOT have a linux environment (OSX or WSL2/Windows).

2. [**Run code on a remote VM**](docs/env-setup-vm.md) - run the code from VS Code. Ideal if you need some beefy processing, and have access to a high-performance Azure VM.

3. **Run on your laptop** - [Create your own virtualenv](docs/env-setup-local.md) - if you are comfortable with creating a Python environment on your local machine.

You're ready to start exploring machine learning fundamentals!
