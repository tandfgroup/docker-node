#!/bin/bash
set -e

hash git 2>/dev/null || { echo >&2 "git not found, exiting."; }

array_4='4 argon';
array_6='6 boron';
array_7='7 latest';

cd "$(cd ${0%/*} && pwd -P)";

self="$(basename "$BASH_SOURCE")"

versions=( */ )
versions=( "${versions[@]%/}" )
url='https://github.com/tandfgroup/docker-node'

# sort version numbers with highest first
IFS=$'\n'; versions=( $(echo "${versions[*]}" | sort -r) ); unset IFS

# get the most recent commit which modified any of "$@"
fileCommit() {
  git log -1 --format='format:%H' HEAD -- "$@"
}

echo "# this file is generated via ${url}/blob/$(fileCommit "$self")/$self"
echo
echo "Maintainers: The T&F Platform Engineering Team <${url}> (@tandfgroup/platform)"
echo "GitRepo: ${url}.git"
echo

# prints "$2$1$3$1...$N"
join() {
  local sep="$1"; shift
  local out; printf -v out "${sep//%/%%}%s" "$@"
  echo "${out#$sep}"
}

for version in "${versions[@]}"; do
  # Skip "docs" and other non-docker directories
  [ -f "$version/Dockerfile" ] || continue

  eval stub="$(echo "$version" | awk -F. '{ print "$array_" $1 "_" $2 }')";
  commit="$(fileCommit "$version")"

  versionAliases=( $version ${stub} )

  echo "Tags: $(join ', ' "${versionAliases[@]}")"
  echo "GitCommit: ${commit}"
  echo "Directory: ${version}"
  echo

  variants=$(echo $version/*/ | xargs -n1 basename)
  for variant in $variants; do
    # Skip non-docker directories
    [ -f "$version/$variant/Dockerfile" ] || continue

    commit="$(fileCommit "$version/$variant")"

    slash='/'
    variantAliases=( "${versionAliases[@]/%/-${variant//$slash/-}}" )
    variantAliases=( "${variantAliases[@]//latest-/}" )

    echo "Tags: $(join ', ' "${variantAliases[@]}")"
    echo "GitCommit: ${commit}"
    echo "Directory: ${version}/${variant}"
    echo
  done
done