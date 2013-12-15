############################################
# Makefile for threadpool project
# 	Written by asad-
############################################

# Compiler options and flags 
CXX = g++
CC = $(CXX)
CFLAGS = -c -Wall 

# Directories 
#PROJECT_DIR = $(shell pwd)
BOOST_DIR = ThirdParties/boost_1_55_0/boost-binary
IDFLAGS = \
	-Iinclude \
	-I$(BOOST_DIR)/include
LDFLAGS = \
	-L$(BOOST_DIR)/lib
BUILD_DIR = x86

# Sources, objcects and executables 
EXEC = threadpool
SOURCES = \
	src/ThreadPool.cpp \
	src/ThreadPoolManager.cpp
OBJS = $(SOURCES:.cpp=.o)

all install: $(EXEC)
	@echo "Build done"

$(EXEC): $(OBJS)	
	$(CC) $(LDFLAGS) $(OBJS) -o $@

%.o: %.cpp
	@echo "Building $@ "
	$(CC) $(CFLAGS) $(IDFLAGS) $< -o $@

clean:
	rm -f $(OBJS) core *.rpo $(EXEC)
