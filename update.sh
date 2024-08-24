#!/usr/bin/env bash

rm -rfv ~/.config/nvim/*
rm -rfv ~/.local/share/nvim/*
rm -rfv ~/.local/state/nvim/*
rm -rfv ~/.cache/nvim/*

mkdir p ~/.config/nvim
cp -rfv . ~/.config/nvim/
