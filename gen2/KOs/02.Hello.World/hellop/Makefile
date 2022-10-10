ifneq ($(KERNELRELEASE),)
	obj-m := hellop.o
else
	KERNELDIR ?= /lib/modules/$(shell uname -r)/build
	PWD := $(shell pwd)
default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

clean:
	rm -rf .hellop* *.o *.ko *.mod *.mod.c *.order *symvers *.cmd .*.cmd .tmp_versions
endif
