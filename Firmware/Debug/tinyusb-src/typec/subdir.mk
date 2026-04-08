################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tinyusb-src/typec/usbc.c 

C_DEPS += \
./tinyusb-src/typec/usbc.d 

OBJS += \
./tinyusb-src/typec/usbc.o 


# Each subdirectory must supply rules for building sources it contributes
tinyusb-src/typec/%.o tinyusb-src/typec/%.su tinyusb-src/typec/%.cyclo: ../tinyusb-src/typec/%.c tinyusb-src/typec/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32C071xx -c -I../Core/Inc -I../Drivers/STM32C0xx_HAL_Driver/Inc -I../Drivers/STM32C0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32C0xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/SybDe/STM32CubeIDE/workspace_1.19.0/freq_meter_V0.2/tinyusb-src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-tinyusb-2d-src-2f-typec

clean-tinyusb-2d-src-2f-typec:
	-$(RM) ./tinyusb-src/typec/usbc.cyclo ./tinyusb-src/typec/usbc.d ./tinyusb-src/typec/usbc.o ./tinyusb-src/typec/usbc.su

.PHONY: clean-tinyusb-2d-src-2f-typec

