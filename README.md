# Python Nogil Github Action - Multithreaded Python without the GIL

Run, test, and build python code in [nogil-3.9.10](https://github.com/colesbury/nogil/) -> Multithreaded Python without the GIL

see https://github.com/colesbury/nogil/ and [PEP 703](https://peps.python.org/pep-0703/) for more info on nogil.

## Usage

```yaml
    - uses: actions/checkout@v3
    - uses: jimkring/action-python-nogil@0.1
      with:
        # install requirements
        requirements-file: requirements.txt
        # command is required 
        command: python -V
        # command2 - command6 are optional
        # shell (.sh) scripts are good too!
        command2: ./lots_of_commands.sh
        command3: pip install pytest && pytest
        command4: python run_benchmarks.py
        command5: python setup.py build
        command6: echo "all done!"
```

