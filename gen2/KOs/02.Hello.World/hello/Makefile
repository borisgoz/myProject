ifneq ($(KERNELRELEASE),)
	obj-m := hello.o
else
	KERNELDIR ?= /lib/modules/$(shell uname -r)/build
	PWD := $(shell pwd)
default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

clean:
	rm -rf .hello* *.o *.ko *.mod *.mod.c *.order *symvers *.cmd .*.cmd .tmp_versions
endif
