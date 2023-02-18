This is a simple wrapper around [pntr](https://github.com/robloach/pntr), for nim.

I am pretty new to nim, so I am not sure how to properly package it for nimble, but you can get started like this:


```sh
git clone --recursive https://github.com/notnullgames/pntr-nim.git
cd pntr-nim

# build demo
nimble build

# run demo, that creates demo.png
./demo
```