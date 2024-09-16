ifeq ($(UNAME), Windows)
  ECHO := echo -e
  TARGET_DIRECTORY := binary/windows
  OUTPUT_FILE := $(TARGET_DIRECTORY)/CppTemplate.exe
else ifeq ($(UNAME), Linux)
  ECHO := echo
  TARGET_DIRECTORY := binary/linux
  OUTPUT_FILE := $(TARGET_DIRECTORY)/CppTemplate.exe
endif

PROGRAM_SOURCE_DIRECTORY := program/source
PROGRAM_INCLUDE_DIRECTORY := program/include
BINARY_DIRECTORY := binary
OBJECT_DIRECTORY := binary/object
CPP_SOURCE_FILES := $(wildcard $(PROGRAM_SOURCE_DIRECTORY)/*.cpp)
OBJECT_FILES := $(patsubst $(PROGRAM_SOURCE_DIRECTORY)/%.cpp,$(OBJECT_DIRECTORY)/%.o,$(CPP_SOURCE_FILES))
DEPENDENCY_FILES := $(patsubst $(OBJECT_DIRECTORY)/%.o,$(OBJECT_DIRECTORY)/%.d,$(OBJECT_FILES))
