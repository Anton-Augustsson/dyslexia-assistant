dyslexia-assistant:
	echo "Dyslexia Assistant Makefile"
	echo "   make all:   to compile all"
	echo "   make run:   to run the program"
	echo "   make clean: to remove class fiels"
	echo "   make test:  to run tests"


SRC            := src
HAMCREST       := /usr/share/java/hamcrest-core-1.3.jar
JUNIT          := /usr/share/java/junit4.jar
JUNIT_CLASS    := org.junit.runner.JUnitCore
JAVA           := java
JAVA_COMPILER  := javac -d $(SRC)/classes 
JAVA_OPTIONS   := -cp classes
JAVA_JUNIT     := $(JAVA_OPTIONS):/$(HAMCREST):$(JUNIT):.


.SILENT:

all:
	mkdir -p $(SRC)/classes
	$(JAVA_COMPILER) $(JAVA_OPTIONS) $(SRC)/*.java #USE: JAVA_JUNIT insted of options


run: all
	java -cp $(SRC)/classes editor

.PHONY: clean

clean: 
	rm -rf $(SRC)/classes

test: all
	$(JAVA) $(JAVA_JUNIT) $(JUNIT_CLASS) &(SRC)/classes/Test.class

javaDoxygen: all
	doxygen -g $(SRC)/doxygen-dyslexia-assistant
	doxygen $(SRC)/doxygen-dyslexia-assistant
