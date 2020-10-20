# {{cookiecutter.project_name}}

{{cookiecutter.description}}

## Docker Quickstart

This app can be run completely using `Docker` and `docker-compose`. **Using Docker is recommended, as it guarantees the application is run using compatible versions of Python**. You can find out more at [Compose command-line reference](https://docs.docker.com/compose/reference/).

### Basics

To build and start a service running in background
```bash
docker-compose up -d service_name
```

To execute a command with a service container
```bash
docker-compose exec service_name [COMMAND]
```

To stop a service
```bash
docker-compose stop service_name
```

To stop and a service and remove its container
```bash
docker-compose down service_name
```

### Production

To run the production version of the project

```bash
docker-compose up -d prod
```

To run the {{ cookiecutter.repo_name }} module of the project

```bash
docker-compose exec prod python -m {{ cookiecutter.repo_name }}
```

### Development

To run the project development environment

```bash
docker-compose up -d dev
```

To execute {{ cookiecutter.repo_name }} development routines

```bash
# [FOLDERS] = folder1 folder2 folder3 (optional to limit validation)
docker-compose exec dev flake8 --max-complexity=10 [FOLDERS]
docker-compose exec dev pytest --cov={{ cookiecutter.repo_name }} [MODULES_FOLDER] [TESTS_FOLDER]
docker-compose exec dev python -m {{ cookiecutter.repo_name }}
```

To run the jupyter server at `127.0.0.1:8888`

```bash
docker-compose up jupyter
```

## Project Organization

```
├── README.md               <- The top-level README for developers using this project.
├── storage
│   ├── external            <- Data from third party sources.
│   ├── interim             <- Intermediate data that has been transformed.
│   ├── processed           <- The final, canonical data sets for modeling.
│   └── data                <- The original, immutable data dump.
│
├── docker-compose.yml      <- The docker-compose file to manage environments as services.
├── docker
│   ├── dev.Dockerfile      <- Dockerfile to the project development environment container.
│   ├── jupyter.Dockerfile  <- Dockerfile to the project jupyter environment container.
│   └── prod.Dockerfile     <- Dockerfile to the project production environment container.
│
├── docs                    <- A default Sphinx project; see sphinx-doc.org for details
│
├── models                  <- Trained and serialized models, model predictions, or model
│                              summaries
│
├── notebooks               <- Jupyter notebooks. Naming convention is a number (for
│                              ordering), the creator's initials, and a short `-` delimited
│                              description, e.g. `1.0-jqp-initial-data-exploration`.
│
├── references              <- Data dictionaries, manuals, and all other explanatory
│                              materials.
│
├── reports                 <- Generated analysis as HTML, PDF, LaTeX, etc.
│   └── figures             <- Generated graphics and figures to be used in reporting
│
├── requirements_dev.txt    <- The requirements file for reproducing the analysis environment.
├── requirements.txt        <- The requirements file for reproducing the analysis environment,
│                              e.g. generated with `pip freeze > requirements.txt`
│
├── {{cookiecutter.repo_name}} <- Source code for use in this project.
│   ├── __init__.py         <- Makes src a Python module
│   │
│   ├── data                <- Scripts to download or generate data
│   │   └── make_dataset.py
│   │
│   ├── features           <- Scripts to turn raw data into features for modeling
│   │   └── build_features.py
│   │
│   ├── models             <- Scripts to train models and then use trained models to make
│   │   │                     predictions
│   │   ├── predict_model.py
│   │   └── train_model.py
│   │
│   └── visualization      <- Scripts to create exploratory and results oriented
│       │                     visualizations
│       └── visualize.py
│
└── tox.ini                <- tox file with settings for running tox; see
                              tox.readthedocs.io
```

<p><small>Project based on the <a target="_blank" href="https://drivendata.github.io/cookiecutter-data-science/">cookiecutter data science project template</a>. #cookiecutterdatascience</small></p>
