TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = softInt
DBD += softInt.dbd

softInt_DBD += base.dbd
softInt_DBD += asSupport.dbd

softInt_LIBS += autosave 

softInt_SRCS += softInt_registerRecordDeviceDriver.cpp

softInt_SRCS_DEFAULT += main.cpp
softInt_SRCS_vxWorks += -nil-

softInt_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

