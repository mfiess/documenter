Document Generator

## Description
>   * Generates document for any project. Uses doxygen framework for generating documents.

## Setup
1. Install required packages:
    
    ~~~~
    sudo apt-get install git doxygen
    ~~~~

## Usage
1. Get documenter:

    ~~~~
    git clone https://github.com/mfiess/documenter.git
    ~~~~
  
2. cd documenter

3. ./generateDocument.sh settingsFilePath

    Settings file will have same format as doxygen format file with INPUT field as mandatory:

    ~~~~
    INPUT=<project root folder path>
    ~~~~

5. Open the index.html in browser from generated dist folder inside documenter

Examples project settings:
  ~~~~
  PROJECT_NAME="Spark"
  INPUT=/home/madan/pxCore
  USE_MDFILE_AS_MAINPAGE=/home/madan/pxCore/README.md
  EXCLUDE_PATTERNS = *rapidjson*
  EXCLUDE_PATTERNS += *external*
  EXCLUDE_PATTERNS += *node_modules*
  EXCLUDE_PATTERNS += *ci*
  EXCLUDE_PATTERNS += *tests*
  EXCLUDE_SYMBOLS = *args*
  EXCLUDE_SYMBOLS += *unz*
  EXCLUDE_SYMBOLS += *zlib*
  EXCLUDE_SYMBOLS += node
  ~~~~
