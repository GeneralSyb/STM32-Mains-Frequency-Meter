################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tinyusb-src/class/msc/msc_device.c \
../tinyusb-src/class/msc/msc_host.c 

C_DEPS += \
./tinyusb-src/class/msc/msc_device.d \
./tinyusb-src/class/msc/msc_host.d 

OBJS += \
./tinyusb-src/class/msc/msc_device.o \
./tinyusb-src/class/msc/msc_host.o 


# Each subdirectory must supply rules for building sources it contributes
tinyusb-src/class/msc/%.o tinyusb-src/class/msc/%.su tinyusb-src/class/msc/%.cyclo: ../tinyusb-src/class/msc/%.c tinyusb-src/class/msc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32C071xx -c -I../Core/Inc -I../Drivers/STM32C0xx_HAL_Driver/Inc -I../Drivers/STM32C0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32C0xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/SybDe/STM32CubeIDE/workspace_1.19.0/freq_meter_V0.2/tinyusb-src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-tinyusb-2d-src-2f-class-2f-msc

clean-tinyusb-2d-src-2f-class-2f-msc:
	-$(RM) ./tinyusb-src/class/msc/msc_device.cyclo ./tinyusb-src/class/msc/msc_device.d ./tinyusb-src/class/msc/msc_device.o ./tinyusb-src/class/msc/msc_device.su ./tinyusb-src/class/msc/msc_host.cyclo ./tinyusb-src/class/msc/msc_host.d ./tinyusb-src/class/msc/msc_host.o ./tinyusb-src/class/msc/msc_host.su

.PHONY: clean-tinyusb-2d-src-2f-class-2f-msc

