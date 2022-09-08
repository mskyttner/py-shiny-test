# py-shiny-test

A test of a dockerized Shiny for Python service.

The shiny app has a dependency on a python package "bibliutils" installed from github.

Without this dependency, the application can also be deployed on a static webserver, using WASM running locally in the browser.

## Usage

Use the Makefile, issue:

		make build
		make up

This will build a container (Debian Python 3.11 with python packages for shiny and shinylive) and start it using "uvicorn" (by default).

Then navigate to http://localhost:8080

To try "shinylive" - edit the Dockerfile to activate the last few lines, rebuild and restart (make build; make up).

