# Instructions to manually setup the project (eventually create a setup.sh later)

**0)** Prerequisites
Ensure the following are installed before proceeding:
 - Python >= 3.10
 ```bash
python --version
```
 - pip (comes with python)
 - git

**1)** Clone the Repository :
```bash
git clone https://github.com/TheSese1/GenAI_LLM-council.git
cd https://github.com/TheSese1/GenAI_LLM-council.git
```

**2)** Create and activate a new clean Python Virtual Environment :
We use a dedicated environment to isolate dependencies.

```bash
# Create the new environment (3.10 or higher)
## Windows (git bash)
py -3.10 -m venv llm-council-env
## Linux / MacOS
python -m venv llm-council-env

# Activate the environment
## Windows (git bash)
source llm-council-env/Scripts/activate
## Windows (powershell)
llm-council-env\Scripts\Activate.ps1
## Linux / MacOS
source llm-council-env/bin/activate
```

When activated, you should see (llm-council-env).

**3)** Upgrade pip and install all necessary dependencies in this environment with the following code :

```bash
# Upgrade pip
python -m pip install --upgrade pip setuptools wheel
# Install the necessary packages for our project (using the pyproject.toml file)
pip install -e .
```

**4)** Install the necessary dependencies to use the environment in vscode (only if using vscode):

```bash
pip install ipykernel
python -m ipykernel install --user --name llm_council-env --display-name "Python (llm_council-env)"
```

**5)** Select this environment in VScode : 
 - Click on the PC icon on the uper-right corner...
 - Select another kernel...
 - Python environments...
 - Python (llm_council-env)