# Define variables for commonly used paths
NODE_MODULES = node_modules
PACKAGE_JSON = package.json
NPM = npm

# Default target
.PHONY: all
all: install

# Install dependencies
.PHONY: install
install: $(PACKAGE_JSON)
	@echo "Installing dependencies..."
	$(NPM) install

# Run the application
.PHONY: start
start:
	@echo "Starting the Node.js application..."
	$(NPM) start

# Run tests
.PHONY: test
test:
	@echo "Running tests..."
	$(NPM) test

# Run linting
.PHONY: lint
lint:
	@echo "Running lint..."
	$(NPM) run lint

# Clean node_modules and any built files
.PHONY: clean
clean:
	@echo "Cleaning up..."
	rm -rf $(NODE_MODULES)
	$(NPM) cache clean --force

# Show current status
.PHONY: status
status:
	@echo "Checking Node.js application status..."
	$(NPM) run status

# Build the application (if any build step is needed)
.PHONY: build
build:
	@echo "Building the Node.js application..."
	$(NPM) run build

# Create a production build of the application
.PHONY: prod-build
prod-build:
	@echo "Creating production build..."
	$(NPM) run prod-build

# Help to show available commands
.PHONY: help
help:
	@echo "Available commands:"
	@echo "  make install      - Install dependencies"
	@echo "  make start        - Start the application"
	@echo "  make test         - Run tests"
	@echo "  make lint         - Run linter"
	@echo "  make clean        - Clean up node_modules and cache"
	@echo "  make build        - Build the app"
	@echo "  make prod-build   - Create a production build"
