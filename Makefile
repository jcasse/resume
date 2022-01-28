TEX = pandoc
SRCS = document.tex data.yaml
FLAGS = --pdf-engine=xelatex
TARGET = resume.pdf

UNAME_S := $(shell uname -s)

.PHONY: build clean rebuild

ifeq ($(UNAME_S),Linux)
rebuild:
	xdg-open $(TARGET)
endif
ifeq ($(UNAME_S),Darwin)
rebuild:
	open $(TARGET)
endif

$(TARGET) : $(SRCS)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

clean :
	rm -f $(TARGET)

rebuild: clean $(TARGET)
