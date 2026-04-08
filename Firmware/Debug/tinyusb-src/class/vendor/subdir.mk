################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tinyusb-src/class/vendor/vendor_device.c \
../tinyusb-src/class/vendor/vendor_host.c 

C_DEPS += \
./tinyusb-src/class/vendor/vendor_device.d \
./tinyusb-src/class/vendor/vendor_host.d 

OBJS += \
./tinyusb-src/class/vendor/vendor_device.o \
./tinyusb-src/class/vendor/vendor_host.o 


# Each subdirectory must supply rules for building sources it contributes
tinyusb-src/class/vendor/%.o tinyusb-src/class/vendor/%.su tinyusb-src/class/vendor/%.cyclo: ../tinyusb-src/class/vendor/%.c tinyusb-src/class/vendor/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32C071xx -c -I../Core/Inc -I../Drivers/STM32C0xx_HAL_Driver/Inc -I../Drivers/STM32C0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32C0xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/SybDe/STM32CubeIDE/workspace_1.19.0/freq_meter_V0.2/tinyusb-src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-tinyusb-2d-src-2f-class-2f-vendor

clean-tinyusb-2d-src-2f-class-2f-vendor:
	-$(RM) ./tinyusb-src/class/vendor/vendor_device.cyclo ./tinyusb-src/class/vendor/vendor_device.d ./tinyusb-src/class/vendor/vendor_device.o ./tinyusb-src/class/vendor/vendor_device.su ./tinyusb-src/class/vendor/vendor_host.cyclo ./tinyusb-src/class/vendor/vendor_host.d ./tinyusb-src/class/vendor/vendor_host.o ./tinyusb-src/class/vendor/vendor_host.su

.PHONY: clean-tinyusb-2d-src-2f-class-2f-vendor

