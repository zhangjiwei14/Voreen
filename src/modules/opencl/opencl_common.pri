DEFINES += VRN_MODULE_OPENCL
DEFINES += VRN_WITH_OPENCL

win32 {
    isEmpty(NVIDIA_GPU_COMPUTING_SDK) {
        warning("NVIDIA_GPU_COMPUTING_SDK not set!)
    }
    INCLUDEPATH += "$${NVIDIA_GPU_COMPUTING_SDK}/OpenCL/common/inc"
    INCLUDEPATH += "$${NVIDIA_GPU_COMPUTING_SDK}/include
    LIBS += -L$${NVIDIA_GPU_COMPUTING_SDK}/OpenCL/common/lib/Win32
    LIBS += -L$${NVIDIA_GPU_COMPUTING_SDK}
    LIBS += -lOpenCL
}

unix {
  contains (DEFINES, VRN_WITH_OPENCL) {
    QMAKE_LFLAGS += -lOpenCL
  }
}