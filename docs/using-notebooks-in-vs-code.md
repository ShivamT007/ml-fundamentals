# Using Jupyter notebooks within VS Code

## Install extensions

You will require the following VS Code extensions:

1. Python extension (by Microsoft)
2. Jupyter extension (by Microsoft)

## Open a notebook

Once both extensions (above) are installed, open a .ipynb notebook file in VS Code.

You should see a “Select Kernel” prompt at the top right.  Choose "Python Environments..."

![Select kernel](images/kernel_selection.png)

Go with the recommended virtual env (located within your repo's working directory). In Codespaces this appears as **Python 3.11 (ML-Fundamentals-env)**, created automatically by the devcontainer setup:

![Venv](images/kernel_recommended.png)

Try running a cell to ensure the everything is running fine.

<br>

## How to use Jupyter notebooks

If you're coming to Jupyter notebooks for the first time, here are some common shortcuts:

| Action                                    | Shortcut      |
| ----------------------------------------- | ------------- |
| Run the current cell and move to the next | Shift + Enter |
| Insert a new cell above                   | Esc -> a      |
| Delete the current cell                   | Esc -> dd     |
| Switch a cell to Markdown mode            | Esc -> m      |

Where '->' indicates the shortcut follows the Esc key.

<br>

## Troubleshooting

- If the kernel picker keeps loading forever, it's usually because the stock Jupyter extension (2023.8.x) bundled with VS Code isn't compatible with the 1.104.x editor build the repo uses. The devcontainer’s post-create script already patches the extension, but if you’re working locally run:

	```bash
	bash .devcontainer/install-jupyter-extension.sh
	```

	Then reload VS Code once (`Developer: Reload Window`). You should see `ms-toolsai.jupyter@2025.9.2025092201` when you run `code --list-extensions --show-versions`.
- To inspect all installed extensions, run:

	```bash
	code --list-extensions --show-versions
	```