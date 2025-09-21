#!/bin/bash
export PATH="${APPDIR}/bin:$PATH"
export CONDA_PREFIX="${APPDIR}"
export PIXI_PROJECT_VERSION="0.1.0"
export PIXI_PROJECT_NAME="gtk4-sample-c"
export PIXI_PROJECT_MANIFEST="/home/ethan/Projects/Packaging/pixi-experiments/gtk4-sample-c/pixi.toml"
export PIXI_IN_SHELL="1"
export PIXI_PROJECT_ROOT="/home/ethan/Projects/Packaging/pixi-experiments/gtk4-sample-c"
export PIXI_EXE="/home/ethan/.pixi/bin/pixi"
export CONDA_DEFAULT_ENV="gtk4-sample-c:appdir"
export PIXI_ENVIRONMENT_NAME="appdir"
export PIXI_ENVIRONMENT_PLATFORMS="linux-64"
export PIXI_PROMPT="(gtk4-sample-c:appdir) "
. "${APPDIR}/etc/conda/activate.d/activate-binutils_linux-64.sh"
. "${APPDIR}/etc/conda/activate.d/activate-gcc_linux-64.sh"
. "${APPDIR}/etc/conda/activate.d/libglib_activate.sh"
. "${APPDIR}/etc/conda/activate.d/libxml2_activate.sh"
source ${APPDIR}/share/bash-completion/completions/*

# shellcheck shell=bash
pixi() {
    local first_arg="${1-}"

    "${PIXI_EXE-}" "$@" || return $?

    case "${first_arg-}" in
    add | a | remove | rm | install | i)
        eval "$("$PIXI_EXE" shell-hook --change-ps1 false)"
        hash -r
        ;;
    esac || :

    return 0
}

export PS1="(gtk4-sample-c:appdir) ${PS1:-}"