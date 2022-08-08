# A well-written makefile describes all the files and settings used to compile a 
# project and link it with the appropriate libraries, and makes compilation 
# easy from the command line.

# calling "make" in the terminal, the default program it runs is "all"

# macros listed below; should be written in all caps
TARGET = exec
SRC = main.c my_ngram.c
OBJ = main.o my_ngram.o
CFLAGS += -Wall -Wextra -Werror

# Phony means this is not a real target since it doesn't create anything
.PHONY: all clean fclean re

# targets listed below
# targets are named based on the output of the command (ie, the file being created)
# -c will instruct gcc to only compile the source file to an .o (object) file but does not invoke the linker.
# With a project containing many .c files, one will typically compile first all .c files to .o files,
# then link the .o files into a single executable
all : $(TARGET)

$(TARGET) : $(OBJ)
	gcc $(CFLAGS) -o $(TARGET) $(OBJ) 

$(OBJ) : $(SRC)
	gcc $(CFLAGS) -c $(SRC)

clean:
	rm -f *.o

fclean: clean
	rm -f $(TARGET)

re: fclean all

# Make sure you are in the correct directory.
# Remember, you must call make in the terminal to assemble your executable.
# Then you must call your executable in the terminal to "execute" your program.
# Don't forget the preceding ./ with your executable (in this case called "exec")
# Arguments to be counted by ngram must follow your ./exec call.