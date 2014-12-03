USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/evercoss/cross82_3821/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := cross82_3821

BOARD_KERNEL_CMDLINE := console=ttyMT0,921600n1 vmalloc=496M slub_max_order=0 lcm=0-otm1283a_hd720_dsi_vdo fps=5945 bootprof.pl_t=477 bootprof.lk_t=1843 printk.disable_uart=1 boot_reason=0 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x10000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x1000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x38400000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0xd3400000
BOARD_FLASH_BLOCK_SIZE := 0x20000

TARGET_PREBUILT_KERNEL := device/evercoss/cross82_3821/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
