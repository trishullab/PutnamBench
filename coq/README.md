Here lies the Coq formalizations, currently in the format of batches of formalizations.

# Installation

You need to install `opam` and then run `setup.sh` to install the necessary dependencies.

## Installing `opam`:
1. Install opam and OCaml first. Use the instructions here: https://opam.ocaml.org/doc/Install.html. Note that OCaml officially only supports Linux installations. One can use WSL on Windows machines.

2. Run the following to install Coq on Linux. The Coq version used in this project is >= 8.18. 
```bash
sudo apt install build-essential unzip bubblewrap
sh <(curl -sL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)
```

3. Add the following to your `.bashrc` file: (sometimes the path `~/.opam/default` might not exist, so use the directory with version number present in the `~/.opam` directory)
```
export PATH="/home/$USER/.opam/default/bin:$PATH"
```

4. For running `coqtop` in the terminal, you should switch to the `coq` environment by running the following command:
```bash
eval $(opam env --switch=PutnamBench --set-switch)
```
