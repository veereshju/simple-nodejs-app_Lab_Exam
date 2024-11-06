# Makefile for Simple Node.js App

# Define the Node.js binary and the package manager (npm)
NODE = node
NPM = npm

# The default target to install dependencies and run the app
install:
	$(NPM) install

# Run the application using `nodemon` (as defined in the package.json `start` script)
start:
	$(NPM) start

# Run tests (You don't have tests yet, so it's just a placeholder)
test:
	$(NPM) test

# Run linting (if you have a linting script defined, e.g., ESLint)
lint:
	$(NPM) run lint

lint-fix:
    npm run lint-fix


# Build the application (if you need to create a build process)
build:
	$(NPM) run build

# Deploy the application (this is just a placeholder, update it based on your deployment process)
deploy:
	$(NPM) run deploy

# Clean the `node_modules` and any generated files
clean:
	rm -rf node_modules
	rm -f package-lock.json

.PHONY: install start test lint build deploy clean
