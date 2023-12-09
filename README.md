# Python cli prototype to manage simple projects 

Basic command line tool to manage standard `pyproject.toml` based projects.
This is a prototype cli built with `click` that can run multiple project
related tasks in sequence from the command line.

```console
pydev init build dump
```

This project is exploratory and may be usefull as a template for a custom workflow
if you are not using integrated tool chains like `poetry`, `pdm`, `hatch`, etc ...

The script can be installed in a global/system python environment and
used in another project even if is is not installed in the project venv.

The script uses standard python packaging tools like `build` and `twine` and
is independent from the project build backend.

Please note, that most `pydev` commands 
will run in the active python environment (project venv)
and not necessarily the environment where `pydev` was originally installed.
Theses commands have dependencies like `build`, `twine`
that must be present in the active python environment (project venv).
You can run `pydev init` to install these dependencies in the active environment.


## Usage


```console
Usage: pydev [OPTIONS] COMMAND1 [ARGS]... [COMMAND2 [ARGS]...]...

Options:
  --help  Show this message and exit.

Commands:
  build    Build project wheel
  clean    Clean build and dist folders
  dump     Dump wheel and dist contents
  info     Project information
  init     Inititalize active env
  publish  Publish project with twine
```


## Installation

> **Warning**
This project installs a script called `pydev`
with the same name as other projects like
[pydev](https://pypi.org/project/pydev/).

You can install the latest version of this package with pip.

```console
pip install git+https://github.com/furechan/pydev-click.git
```

## Related projects and resources

- [Packaging tools comparisons](https://sinoroc.gitlab.io/kb/python/packaging_tools_comparisons.html)
- [Python task runners](https://sinoroc.gitlab.io/kb/python/task_runners.html)
- [click](https://click.palletsprojects.com/) Python composable command line interface toolkit
- [invoke](https://www.pyinvoke.org/) Pythonic task management & command execution
- [build](https://github.com/pypa/build) A simple, correct Python build frontend
