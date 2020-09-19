# Name of the project
PROJECT_NAME = hospital

# Output directory
BUILD = build

# All source code files
SRC = main.c\
src/hospital.c\
INC	= -Iinc

PROJECT_OUTPUT = $(BUILD)/$(PROJECT_NAME).out



# Default target built
$(PROJECT_NAME):all

# Run the target even if the matching name exists
.PHONY: run clean test  doc all

all: $(SRC) $(BUILD)
	gcc $(SRC) $(INC) -o $(PROJECT_OUTPUT).out

# Call `make run` to run the application
run:$(PROJECT_NAME)
	./$(PROJECT_OUTPUT).out



# Create new build folder if not present
$(BUILD):
	mkdir build
