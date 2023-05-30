CC := gcc

BUILD_DIR := build
SRC_DIR := src
INC_DIR := inc

CFLAGS := -Wall -I $(INC_DIR)
LDFLAGS :=
CFFLAGS := --style="{IndentWidth: 4}" -i

TARGET := $(BUILD_DIR)/project
C_FILES := main.c

SOURCES := $(addprefix $(SRC_DIR)/, $(C_FILES))
OBJECTS = $(addprefix $(BUILD_DIR)/,$(C_FILES:.c=.o))


all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(LDFLAGS) -o $@ $^

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(BUILD_DIR)

run:
	$(TARGET)

format:
	clang-format $(CFFLAGS) $(SRC_DIR)/*.c $(INC_DIR)/*.h

check:
	cppcheck --enable=all --force -q --language=c $(SRC_DIR)/*.c $(INC_DIR)/*.h

.PHONY: all clean
