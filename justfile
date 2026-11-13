default:
  @just --list

init:
  mamba env create -p ./.sage -f environment.lock

update:
  mamba env create -p ./.sage -f environment.yaml
  mamba env export -p ./.sage --explicit > environment.lock

clean:
  rm -rf .sage
