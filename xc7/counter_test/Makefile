mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_dir := $(patsubst %/,%,$(dir $(mkfile_path)))
TOP:=top
VERILOG:=${current_dir}/counter.v
DEVICE  := xc7a50t-test
BITSTREAM_DEVICE := artix7
BUILDDIR:=build

ifeq ($(TARGET),arty_35)
  PARTNAME := xc7a35tcsg324-1
  XDC:=${current_dir}/arty.xdc
  BOARD_BUILDDIR := ${BUILDDIR}/arty_35
else ifeq ($(TARGET),arty_100)
  PARTNAME:= xc7a100tcsg324-1
  XDC:=${current_dir}/arty.xdc
  DEVICE:= xc7a100t-test
  BOARD_BUILDDIR := ${BUILDDIR}/arty_100
else ifeq ($(TARGET),zybo)
  PARTNAME:= xc7z010clg400-1
  XDC:=${current_dir}/zybo.xdc
  DEVICE:= xc7z010-test
  BITSTREAM_DEVICE:= zynq7
  BOARD_BUILDDIR := ${BUILDDIR}/zybo
  VERILOG:=${current_dir}/counter_zynq.v
else ifeq ($(TARGET),nexys_video)
  PARTNAME:= xc7a200tsbg484-1
  XDC:=${current_dir}/nexys_video.xdc
  DEVICE:= xc7a200t-test
  BOARD_BUILDDIR := ${BUILDDIR}/nexys_video
else
  PARTNAME:= xc7a35tcpg236-1
  XDC:=${current_dir}/basys3.xdc
  BOARD_BUILDDIR := ${BUILDDIR}/basys3
endif

.DELETE_ON_ERROR:


all: ${BOARD_BUILDDIR}/${TOP}.bit

${BOARD_BUILDDIR}:
	mkdir -p ${BOARD_BUILDDIR}

${BOARD_BUILDDIR}/${TOP}.bit: | ${BOARD_BUILDDIR}
	cd ${BOARD_BUILDDIR} && silkflow run -t ${TOP} -X ${BITSTREAM_DEVICE} -D ${DEVICE} -P ${PARTNAME} -b ${TOP}.bit -x ${XDC} ${VERILOG}

clean:
	rm -rf ${BUILDDIR}
