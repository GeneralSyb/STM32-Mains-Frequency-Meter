################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tinyusb-src/portable/synopsys/dwc2/dcd_dwc2.c \
../tinyusb-src/portable/synopsys/dwc2/dwc2_common.c \
../tinyusb-src/portable/synopsys/dwc2/hcd_dwc2.c 

C_DEPS += \
./tinyusb-src/portable/synopsys/dwc2/dcd_dwc2.d \
./tinyusb-src/portable/synopsys/dwc2/dwc2_common.d \
./tinyusb-src/portable/synopsys/dwc2/hcd_dwc2.d 

OBJS += \
./tinyusb-src/portable/synopsys/dwc2/dcd_dwc2.o \
./tinyusb-src/portable/synopsys/dwc2/dwc2_common.o \
./tinyusb-src/portable/synopsys/dwc2/hcd_dwc2.o 


# Each subdirectory must supply rules for building sources it contributes
tinyusb-src/portable/synopsys/dwc2/%.o tinyusb-src/portable/synopsys/dwc2/%.su tinyusb-src/portable/synopsys/dwc2/%.cyclo: ../tinyusb-src/portable/synopsys/dwc2/%.c tinyusb-src/portable/synopsys/dwc2/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32C071xx -c -I../Core/Inc -I../Drivers/STM32C0xx_HAL_Driver/Inc -I../Drivers/STM32C0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32C0xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/SybDe/STM32CubeIDE/workspace_1.19.0/freq_meter_V0.2/tinyusb-src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-tinyusb-2d-src-2f-portable-2f-synopsys-2f-dwc2

clean-tinyusb-2d-src-2f-portable-2f-synopsys-2f-dwc2:
	-$(RM) ./tinyusb-src/portable/synopsys/dwc2/dcd_dwc2.cyclo ./tinyusb-src/portable/synopsys/dwc2/dcd_dwc2.d ./tinyusb-src/portable/synopsys/dwc2/dcd_dwc2.o ./tinyusb-src/portable/synopsys/dwc2/dcd_dwc2.su ./tinyusb-src/portable/synopsys/dwc2/dwc2_common.cyclo ./tinyusb-src/portable/synopsys/dwc2/dwc2_common.d ./tinyusb-src/portable/synopsys/dwc2/dwc2_common.o ./tinyusb-src/portable/synopsys/dwc2/dwc2_common.su ./tinyusb-src/portable/synopsys/dwc2/hcd_dwc2.cyclo ./tinyusb-src/portable/synopsys/dwc2/hcd_dwc2.d ./tinyusb-src/portable/synopsys/dwc2/hcd_dwc2.o ./tinyusb-src/portable/synopsys/dwc2/hcd_dwc2.su

.PHONY: clean-tinyusb-2d-src-2f-portable-2f-synopsys-2f-dwc2

