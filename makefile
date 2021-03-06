TEX = pandoc
SRCS = document.tex data.yaml
FLAGS = --latex-engine=xelatex
TARGET = resume.pdf

UNAME_S := $(shell uname -s)

.PHONY: build clean rebuild

ifeq ($(UNAME_S),Linux)
rebuild:
	gnome-open $(TARGET)
endif
ifeq ($(UNAME_S),Darwin)
build: $(TARGET)
	open $(TARGET)
endif

$(TARGET) : $(SRCS)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

clean :
	rm -f $(TARGET)

rebuild: clean $(TARGET)
