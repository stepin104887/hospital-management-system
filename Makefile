SRC = src/hospital.c\
main.c
INC =-Iinc
PROJECT_NAME=hospital.exe
$(PROJECT_NAME):$(SRC)
    gcc $(SRC) $(INC) -o $(PROJECT_NAME)                
run:$(PROJECT_NAME)
    ./$(PROJECT_NAME)
