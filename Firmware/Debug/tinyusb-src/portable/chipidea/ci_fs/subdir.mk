################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tinyusb-src/portable/chipidea/ci_fs/dcd_ci_fs.c 

C_DEPS += \
./tinyusb-src/portable/chipidea/ci_fs/dcd_ci_fs.d 

OBJS += \
./tinyusb-src/portable/chipidea/ci_fs/dcd_ci_fs.o 


# Each subdirectory must supply rules for building sources it contributes
tinyusb-src/portable/chipidea/ci_fs/%.o tinyusb-src/portable/chipidea/ci_fs/%.su tinyusb-src/portable/chipidea/ci_fs/%.cyclo: ../tinyusb-src/portable/chipidea/ci_fs/%.c tinyusb-src/portable/chipidea/ci_fs/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32C071xx -c -I../Core/Inc -I../Drivers/STM32C0xx_HAL_Driver/Inc -I../Drivers/STM32C0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32C0xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/SybDe/STM32CubeIDE/workspace_1.19.0/freq_meter_V0.2/tinyusb-src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-tinyusb-2d-src-2f-portable-2f-chipidea-2f-ci_fs

clean-tinyusb-2d-src-2f-portable-2f-chipidea-2f-ci_fs:
	-$(RM) ./tinyusb-src/portable/chipidea/ci_fs/dcd_ci_fs.cyclo ./tinyusb-src/portable/chipidea/ci_fs/dcd_ci_fs.d ./tinyusb-src/portable/chipidea/ci_fs/dcd_ci_fs.o ./tinyusb-src/portable/chipidea/ci_fs/dcd_ci_fs.su

.PHONY: clean-tinyusb-2d-src-2f-portable-2f-chipidea-2f-ci_fs

