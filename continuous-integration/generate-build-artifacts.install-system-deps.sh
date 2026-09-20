#!/usr/bin/env bash
# Install system dependencies required for generating the project
# build artifacts
#
# Copyright 2026 林博仁(Buo-ren Lin) <buo.ren.lin@gmail.com>
# SPDX-License-Identifier: CC-BY-SA-4.0

set \
    -o errexit \
    -o errtrace \
    -o nounset

required_commands=(
    realpath
)
flag_dependency_check_failed=false
for command in "${required_commands[@]}"; do
    if ! command -v "${command}" >/dev/null; then
        flag_dependency_check_failed=true
        printf \
            'Error: Unable to locate the "%s" command in the command search PATHs.\n' \
            "${command}" \
            1>&2
    fi
done
if test "${flag_dependency_check_failed}" == true; then
    printf \
        'Error: Dependency check failed, please check your installation.\n' \
        1>&2
    exit 1
fi

if test -v BASH_SOURCE; then
    # Convenience variables
    # shellcheck disable=SC2034
    {
        script="$(
            realpath \
                --strip \
                "${BASH_SOURCE[0]}"
        )"
        script_dir="${script%/*}"
        script_filename="${script##*/}"
        script_name="${script_filename%%.*}"
    }
fi

if test "${EUID}" -ne 0; then
    printf \
        'Error: This program should be run as the superuser(root) user.\n' \
        1>&2
    exit 1
fi

project_dir="$(dirname "${script_dir}")"

# Load the common functions
# shellcheck source=SCRIPTDIR/../functions.sh
if ! source "${project_dir}/functions.sh"; then
    printf \
        'Error: Unable to load the common functions.\n' \
        1>&2
    exit 1
fi

if ! refresh_debian_local_cache; then
    printf \
        'Error: Unable to refresh the APT local package cache.\n' \
        1>&2
    exit 2
fi

# Silence warnings regarding unavailable debconf frontends
export DEBIAN_FRONTEND=noninteractive

if ! test -v CI; then
    base_runtime_dependency_pkgs=(
        curl
        grep
        sed
    )
    if ! dpkg -s "${base_runtime_dependency_pkgs[@]}" &>/dev/null; then
        printf \
            'Info: Installing base runtime dependency packages...\n'
        if ! \
            apt-get install \
                -y \
                "${base_runtime_dependency_pkgs[@]}"; then
            printf \
                'Error: Unable to install the base runtime dependency packages.\n' \
                1>&2
            exit 2
        fi
    fi

    if ! distro_id="$(get_distro_identifier)"; then
        printf \
            'Error: Unable to determine the distribution identifier.\n' \
            1>&2
        exit 2
    fi

    if test "${distro_id}" == ubuntu; then
        if ! switch_ubuntu_local_mirror; then
            printf \
                'Error: Unable to switch to a local Ubuntu package mirror.\n' \
                1>&2
            exit 2
        fi
    fi
fi

runtime_dependency_pkgs=(
    # project archive compression dependencies
    #bzip2
    gzip
    #xz

    git

    python3-minimal
    python3-pip
    python3-venv
)
if ! dpkg -s "${runtime_dependency_pkgs[@]}" &>/dev/null; then
    printf \
        'Info: Installing the runtime dependency packages...\n'
    if ! apt-get install -y \
        "${runtime_dependency_pkgs[@]}"; then
        printf \
            'Error: Unable to install the runtime dependency packages.\n' \
            1>&2
        exit 2
    fi
fi

printf \
    'Info: Operation completed without errors.\n'
