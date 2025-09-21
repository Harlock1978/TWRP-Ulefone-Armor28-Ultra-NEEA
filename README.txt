Ulefone Armor 28 Ultra — TWRP device tree (starter)
---------------------------------------------------
This is an auto-generated skeleton based on analyzing your boot/vendor_boot/init_boot images.

Key points detected:
- Boot header version: 4
- Vendor boot header version: 4
- Init_boot present (Android 13+)
- Ramdisk compression: LZ4 (legacy) in init_boot (and likely vendor_boot)

Next steps:
1) Extract /vendor/etc/fstab* from vendor ramdisk (LZ4/cpio) and replace twrp.fstab contents accordingly.
2) Set SUPER partition sizes in BoardConfig (read from 'super' metadata).
3) Build:
   repo sync TWRP trees →
   source build/envsetup.sh
   lunch omni_armor28ultra-eng
   mka recoveryimage  (for vendor_boot-style, output is vendor_boot-like image)
4) Test:
   fastboot boot out/target/product/armor28ultra/recovery.img
5) If OK, install via TWRP's own installer (recommended) or a repack script that merges your stock vendor_boot with TWRP ramdisk.

NOTE: For initial tests on AVB-protected devices you may need:
  fastboot --disable-verity --disable-verification flash vbmeta vbmeta_disabled.img
Use with caution; prefer using proper avbtool-based signing in production.
