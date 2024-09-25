# Default config file
CONFIG ?= config.yaml

# ESPHome command
ESPHOME = esphome

# Targets
.PHONY: all config compile upload clean help

all: config compile upload

config:
	$(ESPHOME) config $(CONFIG)

compile:
	$(ESPHOME) compile $(CONFIG)

upload:
	$(ESPHOME) upload $(CONFIG)

run:
	$(ESPHOME) run $(CONFIG)

clean:
	$(ESPHOME) clean $(CONFIG)

help:
	@echo "Usage: make [target] [CONFIG=<path_to_config.yaml>]"
	@echo ""
	@echo "Targets:"
	@echo "  all     - Run config, compile, and upload (default)"
	@echo "  config  - Validate the configuration"
	@echo "  compile - Compile the firmware"
	@echo "  upload  - Upload the firmware to the device"
	@echo "  run     - Compile and upload in one command"
	@echo "  clean   - Clean the build files"
	@echo "  help    - Show this help message"
	@echo ""
	@echo "Variables:"
	@echo "  CONFIG  - Path to the ESPHome config file (default: config.yaml)"
	@echo ""
	@echo "Example:"
	@echo "  make compile CONFIG=my_device.yaml"
