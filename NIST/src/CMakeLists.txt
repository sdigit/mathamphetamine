CMAKE_MINIMUM_REQUIRED(VERSION 2.8.4)
ENABLE_LANGUAGE(C)
PROJECT(sts C)
set(NIST_STS_SRC
    approximateEntropy.c
    assess.c
    blockFrequency.c
    cephes.c
    cusum.c
    dfft.c
    discreteFourierTransform.c
    frequency.c
    generators.c
    genutils.c
    linearComplexity.c
    longestRunOfOnes.c
    matrix.c
    nonOverlappingTemplateMatchings.c
    overlappingTemplateMatchings.c
    randomExcursions.c
    randomExcursionsVariant.c
    rank.c
    runs.c
    serial.c
    universal.c
    utilities.c)

IF (CMAKE_C_COMPILER MATCHES "icc")
  ADD_COMPILE_OPTIONS(-ip -ipo -xHost -mkl -O2 -fast)
ENDIF()

ADD_EXECUTABLE(assess ${NIST_STS_SRC})
TARGET_LINK_LIBRARIES(assess m)
