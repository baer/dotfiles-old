#!/usr/bin/env bash

function setupSOCKS() {
  local port=$1
  export MAVEN_OPTS="-DsocksProxyHost=localhost -DsocksProxyPort=$port"
  export GRADLE_OPTS="-DsocksProxyHost=localhost -DsocksProxyPort=$port"
}