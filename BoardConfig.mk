# inherit from the proprietary version
-include vendor/evercoss/cross82_3821/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM := mt6582

TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE

TARGET_BOOTLOADER_BOARD_NAME := cross82_3821

BOARD_KERNEL_CMDLINE := androidboot.console=ttyFIQ0 console=ttyFIQ0  console=ttyMT0,921600n1 vmalloc=496M slub_max_order=0 lcm=0-otm1283a_hd720_dsi_vdo fps=5945 bootprof.pl_t=477 bootprof.lk_t=1843 printk.disable_uart=1 boot_reason=0 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
USE_OPENGL_RENDERER := true

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 6291456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16291456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 786432000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3758096384
BOARD_CUSTOM_BOOTIMG_MK := device/evercoss/cross82_3821/bootimg.mk
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

BOARD_FLASH_BLOCK_SIZE := 512

TARGET_PREBUILT_KERNEL := device/evercoss/cross82_3821/kernel

RECOVERY_FSTAB_VERSION := 1
BOARD_HAS_NO_SELECT_BUTTON := true
