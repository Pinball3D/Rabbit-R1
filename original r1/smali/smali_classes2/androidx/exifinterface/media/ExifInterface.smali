.class public Landroidx/exifinterface/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;,
        Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;,
        Landroidx/exifinterface/media/ExifInterface$IfdType;,
        Landroidx/exifinterface/media/ExifInterface$ExifTag;,
        Landroidx/exifinterface/media/ExifInterface$ExifAttribute;,
        Landroidx/exifinterface/media/ExifInterface$Rational;
    }
.end annotation


# static fields
.field public static final ALTITUDE_ABOVE_SEA_LEVEL:S = 0x0s

.field public static final ALTITUDE_BELOW_SEA_LEVEL:S = 0x1s

.field static final ASCII:Ljava/nio/charset/Charset;

.field public static final BITS_PER_SAMPLE_GREYSCALE_1:[I

.field public static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field public static final BITS_PER_SAMPLE_RGB:[I

.field static final BYTE_ALIGN_II:S = 0x4949s

.field static final BYTE_ALIGN_MM:S = 0x4d4ds

.field public static final COLOR_SPACE_S_RGB:I = 0x1

.field public static final COLOR_SPACE_UNCALIBRATED:I = 0xffff

.field public static final CONTRAST_HARD:S = 0x2s

.field public static final CONTRAST_NORMAL:S = 0x0s

.field public static final CONTRAST_SOFT:S = 0x1s

.field public static final DATA_DEFLATE_ZIP:I = 0x8

.field public static final DATA_HUFFMAN_COMPRESSED:I = 0x2

.field public static final DATA_JPEG:I = 0x6

.field public static final DATA_JPEG_COMPRESSED:I = 0x7

.field public static final DATA_LOSSY_JPEG:I = 0x884c

.field public static final DATA_PACK_BITS_COMPRESSED:I = 0x8005

.field public static final DATA_UNCOMPRESSED:I = 0x1

.field private static final DEBUG:Z

.field static final EXIF_ASCII_PREFIX:[B

.field private static final EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field static final EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final EXPOSURE_MODE_AUTO:S = 0x0s

.field public static final EXPOSURE_MODE_AUTO_BRACKET:S = 0x2s

.field public static final EXPOSURE_MODE_MANUAL:S = 0x1s

.field public static final EXPOSURE_PROGRAM_ACTION:S = 0x6s

.field public static final EXPOSURE_PROGRAM_APERTURE_PRIORITY:S = 0x3s

.field public static final EXPOSURE_PROGRAM_CREATIVE:S = 0x5s

.field public static final EXPOSURE_PROGRAM_LANDSCAPE_MODE:S = 0x8s

.field public static final EXPOSURE_PROGRAM_MANUAL:S = 0x1s

.field public static final EXPOSURE_PROGRAM_NORMAL:S = 0x2s

.field public static final EXPOSURE_PROGRAM_NOT_DEFINED:S = 0x0s

.field public static final EXPOSURE_PROGRAM_PORTRAIT_MODE:S = 0x7s

.field public static final EXPOSURE_PROGRAM_SHUTTER_PRIORITY:S = 0x4s

.field public static final FILE_SOURCE_DSC:S = 0x3s

.field public static final FILE_SOURCE_OTHER:S = 0x0s

.field public static final FILE_SOURCE_REFLEX_SCANNER:S = 0x2s

.field public static final FILE_SOURCE_TRANSPARENT_SCANNER:S = 0x1s

.field public static final FLAG_FLASH_FIRED:S = 0x1s

.field public static final FLAG_FLASH_MODE_AUTO:S = 0x18s

.field public static final FLAG_FLASH_MODE_COMPULSORY_FIRING:S = 0x8s

.field public static final FLAG_FLASH_MODE_COMPULSORY_SUPPRESSION:S = 0x10s

.field public static final FLAG_FLASH_NO_FLASH_FUNCTION:S = 0x20s

.field public static final FLAG_FLASH_RED_EYE_SUPPORTED:S = 0x40s

.field public static final FLAG_FLASH_RETURN_LIGHT_DETECTED:S = 0x6s

.field public static final FLAG_FLASH_RETURN_LIGHT_NOT_DETECTED:S = 0x4s

.field private static final FLIPPED_ROTATION_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_CHUNKY:S = 0x1s

.field public static final FORMAT_PLANAR:S = 0x2s

.field public static final GAIN_CONTROL_HIGH_GAIN_DOWN:S = 0x4s

.field public static final GAIN_CONTROL_HIGH_GAIN_UP:S = 0x2s

.field public static final GAIN_CONTROL_LOW_GAIN_DOWN:S = 0x3s

.field public static final GAIN_CONTROL_LOW_GAIN_UP:S = 0x1s

.field public static final GAIN_CONTROL_NONE:S = 0x0s

.field public static final GPS_DIRECTION_MAGNETIC:Ljava/lang/String; = "M"

.field public static final GPS_DIRECTION_TRUE:Ljava/lang/String; = "T"

.field public static final GPS_DISTANCE_KILOMETERS:Ljava/lang/String; = "K"

.field public static final GPS_DISTANCE_MILES:Ljava/lang/String; = "M"

.field public static final GPS_DISTANCE_NAUTICAL_MILES:Ljava/lang/String; = "N"

.field public static final GPS_MEASUREMENT_2D:Ljava/lang/String; = "2"

.field public static final GPS_MEASUREMENT_3D:Ljava/lang/String; = "3"

.field public static final GPS_MEASUREMENT_DIFFERENTIAL_CORRECTED:S = 0x1s

.field public static final GPS_MEASUREMENT_INTERRUPTED:Ljava/lang/String; = "V"

.field public static final GPS_MEASUREMENT_IN_PROGRESS:Ljava/lang/String; = "A"

.field public static final GPS_MEASUREMENT_NO_DIFFERENTIAL:S = 0x0s

.field public static final GPS_SPEED_KILOMETERS_PER_HOUR:Ljava/lang/String; = "K"

.field public static final GPS_SPEED_KNOTS:Ljava/lang/String; = "N"

.field public static final GPS_SPEED_MILES_PER_HOUR:Ljava/lang/String; = "M"

.field private static final HEIF_BRAND_HEIC:[B

.field private static final HEIF_BRAND_MIF1:[B

.field private static final HEIF_TYPE_FTYP:[B

.field static final IDENTIFIER_EXIF_APP1:[B

.field private static final IDENTIFIER_XMP_APP1:[B

.field private static final IFD_EXIF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_FORMAT_BYTE:I = 0x1

.field static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field private static final IFD_FORMAT_DOUBLE:I = 0xc

.field private static final IFD_FORMAT_IFD:I = 0xd

.field static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_FORMAT_SBYTE:I = 0x6

.field private static final IFD_FORMAT_SINGLE:I = 0xb

.field private static final IFD_FORMAT_SLONG:I = 0x9

.field private static final IFD_FORMAT_SRATIONAL:I = 0xa

.field private static final IFD_FORMAT_SSHORT:I = 0x8

.field private static final IFD_FORMAT_STRING:I = 0x2

.field private static final IFD_FORMAT_ULONG:I = 0x4

.field private static final IFD_FORMAT_UNDEFINED:I = 0x7

.field private static final IFD_FORMAT_URATIONAL:I = 0x5

.field private static final IFD_FORMAT_USHORT:I = 0x3

.field private static final IFD_GPS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_INTEROPERABILITY_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_OFFSET:I = 0x8

.field private static final IFD_THUMBNAIL_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_TIFF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_TYPE_EXIF:I = 0x1

.field private static final IFD_TYPE_GPS:I = 0x2

.field private static final IFD_TYPE_INTEROPERABILITY:I = 0x3

.field private static final IFD_TYPE_ORF_CAMERA_SETTINGS:I = 0x7

.field private static final IFD_TYPE_ORF_IMAGE_PROCESSING:I = 0x8

.field private static final IFD_TYPE_ORF_MAKER_NOTE:I = 0x6

.field private static final IFD_TYPE_PEF:I = 0x9

.field static final IFD_TYPE_PREVIEW:I = 0x5

.field static final IFD_TYPE_PRIMARY:I = 0x0

.field static final IFD_TYPE_THUMBNAIL:I = 0x4

.field private static final IMAGE_TYPE_ARW:I = 0x1

.field private static final IMAGE_TYPE_CR2:I = 0x2

.field private static final IMAGE_TYPE_DNG:I = 0x3

.field private static final IMAGE_TYPE_HEIF:I = 0xc

.field private static final IMAGE_TYPE_JPEG:I = 0x4

.field private static final IMAGE_TYPE_NEF:I = 0x5

.field private static final IMAGE_TYPE_NRW:I = 0x6

.field private static final IMAGE_TYPE_ORF:I = 0x7

.field private static final IMAGE_TYPE_PEF:I = 0x8

.field private static final IMAGE_TYPE_RAF:I = 0x9

.field private static final IMAGE_TYPE_RW2:I = 0xa

.field private static final IMAGE_TYPE_SRW:I = 0xb

.field private static final IMAGE_TYPE_UNKNOWN:I = 0x0

.field private static final JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field static final JPEG_SIGNATURE:[B

.field public static final LATITUDE_NORTH:Ljava/lang/String; = "N"

.field public static final LATITUDE_SOUTH:Ljava/lang/String; = "S"

.field public static final LIGHT_SOURCE_CLOUDY_WEATHER:S = 0xas

.field public static final LIGHT_SOURCE_COOL_WHITE_FLUORESCENT:S = 0xes

.field public static final LIGHT_SOURCE_D50:S = 0x17s

.field public static final LIGHT_SOURCE_D55:S = 0x14s

.field public static final LIGHT_SOURCE_D65:S = 0x15s

.field public static final LIGHT_SOURCE_D75:S = 0x16s

.field public static final LIGHT_SOURCE_DAYLIGHT:S = 0x1s

.field public static final LIGHT_SOURCE_DAYLIGHT_FLUORESCENT:S = 0xcs

.field public static final LIGHT_SOURCE_DAY_WHITE_FLUORESCENT:S = 0xds

.field public static final LIGHT_SOURCE_FINE_WEATHER:S = 0x9s

.field public static final LIGHT_SOURCE_FLASH:S = 0x4s

.field public static final LIGHT_SOURCE_FLUORESCENT:S = 0x2s

.field public static final LIGHT_SOURCE_ISO_STUDIO_TUNGSTEN:S = 0x18s

.field public static final LIGHT_SOURCE_OTHER:S = 0xffs

.field public static final LIGHT_SOURCE_SHADE:S = 0xbs

.field public static final LIGHT_SOURCE_STANDARD_LIGHT_A:S = 0x11s

.field public static final LIGHT_SOURCE_STANDARD_LIGHT_B:S = 0x12s

.field public static final LIGHT_SOURCE_STANDARD_LIGHT_C:S = 0x13s

.field public static final LIGHT_SOURCE_TUNGSTEN:S = 0x3s

.field public static final LIGHT_SOURCE_UNKNOWN:S = 0x0s

.field public static final LIGHT_SOURCE_WARM_WHITE_FLUORESCENT:S = 0x10s

.field public static final LIGHT_SOURCE_WHITE_FLUORESCENT:S = 0xfs

.field public static final LONGITUDE_EAST:Ljava/lang/String; = "E"

.field public static final LONGITUDE_WEST:Ljava/lang/String; = "W"

.field static final MARKER:B = -0x1t

.field static final MARKER_APP1:B = -0x1ft

.field private static final MARKER_COM:B = -0x2t

.field static final MARKER_EOI:B = -0x27t

.field private static final MARKER_SOF0:B = -0x40t

.field private static final MARKER_SOF1:B = -0x3ft

.field private static final MARKER_SOF10:B = -0x36t

.field private static final MARKER_SOF11:B = -0x35t

.field private static final MARKER_SOF13:B = -0x33t

.field private static final MARKER_SOF14:B = -0x32t

.field private static final MARKER_SOF15:B = -0x31t

.field private static final MARKER_SOF2:B = -0x3et

.field private static final MARKER_SOF3:B = -0x3dt

.field private static final MARKER_SOF5:B = -0x3bt

.field private static final MARKER_SOF6:B = -0x3at

.field private static final MARKER_SOF7:B = -0x39t

.field private static final MARKER_SOF9:B = -0x37t

.field private static final MARKER_SOI:B = -0x28t

.field private static final MARKER_SOS:B = -0x26t

.field private static final MAX_THUMBNAIL_SIZE:I = 0x200

.field public static final METERING_MODE_AVERAGE:S = 0x1s

.field public static final METERING_MODE_CENTER_WEIGHT_AVERAGE:S = 0x2s

.field public static final METERING_MODE_MULTI_SPOT:S = 0x4s

.field public static final METERING_MODE_OTHER:S = 0xffs

.field public static final METERING_MODE_PARTIAL:S = 0x6s

.field public static final METERING_MODE_PATTERN:S = 0x5s

.field public static final METERING_MODE_SPOT:S = 0x3s

.field public static final METERING_MODE_UNKNOWN:S = 0x0s

.field private static final ORF_CAMERA_SETTINGS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final ORF_IMAGE_PROCESSING_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final ORF_MAKER_NOTE_HEADER_1:[B

.field private static final ORF_MAKER_NOTE_HEADER_1_SIZE:I = 0x8

.field private static final ORF_MAKER_NOTE_HEADER_2:[B

.field private static final ORF_MAKER_NOTE_HEADER_2_SIZE:I = 0xc

.field private static final ORF_MAKER_NOTE_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final ORF_SIGNATURE_1:S = 0x4f52s

.field private static final ORF_SIGNATURE_2:S = 0x5352s

.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final ORIGINAL_RESOLUTION_IMAGE:I = 0x0

.field private static final PEF_MAKER_NOTE_SKIP_SIZE:I = 0x6

.field private static final PEF_SIGNATURE:Ljava/lang/String; = "PENTAX"

.field private static final PEF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO:I = 0x1

.field public static final PHOTOMETRIC_INTERPRETATION_RGB:I = 0x2

.field public static final PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO:I = 0x0

.field public static final PHOTOMETRIC_INTERPRETATION_YCBCR:I = 0x6

.field private static final RAF_INFO_SIZE:I = 0xa0

.field private static final RAF_JPEG_LENGTH_VALUE_SIZE:I = 0x4

.field private static final RAF_OFFSET_TO_JPEG_IMAGE_OFFSET:I = 0x54

.field private static final RAF_SIGNATURE:Ljava/lang/String; = "FUJIFILMCCD-RAW"

.field public static final REDUCED_RESOLUTION_IMAGE:I = 0x1

.field public static final RENDERED_PROCESS_CUSTOM:S = 0x1s

.field public static final RENDERED_PROCESS_NORMAL:S = 0x0s

.field public static final RESOLUTION_UNIT_CENTIMETERS:S = 0x3s

.field public static final RESOLUTION_UNIT_INCHES:S = 0x2s

.field private static final ROTATION_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final RW2_SIGNATURE:S = 0x55s

.field public static final SATURATION_HIGH:S = 0x0s

.field public static final SATURATION_LOW:S = 0x0s

.field public static final SATURATION_NORMAL:S = 0x0s

.field public static final SCENE_CAPTURE_TYPE_LANDSCAPE:S = 0x1s

.field public static final SCENE_CAPTURE_TYPE_NIGHT:S = 0x3s

.field public static final SCENE_CAPTURE_TYPE_PORTRAIT:S = 0x2s

.field public static final SCENE_CAPTURE_TYPE_STANDARD:S = 0x0s

.field public static final SCENE_TYPE_DIRECTLY_PHOTOGRAPHED:S = 0x1s

.field public static final SENSITIVITY_TYPE_ISO_SPEED:S = 0x3s

.field public static final SENSITIVITY_TYPE_REI:S = 0x2s

.field public static final SENSITIVITY_TYPE_REI_AND_ISO:S = 0x6s

.field public static final SENSITIVITY_TYPE_SOS:S = 0x1s

.field public static final SENSITIVITY_TYPE_SOS_AND_ISO:S = 0x5s

.field public static final SENSITIVITY_TYPE_SOS_AND_REI:S = 0x4s

.field public static final SENSITIVITY_TYPE_SOS_AND_REI_AND_ISO:S = 0x7s

.field public static final SENSITIVITY_TYPE_UNKNOWN:S = 0x0s

.field public static final SENSOR_TYPE_COLOR_SEQUENTIAL:S = 0x5s

.field public static final SENSOR_TYPE_COLOR_SEQUENTIAL_LINEAR:S = 0x8s

.field public static final SENSOR_TYPE_NOT_DEFINED:S = 0x1s

.field public static final SENSOR_TYPE_ONE_CHIP:S = 0x2s

.field public static final SENSOR_TYPE_THREE_CHIP:S = 0x4s

.field public static final SENSOR_TYPE_TRILINEAR:S = 0x7s

.field public static final SENSOR_TYPE_TWO_CHIP:S = 0x3s

.field public static final SHARPNESS_HARD:S = 0x2s

.field public static final SHARPNESS_NORMAL:S = 0x0s

.field public static final SHARPNESS_SOFT:S = 0x1s

.field private static final SIGNATURE_CHECK_SIZE:I = 0x1388

.field static final START_CODE:B = 0x2at

.field public static final SUBJECT_DISTANCE_RANGE_CLOSE_VIEW:S = 0x2s

.field public static final SUBJECT_DISTANCE_RANGE_DISTANT_VIEW:S = 0x3s

.field public static final SUBJECT_DISTANCE_RANGE_MACRO:S = 0x1s

.field public static final SUBJECT_DISTANCE_RANGE_UNKNOWN:S = 0x0s

.field private static final TAG:Ljava/lang/String; = "ExifInterface"

.field public static final TAG_APERTURE_VALUE:Ljava/lang/String; = "ApertureValue"

.field public static final TAG_ARTIST:Ljava/lang/String; = "Artist"

.field public static final TAG_BITS_PER_SAMPLE:Ljava/lang/String; = "BitsPerSample"

.field public static final TAG_BODY_SERIAL_NUMBER:Ljava/lang/String; = "BodySerialNumber"

.field public static final TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "BrightnessValue"

.field public static final TAG_CAMARA_OWNER_NAME:Ljava/lang/String; = "CameraOwnerName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_CAMERA_OWNER_NAME:Ljava/lang/String; = "CameraOwnerName"

.field public static final TAG_CFA_PATTERN:Ljava/lang/String; = "CFAPattern"

.field public static final TAG_COLOR_SPACE:Ljava/lang/String; = "ColorSpace"

.field public static final TAG_COMPONENTS_CONFIGURATION:Ljava/lang/String; = "ComponentsConfiguration"

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:Ljava/lang/String; = "CompressedBitsPerPixel"

.field public static final TAG_COMPRESSION:Ljava/lang/String; = "Compression"

.field public static final TAG_CONTRAST:Ljava/lang/String; = "Contrast"

.field public static final TAG_COPYRIGHT:Ljava/lang/String; = "Copyright"

.field public static final TAG_CUSTOM_RENDERED:Ljava/lang/String; = "CustomRendered"

.field public static final TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final TAG_DATETIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field public static final TAG_DEFAULT_CROP_SIZE:Ljava/lang/String; = "DefaultCropSize"

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:Ljava/lang/String; = "DeviceSettingDescription"

.field public static final TAG_DIGITAL_ZOOM_RATIO:Ljava/lang/String; = "DigitalZoomRatio"

.field public static final TAG_DNG_VERSION:Ljava/lang/String; = "DNGVersion"

.field private static final TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field public static final TAG_EXIF_VERSION:Ljava/lang/String; = "ExifVersion"

.field public static final TAG_EXPOSURE_BIAS_VALUE:Ljava/lang/String; = "ExposureBiasValue"

.field public static final TAG_EXPOSURE_INDEX:Ljava/lang/String; = "ExposureIndex"

.field public static final TAG_EXPOSURE_MODE:Ljava/lang/String; = "ExposureMode"

.field public static final TAG_EXPOSURE_PROGRAM:Ljava/lang/String; = "ExposureProgram"

.field public static final TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final TAG_FILE_SOURCE:Ljava/lang/String; = "FileSource"

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_FLASHPIX_VERSION:Ljava/lang/String; = "FlashpixVersion"

.field public static final TAG_FLASH_ENERGY:Ljava/lang/String; = "FlashEnergy"

.field public static final TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final TAG_FOCAL_LENGTH_IN_35MM_FILM:Ljava/lang/String; = "FocalLengthIn35mmFilm"

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:Ljava/lang/String; = "FocalPlaneResolutionUnit"

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:Ljava/lang/String; = "FocalPlaneXResolution"

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:Ljava/lang/String; = "FocalPlaneYResolution"

.field public static final TAG_F_NUMBER:Ljava/lang/String; = "FNumber"

.field public static final TAG_GAIN_CONTROL:Ljava/lang/String; = "GainControl"

.field public static final TAG_GAMMA:Ljava/lang/String; = "Gamma"

.field public static final TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final TAG_GPS_AREA_INFORMATION:Ljava/lang/String; = "GPSAreaInformation"

.field public static final TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final TAG_GPS_DEST_BEARING:Ljava/lang/String; = "GPSDestBearing"

.field public static final TAG_GPS_DEST_BEARING_REF:Ljava/lang/String; = "GPSDestBearingRef"

.field public static final TAG_GPS_DEST_DISTANCE:Ljava/lang/String; = "GPSDestDistance"

.field public static final TAG_GPS_DEST_DISTANCE_REF:Ljava/lang/String; = "GPSDestDistanceRef"

.field public static final TAG_GPS_DEST_LATITUDE:Ljava/lang/String; = "GPSDestLatitude"

.field public static final TAG_GPS_DEST_LATITUDE_REF:Ljava/lang/String; = "GPSDestLatitudeRef"

.field public static final TAG_GPS_DEST_LONGITUDE:Ljava/lang/String; = "GPSDestLongitude"

.field public static final TAG_GPS_DEST_LONGITUDE_REF:Ljava/lang/String; = "GPSDestLongitudeRef"

.field public static final TAG_GPS_DIFFERENTIAL:Ljava/lang/String; = "GPSDifferential"

.field public static final TAG_GPS_DOP:Ljava/lang/String; = "GPSDOP"

.field public static final TAG_GPS_H_POSITIONING_ERROR:Ljava/lang/String; = "GPSHPositioningError"

.field public static final TAG_GPS_IMG_DIRECTION:Ljava/lang/String; = "GPSImgDirection"

.field public static final TAG_GPS_IMG_DIRECTION_REF:Ljava/lang/String; = "GPSImgDirectionRef"

.field private static final TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_GPS_MAP_DATUM:Ljava/lang/String; = "GPSMapDatum"

.field public static final TAG_GPS_MEASURE_MODE:Ljava/lang/String; = "GPSMeasureMode"

.field public static final TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final TAG_GPS_SATELLITES:Ljava/lang/String; = "GPSSatellites"

.field public static final TAG_GPS_SPEED:Ljava/lang/String; = "GPSSpeed"

.field public static final TAG_GPS_SPEED_REF:Ljava/lang/String; = "GPSSpeedRef"

.field public static final TAG_GPS_STATUS:Ljava/lang/String; = "GPSStatus"

.field public static final TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final TAG_GPS_TRACK:Ljava/lang/String; = "GPSTrack"

.field public static final TAG_GPS_TRACK_REF:Ljava/lang/String; = "GPSTrackRef"

.field public static final TAG_GPS_VERSION_ID:Ljava/lang/String; = "GPSVersionID"

.field private static final TAG_HAS_THUMBNAIL:Ljava/lang/String; = "HasThumbnail"

.field public static final TAG_IMAGE_DESCRIPTION:Ljava/lang/String; = "ImageDescription"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_UNIQUE_ID:Ljava/lang/String; = "ImageUniqueID"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field private static final TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field public static final TAG_INTEROPERABILITY_INDEX:Ljava/lang/String; = "InteroperabilityIndex"

.field public static final TAG_ISO_SPEED:Ljava/lang/String; = "ISOSpeed"

.field public static final TAG_ISO_SPEED_LATITUDE_YYY:Ljava/lang/String; = "ISOSpeedLatitudeyyy"

.field public static final TAG_ISO_SPEED_LATITUDE_ZZZ:Ljava/lang/String; = "ISOSpeedLatitudezzz"

.field public static final TAG_ISO_SPEED_RATINGS:Ljava/lang/String; = "ISOSpeedRatings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:Ljava/lang/String; = "JPEGInterchangeFormat"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Ljava/lang/String; = "JPEGInterchangeFormatLength"

.field public static final TAG_LENS_MAKE:Ljava/lang/String; = "LensMake"

.field public static final TAG_LENS_MODEL:Ljava/lang/String; = "LensModel"

.field public static final TAG_LENS_SERIAL_NUMBER:Ljava/lang/String; = "LensSerialNumber"

.field public static final TAG_LENS_SPECIFICATION:Ljava/lang/String; = "LensSpecification"

.field public static final TAG_LIGHT_SOURCE:Ljava/lang/String; = "LightSource"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MAKER_NOTE:Ljava/lang/String; = "MakerNote"

.field public static final TAG_MAX_APERTURE_VALUE:Ljava/lang/String; = "MaxApertureValue"

.field public static final TAG_METERING_MODE:Ljava/lang/String; = "MeteringMode"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_NEW_SUBFILE_TYPE:Ljava/lang/String; = "NewSubfileType"

.field public static final TAG_OECF:Ljava/lang/String; = "OECF"

.field public static final TAG_ORF_ASPECT_FRAME:Ljava/lang/String; = "AspectFrame"

.field private static final TAG_ORF_CAMERA_SETTINGS_IFD_POINTER:Ljava/lang/String; = "CameraSettingsIFDPointer"

.field private static final TAG_ORF_IMAGE_PROCESSING_IFD_POINTER:Ljava/lang/String; = "ImageProcessingIFDPointer"

.field public static final TAG_ORF_PREVIEW_IMAGE_LENGTH:Ljava/lang/String; = "PreviewImageLength"

.field public static final TAG_ORF_PREVIEW_IMAGE_START:Ljava/lang/String; = "PreviewImageStart"

.field public static final TAG_ORF_THUMBNAIL_IMAGE:Ljava/lang/String; = "ThumbnailImage"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_PHOTOGRAPHIC_SENSITIVITY:Ljava/lang/String; = "PhotographicSensitivity"

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:Ljava/lang/String; = "PhotometricInterpretation"

.field public static final TAG_PIXEL_X_DIMENSION:Ljava/lang/String; = "PixelXDimension"

.field public static final TAG_PIXEL_Y_DIMENSION:Ljava/lang/String; = "PixelYDimension"

.field public static final TAG_PLANAR_CONFIGURATION:Ljava/lang/String; = "PlanarConfiguration"

.field public static final TAG_PRIMARY_CHROMATICITIES:Ljava/lang/String; = "PrimaryChromaticities"

.field private static final TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final TAG_RECOMMENDED_EXPOSURE_INDEX:Ljava/lang/String; = "RecommendedExposureIndex"

.field public static final TAG_REFERENCE_BLACK_WHITE:Ljava/lang/String; = "ReferenceBlackWhite"

.field public static final TAG_RELATED_SOUND_FILE:Ljava/lang/String; = "RelatedSoundFile"

.field public static final TAG_RESOLUTION_UNIT:Ljava/lang/String; = "ResolutionUnit"

.field public static final TAG_ROWS_PER_STRIP:Ljava/lang/String; = "RowsPerStrip"

.field public static final TAG_RW2_ISO:Ljava/lang/String; = "ISO"

.field public static final TAG_RW2_JPG_FROM_RAW:Ljava/lang/String; = "JpgFromRaw"

.field public static final TAG_RW2_SENSOR_BOTTOM_BORDER:Ljava/lang/String; = "SensorBottomBorder"

.field public static final TAG_RW2_SENSOR_LEFT_BORDER:Ljava/lang/String; = "SensorLeftBorder"

.field public static final TAG_RW2_SENSOR_RIGHT_BORDER:Ljava/lang/String; = "SensorRightBorder"

.field public static final TAG_RW2_SENSOR_TOP_BORDER:Ljava/lang/String; = "SensorTopBorder"

.field public static final TAG_SAMPLES_PER_PIXEL:Ljava/lang/String; = "SamplesPerPixel"

.field public static final TAG_SATURATION:Ljava/lang/String; = "Saturation"

.field public static final TAG_SCENE_CAPTURE_TYPE:Ljava/lang/String; = "SceneCaptureType"

.field public static final TAG_SCENE_TYPE:Ljava/lang/String; = "SceneType"

.field public static final TAG_SENSING_METHOD:Ljava/lang/String; = "SensingMethod"

.field public static final TAG_SENSITIVITY_TYPE:Ljava/lang/String; = "SensitivityType"

.field public static final TAG_SHARPNESS:Ljava/lang/String; = "Sharpness"

.field public static final TAG_SHUTTER_SPEED_VALUE:Ljava/lang/String; = "ShutterSpeedValue"

.field public static final TAG_SOFTWARE:Ljava/lang/String; = "Software"

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:Ljava/lang/String; = "SpatialFrequencyResponse"

.field public static final TAG_SPECTRAL_SENSITIVITY:Ljava/lang/String; = "SpectralSensitivity"

.field public static final TAG_STANDARD_OUTPUT_SENSITIVITY:Ljava/lang/String; = "StandardOutputSensitivity"

.field public static final TAG_STRIP_BYTE_COUNTS:Ljava/lang/String; = "StripByteCounts"

.field public static final TAG_STRIP_OFFSETS:Ljava/lang/String; = "StripOffsets"

.field public static final TAG_SUBFILE_TYPE:Ljava/lang/String; = "SubfileType"

.field public static final TAG_SUBJECT_AREA:Ljava/lang/String; = "SubjectArea"

.field public static final TAG_SUBJECT_DISTANCE:Ljava/lang/String; = "SubjectDistance"

.field public static final TAG_SUBJECT_DISTANCE_RANGE:Ljava/lang/String; = "SubjectDistanceRange"

.field public static final TAG_SUBJECT_LOCATION:Ljava/lang/String; = "SubjectLocation"

.field public static final TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final TAG_SUBSEC_TIME_DIGITIZED:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_ORIGINAL:Ljava/lang/String; = "SubSecTimeOriginal"

.field private static final TAG_SUB_IFD_POINTER:Ljava/lang/String; = "SubIFDPointer"

.field private static final TAG_THUMBNAIL_DATA:Ljava/lang/String; = "ThumbnailData"

.field public static final TAG_THUMBNAIL_IMAGE_LENGTH:Ljava/lang/String; = "ThumbnailImageLength"

.field public static final TAG_THUMBNAIL_IMAGE_WIDTH:Ljava/lang/String; = "ThumbnailImageWidth"

.field private static final TAG_THUMBNAIL_LENGTH:Ljava/lang/String; = "ThumbnailLength"

.field private static final TAG_THUMBNAIL_OFFSET:Ljava/lang/String; = "ThumbnailOffset"

.field public static final TAG_THUMBNAIL_ORIENTATION:Ljava/lang/String; = "ThumbnailOrientation"

.field public static final TAG_TRANSFER_FUNCTION:Ljava/lang/String; = "TransferFunction"

.field public static final TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final TAG_WHITE_POINT:Ljava/lang/String; = "WhitePoint"

.field public static final TAG_XMP:Ljava/lang/String; = "Xmp"

.field public static final TAG_X_RESOLUTION:Ljava/lang/String; = "XResolution"

.field public static final TAG_Y_CB_CR_COEFFICIENTS:Ljava/lang/String; = "YCbCrCoefficients"

.field public static final TAG_Y_CB_CR_POSITIONING:Ljava/lang/String; = "YCbCrPositioning"

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:Ljava/lang/String; = "YCbCrSubSampling"

.field public static final TAG_Y_RESOLUTION:Ljava/lang/String; = "YResolution"

.field public static final WHITEBALANCE_AUTO:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WHITEBALANCE_MANUAL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WHITE_BALANCE_AUTO:S = 0x0s

.field public static final WHITE_BALANCE_MANUAL:S = 0x1s

.field public static final Y_CB_CR_POSITIONING_CENTERED:S = 0x1s

.field public static final Y_CB_CR_POSITIONING_CO_SITED:S = 0x2s

.field private static final sExifPointerTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForReading:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/exifinterface/media/ExifInterface$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForWriting:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/exifinterface/media/ExifInterface$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static final sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field private static final sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field private static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mAttributes:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/exifinterface/media/ExifInterface$ExifAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mAttributesOffsets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExifByteOrder:Ljava/nio/ByteOrder;

.field private mExifOffset:I

.field private mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private mIsSupportedFile:Z

.field private mMimeType:I

.field private mModified:Z

.field private mOrfMakerNoteOffset:I

.field private mOrfThumbnailLength:I

.field private mOrfThumbnailOffset:I

.field private mRw2JpgFromRawOffset:I

.field private mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field private mThumbnailBytes:[B

.field private mThumbnailCompression:I

.field private mThumbnailLength:I

.field private mThumbnailOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 30

    const-string v0, "ExifInterface"

    const/4 v1, 0x3

    .line 2182
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Integer;

    const/4 v4, 0x1

    .line 2181
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const/4 v7, 0x6

    .line 2182
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    const/4 v8, 0x2

    .line 2184
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v2, v3, v8

    const/16 v10, 0x8

    .line 2182
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v1

    .line 2181
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    new-array v3, v0, [Ljava/lang/Integer;

    aput-object v9, v3, v6

    const/4 v12, 0x7

    .line 2184
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v8

    const/4 v14, 0x5

    .line 2185
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v1

    .line 2183
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    filled-new-array {v10, v10, v10}, [I

    move-result-object v3

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    filled-new-array {v0}, [I

    move-result-object v3

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_1:[I

    filled-new-array {v10}, [I

    move-result-object v3

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    new-array v3, v1, [B

    fill-array-data v3, :array_0

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->JPEG_SIGNATURE:[B

    new-array v3, v0, [B

    fill-array-data v3, :array_1

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    new-array v3, v0, [B

    fill-array-data v3, :array_2

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    new-array v3, v0, [B

    fill-array-data v3, :array_3

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    new-array v3, v7, [B

    fill-array-data v3, :array_4

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    const/16 v3, 0xa

    new-array v12, v3, [B

    fill-array-data v12, :array_5

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    const-string v16, ""

    const-string v17, "BYTE"

    const-string v18, "STRING"

    const-string v19, "USHORT"

    const-string v20, "ULONG"

    const-string v21, "URATIONAL"

    const-string v22, "SBYTE"

    const-string v23, "UNDEFINED"

    const-string v24, "SSHORT"

    const-string v25, "SLONG"

    const-string v26, "SRATIONAL"

    const-string v27, "SINGLE"

    const-string v28, "DOUBLE"

    const-string v29, "IFD"

    .line 2928
    filled-new-array/range {v16 .. v29}, [Ljava/lang/String;

    move-result-object v12

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    const/16 v12, 0xe

    new-array v3, v12, [I

    fill-array-data v3, :array_6

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    new-array v3, v10, [B

    fill-array-data v3, :array_7

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    const/16 v3, 0x2a

    new-array v3, v3, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3393
    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "NewSubfileType"

    const/16 v7, 0xfe

    invoke-direct {v12, v10, v7, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v12, v3, v6

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "SubfileType"

    const/16 v12, 0xff

    invoke-direct {v7, v10, v12, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v7, v3, v4

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ImageWidth"

    const/16 v12, 0x100

    invoke-direct {v7, v10, v12, v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v7, v3, v8

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ImageLength"

    const/16 v12, 0x101

    invoke-direct {v7, v10, v12, v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v7, v3, v1

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "BitsPerSample"

    const/16 v12, 0x102

    invoke-direct {v7, v10, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v7, v3, v0

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "Compression"

    const/16 v12, 0x103

    invoke-direct {v7, v10, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v7, v3, v14

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "PhotometricInterpretation"

    const/16 v12, 0x106

    invoke-direct {v7, v10, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x6

    aput-object v7, v3, v10

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ImageDescription"

    const/16 v12, 0x10e

    invoke-direct {v7, v10, v12, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x7

    aput-object v7, v3, v10

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "Make"

    const/16 v12, 0x10f

    invoke-direct {v7, v10, v12, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x8

    aput-object v7, v3, v10

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "Model"

    const/16 v12, 0x110

    invoke-direct {v7, v10, v12, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x9

    aput-object v7, v3, v10

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "StripOffsets"

    const/16 v10, 0x111

    invoke-direct {v7, v12, v10, v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v10, 0xa

    aput-object v7, v3, v10

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "Orientation"

    const/16 v12, 0x112

    invoke-direct {v7, v10, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xb

    aput-object v7, v3, v10

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SamplesPerPixel"

    const/16 v10, 0x115

    invoke-direct {v7, v12, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xc

    aput-object v7, v3, v10

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "RowsPerStrip"

    const/16 v10, 0x116

    invoke-direct {v7, v12, v10, v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v10, 0xd

    aput-object v7, v3, v10

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "StripByteCounts"

    const/16 v10, 0x117

    invoke-direct {v7, v12, v10, v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v10, 0xe

    aput-object v7, v3, v10

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "XResolution"

    const/16 v12, 0x11a

    invoke-direct {v7, v10, v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xf

    aput-object v7, v3, v10

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "YResolution"

    const/16 v10, 0x11b

    invoke-direct {v7, v12, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x10

    aput-object v7, v3, v10

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "PlanarConfiguration"

    const/16 v10, 0x11c

    invoke-direct {v7, v12, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x11

    aput-object v7, v3, v10

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ResolutionUnit"

    const/16 v10, 0x128

    invoke-direct {v7, v12, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x12

    aput-object v7, v3, v10

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "TransferFunction"

    const/16 v10, 0x12d

    invoke-direct {v7, v12, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x13

    aput-object v7, v3, v10

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "Software"

    const/16 v10, 0x131

    invoke-direct {v7, v12, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x14

    aput-object v7, v3, v10

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "DateTime"

    const/16 v10, 0x132

    invoke-direct {v7, v12, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x15

    aput-object v7, v3, v10

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "Artist"

    const/16 v12, 0x13b

    invoke-direct {v7, v10, v12, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x16

    aput-object v7, v3, v10

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "WhitePoint"

    const/16 v12, 0x13e

    invoke-direct {v7, v10, v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x17

    aput-object v7, v3, v10

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "PrimaryChromaticities"

    const/16 v6, 0x13f

    invoke-direct {v7, v12, v6, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v7, v3, v6

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "SubIFDPointer"

    const/16 v12, 0x14a

    invoke-direct {v6, v7, v12, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x19

    aput-object v6, v3, v7

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "JPEGInterchangeFormat"

    const/16 v12, 0x201

    invoke-direct {v6, v7, v12, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x1a

    aput-object v6, v3, v7

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "JPEGInterchangeFormatLength"

    const/16 v12, 0x202

    invoke-direct {v6, v7, v12, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x1b

    aput-object v6, v3, v7

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "YCbCrCoefficients"

    const/16 v12, 0x211

    invoke-direct {v6, v7, v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x1c

    aput-object v6, v3, v7

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "YCbCrSubSampling"

    const/16 v12, 0x212

    invoke-direct {v6, v7, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x1d

    aput-object v6, v3, v7

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "YCbCrPositioning"

    const/16 v12, 0x213

    invoke-direct {v6, v7, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x1e

    aput-object v6, v3, v7

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "ReferenceBlackWhite"

    const/16 v12, 0x214

    invoke-direct {v6, v7, v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x1f

    aput-object v6, v3, v7

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "Copyright"

    const v12, 0x8298

    invoke-direct {v6, v7, v12, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x20

    aput-object v6, v3, v7

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "ExifIFDPointer"

    const v12, 0x8769

    invoke-direct {v6, v7, v12, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x21

    aput-object v6, v3, v7

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSInfoIFDPointer"

    const v12, 0x8825

    invoke-direct {v6, v7, v12, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x22

    aput-object v6, v3, v7

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "SensorTopBorder"

    invoke-direct {v6, v7, v0, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x23

    aput-object v6, v3, v7

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "SensorLeftBorder"

    invoke-direct {v6, v7, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x24

    aput-object v6, v3, v7

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "SensorBottomBorder"

    const/4 v12, 0x6

    invoke-direct {v6, v7, v12, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x25

    aput-object v6, v3, v7

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "SensorRightBorder"

    const/4 v12, 0x7

    invoke-direct {v6, v7, v12, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x26

    aput-object v6, v3, v7

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "ISO"

    invoke-direct {v6, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x27

    aput-object v6, v3, v7

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "JpgFromRaw"

    const/16 v10, 0x2e

    invoke-direct {v6, v7, v10, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x28

    aput-object v6, v3, v7

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "Xmp"

    const/16 v10, 0x2bc

    invoke-direct {v6, v7, v10, v4}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x29

    aput-object v6, v3, v7

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->IFD_TIFF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v6, 0x3b

    new-array v6, v6, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3443
    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ExposureTime"

    const v12, 0x829a

    invoke-direct {v7, v10, v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x0

    aput-object v7, v6, v10

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "FNumber"

    const v12, 0x829d

    invoke-direct {v7, v10, v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v7, v6, v4

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ExposureProgram"

    const v12, 0x8822

    invoke-direct {v7, v10, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v7, v6, v8

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "SpectralSensitivity"

    const v12, 0x8824

    invoke-direct {v7, v10, v12, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v7, v6, v1

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "PhotographicSensitivity"

    const v12, 0x8827

    invoke-direct {v7, v10, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v7, v6, v0

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "OECF"

    const v12, 0x8828

    const/4 v4, 0x7

    invoke-direct {v7, v10, v12, v4}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v7, v6, v14

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ExifVersion"

    const v12, 0x9000

    invoke-direct {v7, v10, v12, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x6

    aput-object v7, v6, v10

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "DateTimeOriginal"

    const v12, 0x9003

    invoke-direct {v7, v10, v12, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v7, v6, v4

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "DateTimeDigitized"

    const v12, 0x9004

    invoke-direct {v7, v10, v12, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x8

    aput-object v7, v6, v10

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ComponentsConfiguration"

    const v12, 0x9101

    invoke-direct {v7, v10, v12, v4}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0x9

    aput-object v7, v6, v4

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "CompressedBitsPerPixel"

    const v10, 0x9102

    invoke-direct {v4, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0xa

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ShutterSpeedValue"

    const v12, 0x9201

    invoke-direct {v4, v10, v12, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xb

    aput-object v4, v6, v10

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ApertureValue"

    const v12, 0x9202

    invoke-direct {v4, v10, v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xc

    aput-object v4, v6, v10

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "BrightnessValue"

    const v12, 0x9203

    invoke-direct {v4, v10, v12, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xd

    aput-object v4, v6, v10

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ExposureBiasValue"

    const v12, 0x9204

    invoke-direct {v4, v10, v12, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0xe

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "MaxApertureValue"

    const v10, 0x9205

    invoke-direct {v4, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0xf

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "SubjectDistance"

    const v10, 0x9206

    invoke-direct {v4, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x10

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "MeteringMode"

    const v10, 0x9207

    invoke-direct {v4, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x11

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "LightSource"

    const v10, 0x9208

    invoke-direct {v4, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x12

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "Flash"

    const v10, 0x9209

    invoke-direct {v4, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x13

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "FocalLength"

    const v10, 0x920a

    invoke-direct {v4, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x14

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "SubjectArea"

    const v10, 0x9214

    invoke-direct {v4, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x15

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "MakerNote"

    const v10, 0x927c

    const/4 v12, 0x7

    invoke-direct {v4, v7, v10, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x16

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "UserComment"

    const v10, 0x9286

    invoke-direct {v4, v7, v10, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x17

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "SubSecTime"

    const v10, 0x9290

    invoke-direct {v4, v7, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x18

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "SubSecTimeOriginal"

    const v10, 0x9291

    invoke-direct {v4, v7, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x19

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "SubSecTimeDigitized"

    const v10, 0x9292

    invoke-direct {v4, v7, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x1a

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "FlashpixVersion"

    const v10, 0xa000

    const/4 v12, 0x7

    invoke-direct {v4, v7, v10, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x1b

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "ColorSpace"

    const v10, 0xa001

    invoke-direct {v4, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x1c

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "PixelXDimension"

    const v10, 0xa002

    invoke-direct {v4, v7, v10, v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v7, 0x1d

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "PixelYDimension"

    const v10, 0xa003

    invoke-direct {v4, v7, v10, v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v7, 0x1e

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "RelatedSoundFile"

    const v10, 0xa004

    invoke-direct {v4, v7, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x1f

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "InteroperabilityIFDPointer"

    const v10, 0xa005

    invoke-direct {v4, v7, v10, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x20

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "FlashEnergy"

    const v10, 0xa20b

    invoke-direct {v4, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x21

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "SpatialFrequencyResponse"

    const v10, 0xa20c

    const/4 v12, 0x7

    invoke-direct {v4, v7, v10, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x22

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "FocalPlaneXResolution"

    const v10, 0xa20e

    invoke-direct {v4, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x23

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "FocalPlaneYResolution"

    const v10, 0xa20f

    invoke-direct {v4, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x24

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "FocalPlaneResolutionUnit"

    const v10, 0xa210

    invoke-direct {v4, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x25

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "SubjectLocation"

    const v10, 0xa214

    invoke-direct {v4, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x26

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "ExposureIndex"

    const v10, 0xa215

    invoke-direct {v4, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x27

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "SensingMethod"

    const v10, 0xa217

    invoke-direct {v4, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x28

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "FileSource"

    const v10, 0xa300

    const/4 v12, 0x7

    invoke-direct {v4, v7, v10, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x29

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "SceneType"

    const v10, 0xa301

    invoke-direct {v4, v7, v10, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x2a

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "CFAPattern"

    const v10, 0xa302

    invoke-direct {v4, v7, v10, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x2b

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "CustomRendered"

    const v10, 0xa401

    invoke-direct {v4, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x2c

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "ExposureMode"

    const v10, 0xa402

    invoke-direct {v4, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x2d

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "WhiteBalance"

    const v10, 0xa403

    invoke-direct {v4, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x2e

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "DigitalZoomRatio"

    const v10, 0xa404

    invoke-direct {v4, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x2f

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "FocalLengthIn35mmFilm"

    const v10, 0xa405

    invoke-direct {v4, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x30

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "SceneCaptureType"

    const v10, 0xa406

    invoke-direct {v4, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x31

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GainControl"

    const v10, 0xa407

    invoke-direct {v4, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x32

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "Contrast"

    const v10, 0xa408

    invoke-direct {v4, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x33

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "Saturation"

    const v10, 0xa409

    invoke-direct {v4, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x34

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "Sharpness"

    const v10, 0xa40a

    invoke-direct {v4, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x35

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "DeviceSettingDescription"

    const v10, 0xa40b

    const/4 v12, 0x7

    invoke-direct {v4, v7, v10, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x36

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "SubjectDistanceRange"

    const v10, 0xa40c

    invoke-direct {v4, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x37

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "ImageUniqueID"

    const v10, 0xa420

    invoke-direct {v4, v7, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x38

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "DNGVersion"

    const v10, 0xc612

    const/4 v12, 0x1

    invoke-direct {v4, v7, v10, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x39

    aput-object v4, v6, v7

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "DefaultCropSize"

    const v10, 0xc620

    invoke-direct {v4, v7, v10, v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v7, 0x3a

    aput-object v4, v6, v7

    sput-object v6, Landroidx/exifinterface/media/ExifInterface;->IFD_EXIF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v4, 0x1f

    new-array v4, v4, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3506
    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "GPSVersionID"

    const/4 v0, 0x1

    const/4 v12, 0x0

    invoke-direct {v7, v10, v12, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v7, v4, v12

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "GPSLatitudeRef"

    invoke-direct {v7, v10, v0, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v7, v4, v0

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSLatitude"

    invoke-direct {v0, v7, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v8

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSLongitudeRef"

    invoke-direct {v0, v7, v1, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSLongitude"

    const/4 v10, 0x4

    invoke-direct {v0, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSAltitudeRef"

    const/4 v10, 0x1

    invoke-direct {v0, v7, v14, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v14

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSAltitude"

    const/4 v10, 0x6

    invoke-direct {v0, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSTimeStamp"

    const/4 v10, 0x7

    invoke-direct {v0, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSSatellites"

    const/16 v10, 0x8

    invoke-direct {v0, v7, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSStatus"

    const/16 v10, 0x9

    invoke-direct {v0, v7, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSMeasureMode"

    const/16 v10, 0xa

    invoke-direct {v0, v7, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSDOP"

    const/16 v10, 0xb

    invoke-direct {v0, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSSpeedRef"

    const/16 v10, 0xc

    invoke-direct {v0, v7, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSSpeed"

    const/16 v10, 0xd

    invoke-direct {v0, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSTrackRef"

    const/16 v10, 0xe

    invoke-direct {v0, v7, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSTrack"

    const/16 v10, 0xf

    invoke-direct {v0, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSImgDirectionRef"

    const/16 v10, 0x10

    invoke-direct {v0, v7, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSImgDirection"

    const/16 v10, 0x11

    invoke-direct {v0, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSMapDatum"

    const/16 v10, 0x12

    invoke-direct {v0, v7, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSDestLatitudeRef"

    const/16 v10, 0x13

    invoke-direct {v0, v7, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSDestLatitude"

    const/16 v10, 0x14

    invoke-direct {v0, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSDestLongitudeRef"

    const/16 v10, 0x15

    invoke-direct {v0, v7, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x15

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSDestLongitude"

    const/16 v10, 0x16

    invoke-direct {v0, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x16

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSDestBearingRef"

    const/16 v10, 0x17

    invoke-direct {v0, v7, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSDestBearing"

    const/16 v10, 0x18

    invoke-direct {v0, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x18

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSDestDistanceRef"

    const/16 v10, 0x19

    invoke-direct {v0, v7, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x19

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSDestDistance"

    const/16 v10, 0x1a

    invoke-direct {v0, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x1a

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSProcessingMethod"

    const/16 v10, 0x1b

    const/4 v12, 0x7

    invoke-direct {v0, v7, v10, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x1b

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSAreaInformation"

    const/16 v10, 0x1c

    invoke-direct {v0, v7, v10, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x1c

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSDateStamp"

    const/16 v10, 0x1d

    invoke-direct {v0, v7, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x1d

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSDifferential"

    const/16 v10, 0x1e

    invoke-direct {v0, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x1e

    aput-object v0, v4, v7

    sput-object v4, Landroidx/exifinterface/media/ExifInterface;->IFD_GPS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/4 v0, 0x1

    new-array v7, v0, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3540
    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "InteroperabilityIndex"

    invoke-direct {v10, v12, v0, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v0, 0x0

    aput-object v10, v7, v0

    sput-object v7, Landroidx/exifinterface/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v10, 0x25

    new-array v10, v10, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3544
    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "NewSubfileType"

    const/16 v8, 0xfe

    const/4 v1, 0x4

    invoke-direct {v12, v14, v8, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v12, v10, v0

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "SubfileType"

    const/16 v12, 0xff

    invoke-direct {v0, v8, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x1

    aput-object v0, v10, v8

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "ThumbnailImageWidth"

    const/16 v12, 0x100

    const/4 v14, 0x3

    invoke-direct {v0, v8, v12, v14, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/4 v8, 0x2

    aput-object v0, v10, v8

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "ThumbnailImageLength"

    const/16 v12, 0x101

    invoke-direct {v0, v8, v12, v14, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v0, v10, v14

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "BitsPerSample"

    const/16 v12, 0x102

    invoke-direct {v0, v8, v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "Compression"

    const/16 v8, 0x103

    invoke-direct {v0, v1, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v1, 0x5

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "PhotometricInterpretation"

    const/16 v8, 0x106

    invoke-direct {v0, v1, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v1, 0x6

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "ImageDescription"

    const/16 v8, 0x10e

    const/4 v12, 0x2

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v1, 0x7

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "Make"

    const/16 v8, 0x10f

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x8

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "Model"

    const/16 v8, 0x110

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x9

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "StripOffsets"

    const/16 v8, 0x111

    const/4 v12, 0x3

    const/4 v14, 0x4

    invoke-direct {v0, v1, v8, v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0xa

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "ThumbnailOrientation"

    const/16 v8, 0x112

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0xb

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "SamplesPerPixel"

    const/16 v8, 0x115

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0xc

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "RowsPerStrip"

    const/16 v8, 0x116

    const/4 v14, 0x4

    invoke-direct {v0, v1, v8, v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0xd

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "StripByteCounts"

    const/16 v8, 0x117

    invoke-direct {v0, v1, v8, v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0xe

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "XResolution"

    const/16 v8, 0x11a

    const/4 v12, 0x5

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0xf

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "YResolution"

    const/16 v8, 0x11b

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x10

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "PlanarConfiguration"

    const/16 v8, 0x11c

    const/4 v12, 0x3

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x11

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "ResolutionUnit"

    const/16 v8, 0x128

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x12

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "TransferFunction"

    const/16 v8, 0x12d

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x13

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "Software"

    const/16 v8, 0x131

    const/4 v12, 0x2

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x14

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "DateTime"

    const/16 v8, 0x132

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x15

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "Artist"

    const/16 v8, 0x13b

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x16

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "WhitePoint"

    const/16 v8, 0x13e

    const/4 v12, 0x5

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x17

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "PrimaryChromaticities"

    const/16 v8, 0x13f

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x18

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "SubIFDPointer"

    const/16 v8, 0x14a

    const/4 v12, 0x4

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x19

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "JPEGInterchangeFormat"

    const/16 v8, 0x201

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1a

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "JPEGInterchangeFormatLength"

    const/16 v8, 0x202

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1b

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "YCbCrCoefficients"

    const/16 v8, 0x211

    const/4 v12, 0x5

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1c

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "YCbCrSubSampling"

    const/16 v8, 0x212

    const/4 v12, 0x3

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1d

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "YCbCrPositioning"

    const/16 v8, 0x213

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1e

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "ReferenceBlackWhite"

    const/16 v8, 0x214

    const/4 v12, 0x5

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1f

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "Copyright"

    const v8, 0x8298

    const/4 v12, 0x2

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x20

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "ExifIFDPointer"

    const v8, 0x8769

    const/4 v12, 0x4

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x21

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "GPSInfoIFDPointer"

    const v8, 0x8825

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x22

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "DNGVersion"

    const v8, 0xc612

    const/4 v12, 0x1

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x23

    aput-object v0, v10, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "DefaultCropSize"

    const v8, 0xc620

    const/4 v12, 0x3

    const/4 v14, 0x4

    invoke-direct {v0, v1, v8, v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0x24

    aput-object v0, v10, v1

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3587
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "StripOffsets"

    const/16 v8, 0x111

    invoke-direct {v0, v1, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-array v0, v12, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3591
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "ThumbnailImage"

    const/16 v12, 0x100

    const/4 v14, 0x7

    invoke-direct {v1, v8, v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x0

    aput-object v1, v0, v8

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "CameraSettingsIFDPointer"

    const/16 v12, 0x2020

    const/4 v14, 0x4

    invoke-direct {v1, v8, v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x1

    aput-object v1, v0, v8

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "ImageProcessingIFDPointer"

    const/16 v12, 0x2040

    invoke-direct {v1, v8, v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x2

    aput-object v1, v0, v8

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-array v1, v8, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3596
    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "PreviewImageStart"

    move-object/from16 v17, v11

    const/16 v11, 0x101

    invoke-direct {v8, v12, v11, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v11, 0x0

    aput-object v8, v1, v11

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "PreviewImageLength"

    const/16 v12, 0x102

    invoke-direct {v8, v11, v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v11, 0x1

    aput-object v8, v1, v11

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-array v8, v11, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3600
    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "AspectFrame"

    const/16 v11, 0x1113

    move-object/from16 v21, v13

    const/4 v13, 0x3

    invoke-direct {v12, v14, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v11, 0x0

    aput-object v12, v8, v11

    sput-object v8, Landroidx/exifinterface/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/4 v12, 0x1

    new-array v14, v12, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3604
    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "ColorSpace"

    move-object/from16 v22, v2

    const/16 v2, 0x37

    invoke-direct {v12, v11, v2, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x0

    aput-object v12, v14, v2

    sput-object v14, Landroidx/exifinterface/media/ExifInterface;->PEF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v11, 0xa

    new-array v11, v11, [[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v3, v11, v2

    const/4 v2, 0x1

    aput-object v6, v11, v2

    const/4 v2, 0x2

    aput-object v4, v11, v2

    aput-object v7, v11, v13

    const/4 v2, 0x4

    aput-object v10, v11, v2

    const/4 v4, 0x5

    aput-object v3, v11, v4

    const/4 v3, 0x6

    aput-object v0, v11, v3

    const/4 v0, 0x7

    aput-object v1, v11, v0

    const/16 v0, 0x8

    aput-object v8, v11, v0

    const/16 v0, 0x9

    aput-object v14, v11, v0

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-array v0, v3, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3638
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v3, "SubIFDPointer"

    const/16 v4, 0x14a

    invoke-direct {v1, v3, v4, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v3, "ExifIFDPointer"

    const v4, 0x8769

    invoke-direct {v1, v3, v4, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v3, "GPSInfoIFDPointer"

    const v4, 0x8825

    invoke-direct {v1, v3, v4, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v3, "InteroperabilityIFDPointer"

    const v4, 0xa005

    invoke-direct {v1, v3, v4, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v3, "CameraSettingsIFDPointer"

    const/16 v4, 0x2020

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v6}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v2

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v3, "ImageProcessingIFDPointer"

    const/16 v4, 0x2040

    invoke-direct {v1, v3, v4, v6}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3648
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "JPEGInterchangeFormat"

    const/16 v3, 0x201

    invoke-direct {v0, v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3650
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "JPEGInterchangeFormatLength"

    const/16 v3, 0x202

    invoke-direct {v0, v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v0, v11

    .line 3655
    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    array-length v0, v11

    .line 3659
    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 3661
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "SubjectDistance"

    const-string v2, "GPSTimeStamp"

    const-string v3, "FNumber"

    const-string v4, "DigitalZoomRatio"

    const-string v6, "ExposureTime"

    filled-new-array {v3, v4, v6, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 3666
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    const-string v0, "US-ASCII"

    .line 3673
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    const-string v1, "Exif\u0000\u0000"

    .line 3675
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    const-string v1, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 3678
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    .line 3718
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    .line 3719
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v10, 0x0

    :goto_0
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3722
    array-length v1, v0

    if-ge v10, v1, :cond_1

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 3723
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v10

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 3724
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v10

    .line 3725
    aget-object v0, v0, v10

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 3726
    aget-object v4, v4, v10

    iget v6, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 3727
    aget-object v4, v4, v10

    iget-object v6, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/4 v2, 0x0

    .line 3732
    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 3733
    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 3734
    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    .line 3735
    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v22

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    .line 3736
    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 3737
    aget-object v1, v1, v2

    iget v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ".*[1-9].*"

    .line 3763
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    .line 3766
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_4
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_6
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_7
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3744
    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3746
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 3747
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_0

    .line 3775
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->initForFilename(Ljava/lang/String;)V

    return-void

    .line 3773
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "file cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3744
    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3746
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 3747
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 3800
    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 3806
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3809
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to duplicate file descriptor"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    .line 3816
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3817
    :try_start_2
    invoke-direct {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3819
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v1, :cond_1

    .line 3821
    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterface;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 3819
    :goto_1
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v1, :cond_2

    .line 3821
    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterface;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 3823
    :cond_2
    throw p0

    .line 3795
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "fileDescriptor cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3744
    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3746
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 3747
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 3837
    instance-of v1, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_0

    .line 3838
    move-object v1, p1

    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 3840
    :cond_0
    instance-of v1, p1, Ljava/io/FileInputStream;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/io/FileInputStream;

    .line 3841
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 3843
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 3848
    :goto_0
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V

    return-void

    .line 3834
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "inputStream cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3744
    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3746
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 3747
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_0

    .line 3785
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->initForFilename(Ljava/lang/String;)V

    return-void

    .line 3783
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "filename cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private addDefaultValuesForCompatibility()V
    .locals 6

    const-string v0, "DateTimeOriginal"

    .line 5795
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "DateTime"

    .line 5796
    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5797
    aget-object v3, v3, v1

    .line 5798
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 5797
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "ImageWidth"

    .line 5802
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5803
    aget-object v2, v2, v1

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5804
    invoke-static {v3, v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 5803
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "ImageLength"

    .line 5806
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5807
    aget-object v2, v2, v1

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5808
    invoke-static {v3, v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 5807
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "Orientation"

    .line 5810
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5811
    aget-object v1, v2, v1

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5812
    invoke-static {v3, v4, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 5811
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "LightSource"

    .line 5814
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v2, 0x1

    .line 5815
    aget-object v1, v1, v2

    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5816
    invoke-static {v3, v4, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p0

    .line 5815
    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private static closeFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 1

    .line 7058
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ExifInterface"

    const-string v0, "Error closing fd."

    .line 7061
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 7042
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7044
    throw p0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method private convertDecimalDegree(D)Ljava/lang/String;
    .locals 8

    double-to-long v0, p1

    long-to-double v2, v0

    sub-double/2addr p1, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double v4, p1, v2

    double-to-long v4, v4

    long-to-double v6, v4

    div-double/2addr v6, v2

    sub-double/2addr p1, v6

    const-wide v2, 0x40ac200000000000L    # 3600.0

    mul-double/2addr p1, v2

    const-wide v2, 0x416312d000000000L    # 1.0E7

    mul-double/2addr p1, v2

    .line 5003
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    .line 5004
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "/1,"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "/10000000"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D
    .locals 11

    const-string v0, "/"

    :try_start_0
    const-string v1, ","

    const/4 v2, -0x1

    .line 4970
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 4973
    aget-object v3, p0, v1

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 4974
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x1

    aget-object v3, v3, v6

    .line 4975
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    div-double/2addr v4, v7

    .line 4977
    aget-object v3, p0, v6

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 4978
    aget-object v7, v3, v1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    aget-object v3, v3, v6

    .line 4979
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    div-double/2addr v7, v9

    const/4 v3, 0x2

    .line 4981
    aget-object p0, p0, v3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 4982
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    aget-object p0, p0, v6

    .line 4983
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr v7, v2

    add-double/2addr v4, v7

    const-wide v2, 0x40ac200000000000L    # 3600.0

    div-double/2addr v0, v2

    add-double/2addr v4, v0

    const-string p0, "S"

    .line 4986
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "W"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "N"

    .line 4988
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "E"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 4992
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-wide v4

    :cond_3
    :goto_1
    neg-double p0, v4

    return-wide p0

    .line 4996
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static convertToLongArray(Ljava/lang/Object;)[J
    .locals 4

    .line 7088
    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    .line 7089
    check-cast p0, [I

    check-cast p0, [I

    .line 7090
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 7091
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 7092
    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 7095
    :cond_1
    instance-of v0, p0, [J

    if-eqz v0, :cond_2

    .line 7096
    check-cast p0, [J

    check-cast p0, [J

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 7076
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/2addr v2, v3

    .line 7078
    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return v2
.end method

.method private getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 2

    if-eqz p1, :cond_4

    const-string v0, "ISOSpeedRatings"

    .line 3862
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "ExifInterface"

    const-string v0, "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    .line 3864
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p1, "PhotographicSensitivity"

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3871
    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3872
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0

    .line 3860
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "tag shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getHeifAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "yes"

    const-string v1, "Heif meta: "

    .line 5409
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 5412
    :try_start_0
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$1;

    invoke-direct {v3, p0, p1}, Landroidx/exifinterface/media/ExifInterface$1;-><init>(Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    const/16 v3, 0x21

    .line 5474
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x22

    .line 5476
    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1a

    .line 5478
    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x11

    .line 5480
    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    .line 5490
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v0, 0x1d

    .line 5491
    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x1e

    .line 5493
    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f

    .line 5495
    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 5497
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    .line 5498
    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x13

    .line 5500
    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x18

    .line 5502
    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move-object v5, v0

    move-object v6, v5

    :goto_0
    const/4 v7, 0x0

    if-eqz v0, :cond_2

    iget-object v8, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5507
    aget-object v8, v8, v7

    const-string v9, "ImageWidth"

    .line 5508
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget-object v11, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v10

    .line 5507
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v5, :cond_3

    iget-object v8, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5512
    aget-object v8, v8, v7

    const-string v9, "ImageLength"

    .line 5513
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget-object v11, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v10

    .line 5512
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v8, 0x6

    if-eqz v6, :cond_7

    .line 5520
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_6

    const/16 v10, 0xb4

    if-eq v9, v10, :cond_5

    const/16 v10, 0x10e

    if-eq v9, v10, :cond_4

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    const/16 v9, 0x8

    goto :goto_1

    :cond_5
    const/4 v9, 0x3

    goto :goto_1

    :cond_6
    move v9, v8

    :goto_1
    iget-object v10, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5532
    aget-object v10, v10, v7

    const-string v11, "Orientation"

    iget-object v12, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5533
    invoke-static {v9, v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 5532
    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    .line 5537
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5538
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v8, :cond_b

    int-to-long v9, v3

    .line 5542
    invoke-virtual {p1, v9, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    new-array v3, v8, [B

    .line 5544
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v9

    if-ne v9, v8, :cond_a

    add-int/lit8 v4, v4, -0x6

    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 5549
    invoke-static {v3, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5553
    new-array v3, v4, [B

    .line 5554
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result p1

    if-ne p1, v4, :cond_8

    .line 5557
    invoke-direct {p0, v3, v7}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    goto :goto_2

    .line 5555
    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Can\'t read exif"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5550
    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid identifier"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5545
    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Can\'t read identifier"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5540
    :cond_b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid exif length"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_2
    sget-boolean p0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p0, :cond_d

    const-string p0, "ExifInterface"

    .line 5561
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", rotation "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5564
    :cond_d
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 5565
    throw p0
.end method

.method private getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sget-boolean v4, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    const-string v5, "ExifInterface"

    if-eqz v4, :cond_0

    .line 5181
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "getJpegAttributes starting with: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5185
    :cond_0
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    int-to-long v6, v2

    .line 5188
    invoke-virtual {v1, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5192
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v4

    const-string v6, "Invalid marker: "

    const/4 v7, -0x1

    if-ne v4, v7, :cond_11

    .line 5196
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v8

    const/16 v9, -0x28

    if-ne v8, v9, :cond_10

    add-int/lit8 v2, v2, 0x2

    .line 5201
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v4

    if-ne v4, v7, :cond_f

    .line 5206
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v4

    sget-boolean v6, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 5208
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Found JPEG segment indicator: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v9, v4, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v8, -0x27

    if-eq v4, v8, :cond_e

    const/16 v8, -0x26

    if-ne v4, v8, :cond_2

    goto/16 :goto_3

    .line 5217
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v8

    add-int/lit8 v9, v8, -0x2

    add-int/lit8 v2, v2, 0x4

    if-eqz v6, :cond_3

    .line 5220
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "JPEG segment: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v10, v4, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " (length: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ")"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v6, "Invalid length"

    if-ltz v9, :cond_d

    const/16 v10, -0x1f

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v4, v10, :cond_5

    const/4 v10, -0x2

    if-eq v4, v10, :cond_8

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    packed-switch v4, :pswitch_data_3

    goto/16 :goto_2

    .line 5282
    :pswitch_0
    invoke-virtual {v1, v12}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v4

    if-ne v4, v12, :cond_4

    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5285
    aget-object v4, v4, v3

    .line 5286
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    int-to-long v9, v9

    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5285
    invoke-static {v9, v10, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v9

    const-string v10, "ImageLength"

    invoke-virtual {v4, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5287
    aget-object v4, v4, v3

    .line 5288
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    int-to-long v9, v9

    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5287
    invoke-static {v9, v10, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v9

    const-string v10, "ImageWidth"

    invoke-virtual {v4, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v8, -0x7

    goto/16 :goto_2

    .line 5283
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid SOFx"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5229
    :cond_5
    new-array v4, v9, [B

    .line 5230
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    add-int v8, v2, v9

    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 5234
    invoke-static {v4, v10}, Landroidx/exifinterface/media/ExifInterface;->startsWith([B[B)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 5235
    array-length v13, v10

    add-int/2addr v2, v13

    int-to-long v13, v2

    .line 5236
    array-length v2, v10

    invoke-static {v4, v2, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 5239
    invoke-direct {v0, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    long-to-int v2, v13

    iput v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifOffset:I

    goto :goto_1

    :cond_6
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    .line 5243
    invoke-static {v4, v10}, Landroidx/exifinterface/media/ExifInterface;->startsWith([B[B)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 5245
    array-length v13, v10

    add-int/2addr v2, v13

    int-to-long v14, v2

    .line 5246
    array-length v2, v10

    invoke-static {v4, v2, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    const-string v4, "Xmp"

    .line 5249
    invoke-virtual {v0, v4}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5250
    aget-object v9, v9, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const/16 v16, 0x1

    array-length v13, v2

    move/from16 v17, v13

    move-object v13, v10

    move-wide/from16 v18, v14

    move/from16 v14, v16

    move/from16 v15, v17

    move-wide/from16 v16, v18

    move-object/from16 v18, v2

    invoke-direct/range {v13 .. v18}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    invoke-virtual {v9, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_1
    move v2, v8

    move v9, v11

    .line 5257
    :cond_8
    new-array v4, v9, [B

    .line 5258
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v8

    if-ne v8, v9, :cond_c

    const-string v8, "UserComment"

    .line 5262
    invoke-virtual {v0, v8}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_9

    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5263
    aget-object v9, v9, v12

    new-instance v10, Ljava/lang/String;

    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v10, v4, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    invoke-virtual {v9, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    move v9, v11

    :goto_2
    if-ltz v9, :cond_b

    .line 5300
    invoke-virtual {v1, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v4

    if-ne v4, v9, :cond_a

    add-int/2addr v2, v9

    goto/16 :goto_0

    .line 5301
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid JPEG segment"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5298
    :cond_b
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5259
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid exif"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5224
    :cond_d
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_3
    iget-object v0, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5306
    invoke-virtual {v1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void

    .line 5203
    :cond_f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid marker:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v2, v4, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5197
    :cond_10
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v2, v4, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5193
    :cond_11
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v2, v4, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1388

    .line 5009
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    new-array v0, v0, [B

    .line 5011
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 5012
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 5013
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->isJpegFormat([B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x4

    return p0

    .line 5015
    :cond_0
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isRafFormat([B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p0, 0x9

    return p0

    .line 5017
    :cond_1
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isHeifFormat([B)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p0, 0xc

    return p0

    .line 5019
    :cond_2
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isOrfFormat([B)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, 0x7

    return p0

    .line 5021
    :cond_3
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isRw2Format([B)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0xa

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private getOrfAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5581
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 5586
    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 5587
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_6

    .line 5590
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object p1, p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5592
    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    sget-object p1, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    .line 5596
    array-length v2, p1

    new-array v2, v2, [B

    .line 5597
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    const-wide/16 v3, 0x0

    .line 5598
    invoke-virtual {v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    .line 5599
    array-length v4, v3

    new-array v4, v4, [B

    .line 5600
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5602
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x8

    .line 5603
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_0

    .line 5604
    :cond_0
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0xc

    .line 5605
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    :cond_1
    :goto_0
    const/4 p1, 0x6

    .line 5609
    invoke-direct {p0, v1, p1}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x7

    .line 5612
    aget-object p1, p1, v1

    const-string v2, "PreviewImageStart"

    .line 5613
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5614
    aget-object v1, v2, v1

    const-string v2, "PreviewImageLength"

    .line 5615
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x5

    .line 5618
    aget-object v2, v2, v3

    const-string v4, "JPEGInterchangeFormat"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5620
    aget-object p1, p1, v3

    const-string v2, "JPEGInterchangeFormatLength"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v1, 0x8

    .line 5627
    aget-object p1, p1, v1

    const-string v1, "AspectFrame"

    .line 5628
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_6

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5630
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    check-cast p1, [I

    if-eqz p1, :cond_5

    .line 5631
    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    .line 5636
    aget v1, p1, v1

    const/4 v2, 0x0

    aget v3, p1, v2

    if-le v1, v3, :cond_6

    const/4 v4, 0x3

    aget v4, p1, v4

    aget p1, p1, v0

    if-le v4, p1, :cond_6

    sub-int/2addr v1, v3

    add-int/2addr v1, v0

    sub-int/2addr v4, p1

    add-int/2addr v4, v0

    if-ge v1, v4, :cond_4

    add-int/2addr v1, v4

    sub-int v4, v1, v4

    sub-int/2addr v1, v4

    :cond_4
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5647
    invoke-static {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5649
    invoke-static {v4, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5651
    aget-object v1, v1, v2

    const-string v3, "ImageWidth"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5652
    aget-object p0, p0, v2

    const-string p1, "ImageLength"

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 5632
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid aspect frame values. frame="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5633
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExifInterface"

    .line 5632
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method private getRafAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x54

    .line 5362
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    const/4 v0, 0x4

    new-array v1, v0, [B

    new-array v2, v0, [B

    .line 5365
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 5367
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 5368
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 5369
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 5370
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v2, 0x5

    .line 5373
    invoke-direct {p0, p1, v0, v2}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    int-to-long v0, v1

    .line 5376
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5379
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5380
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    sget-boolean v1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    const-string v2, "ExifInterface"

    if-eqz v1, :cond_0

    .line 5382
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "numberOfDirectoryEntry: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    .line 5388
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    .line 5389
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 5390
    iget v6, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    if-ne v4, v6, :cond_2

    .line 5391
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    .line 5392
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5394
    invoke-static {v0, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v3

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5396
    invoke-static {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5397
    aget-object v5, v5, v1

    const-string v6, "ImageLength"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5398
    aget-object p0, p0, v1

    const-string v1, "ImageWidth"

    invoke-virtual {p0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 5400
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Updated to length: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", width: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 5404
    :cond_2
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getRawAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5311
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x0

    .line 5314
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 5317
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x5

    .line 5318
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x4

    .line 5319
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 5322
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->validateImages(Ljava/io/InputStream;)V

    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 5327
    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 5328
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_0

    .line 5331
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object p1, p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5333
    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const-wide/16 v2, 0x6

    .line 5336
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    const/16 p1, 0x9

    .line 5339
    invoke-direct {p0, v1, p1}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5342
    aget-object p1, v1, p1

    const-string v1, "ColorSpace"

    .line 5343
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5345
    aget-object p0, p0, v0

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getRw2Attributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5663
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 5666
    aget-object v0, v0, v1

    const-string v2, "JpgFromRaw"

    .line 5667
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mRw2JpgFromRawOffset:I

    const/4 v2, 0x5

    .line 5669
    invoke-direct {p0, p1, v0, v2}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    :cond_0
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5673
    aget-object p1, p1, v1

    const-string v0, "ISO"

    .line 5674
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 5675
    aget-object v0, v0, v1

    const-string v2, "PhotographicSensitivity"

    .line 5676
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5679
    aget-object p0, p0, v1

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, ","

    .line 6612
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 6661
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v1, :cond_9

    .line 6613
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 6614
    aget-object v0, p0, v2

    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 6615
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_0

    return-object v0

    .line 6618
    :cond_0
    :goto_0
    array-length v1, p0

    if-ge v3, v1, :cond_8

    .line 6619
    aget-object v1, p0, v3

    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 6621
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 6622
    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v6

    goto :goto_2

    .line 6623
    :cond_2
    :goto_1
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6625
    :goto_2
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v6, :cond_4

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 6626
    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6627
    :cond_3
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v6

    :goto_3
    if-ne v2, v6, :cond_5

    if-ne v1, v6, :cond_5

    .line 6630
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_5
    if-ne v2, v6, :cond_6

    .line 6633
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    if-ne v1, v6, :cond_7

    .line 6637
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    return-object v0

    :cond_9
    const-string v0, "/"

    .line 6644
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v8, 0x0

    if-eqz v1, :cond_f

    .line 6645
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 6646
    array-length v0, p0

    if-ne v0, v4, :cond_e

    .line 6648
    :try_start_0
    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    .line 6649
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v2, v2

    cmp-long p0, v0, v8

    const/16 v4, 0xa

    if-ltz p0, :cond_d

    cmp-long p0, v2, v8

    if-gez p0, :cond_a

    goto :goto_6

    :cond_a
    const-wide/32 v8, 0x7fffffff

    cmp-long p0, v0, v8

    const/4 v0, 0x5

    if-gtz p0, :cond_c

    cmp-long p0, v2, v8

    if-lez p0, :cond_b

    goto :goto_5

    .line 6656
    :cond_b
    new-instance p0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 6654
    :cond_c
    :goto_5
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 6651
    :cond_d
    :goto_6
    new-instance p0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 6661
    :catch_0
    :cond_e
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 6664
    :cond_f
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 6665
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v8

    const/4 v2, 0x4

    if-ltz v1, :cond_10

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v10, 0xffff

    cmp-long v1, v3, v10

    if-gtz v1, :cond_10

    .line 6666
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 6668
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-gez v0, :cond_11

    .line 6669
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 6671
    :cond_11
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 6676
    :catch_1
    :try_start_2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 6677
    new-instance p0, Landroid/util/Pair;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    .line 6681
    :catch_2
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "JPEGInterchangeFormat"

    .line 6168
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const-string v1, "JPEGInterchangeFormatLength"

    .line 6170
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6173
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6174
    invoke-virtual {p2, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p2

    .line 6177
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->getLength()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mOrfMakerNoteOffset:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifOffset:I

    :goto_1
    add-int/2addr v0, v1

    :cond_2
    sget-boolean v1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 6186
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting thumbnail attributes with offset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExifInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-lez v0, :cond_4

    if-lez p2, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    iput v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    iput p2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v1, :cond_4

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v1, :cond_4

    .line 6196
    new-array p2, p2, [B

    int-to-long v0, v0

    .line 6197
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 6198
    invoke-virtual {p1, p2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    iput-object p2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    :cond_4
    return-void
.end method

.method private handleThumbnailFromStrips(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "StripOffsets"

    .line 6209
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const-string v1, "StripByteCounts"

    .line 6211
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6215
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v0

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6217
    invoke-virtual {p2, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroidx/exifinterface/media/ExifInterface;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object p2

    const-string v1, "ExifInterface"

    if-nez v0, :cond_0

    const-string p0, "stripOffsets should not be null."

    .line 6220
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p0, "stripByteCounts should not be null."

    .line 6224
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6229
    :cond_1
    array-length v2, p2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move v6, v3

    :goto_0
    if-ge v6, v2, :cond_2

    aget-wide v7, p2, v6

    add-long/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    long-to-int v2, v4

    .line 6234
    new-array v4, v2, [B

    move v5, v3

    move v6, v5

    move v7, v6

    .line 6238
    :goto_1
    array-length v8, v0

    if-ge v5, v8, :cond_4

    .line 6239
    aget-wide v8, v0, v5

    long-to-int v8, v8

    .line 6240
    aget-wide v9, p2, v5

    long-to-int v9, v9

    sub-int/2addr v8, v6

    if-gez v8, :cond_3

    const-string v10, "Invalid strip offset value"

    .line 6245
    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    int-to-long v10, v8

    .line 6247
    invoke-virtual {p1, v10, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    add-int/2addr v6, v8

    .line 6251
    new-array v8, v9, [B

    .line 6252
    invoke-virtual {p1, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    add-int/2addr v6, v9

    .line 6256
    invoke-static {v8, v3, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    iput-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    iput v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    :cond_5
    return-void
.end method

.method private initForFilename(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 4956
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4957
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4958
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 4962
    :goto_0
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4964
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4965
    throw p0

    .line 4950
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "filename cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isHeifFormat([B)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 5060
    :try_start_0
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5061
    :try_start_1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5063
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    int-to-long v2, v0

    const/4 v0, 0x4

    new-array v4, v0, [B

    .line 5065
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    .line 5067
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    .line 5122
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    return p0

    :cond_0
    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    const-wide/16 v7, 0x8

    if-nez v6, :cond_1

    .line 5075
    :try_start_2
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readLong()J

    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v9, 0x10

    cmp-long v6, v2, v9

    if-gez v6, :cond_2

    .line 5122
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    return p0

    :cond_1
    move-wide v9, v7

    .line 5084
    :cond_2
    :try_start_3
    array-length v6, p1

    int-to-long v11, v6

    cmp-long v6, v2, v11

    if-lez v6, :cond_3

    .line 5085
    array-length p1, p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-long v2, p1

    :cond_3
    sub-long/2addr v2, v9

    cmp-long p1, v2, v7

    if-gez p1, :cond_4

    .line 5122
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    return p0

    :cond_4
    :try_start_4
    new-array p1, v0, [B

    const-wide/16 v6, 0x0

    move v8, p0

    move v9, v8

    :goto_0
    const-wide/16 v10, 0x4

    .line 5099
    div-long v10, v2, v10

    cmp-long v10, v6, v10

    if-gez v10, :cond_a

    .line 5100
    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eq v10, v0, :cond_5

    .line 5122
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    return p0

    :cond_5
    cmp-long v10, v6, v4

    if-nez v10, :cond_6

    goto :goto_2

    :cond_6
    :try_start_5
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    .line 5107
    invoke-static {p1, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_7

    move v8, v11

    goto :goto_1

    :cond_7
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    .line 5109
    invoke-static {p1, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v10, :cond_8

    move v9, v11

    :cond_8
    :goto_1
    if-eqz v8, :cond_9

    if-eqz v9, :cond_9

    .line 5122
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    return v11

    :cond_9
    :goto_2
    add-long/2addr v6, v4

    goto :goto_0

    :cond_a
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_5

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p1

    :goto_3
    :try_start_6
    sget-boolean v1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_b

    const-string v1, "ExifInterface"

    const-string v2, "Exception parsing HEIF file type box."

    .line 5118
    invoke-static {v1, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_b
    if-eqz v0, :cond_c

    .line 5122
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    :cond_c
    :goto_4
    return p0

    :goto_5
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 5125
    :cond_d
    throw p0
.end method

.method private static isJpegFormat([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 5033
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5034
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isOrfFormat([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5138
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 5141
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5143
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5145
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p0

    .line 5146
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/16 p1, 0x4f52

    if-eq p0, p1, :cond_1

    const/16 p1, 0x5352

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isRafFormat([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "FUJIFILMCCD-RAW"

    .line 5048
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 5049
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 5050
    aget-byte v2, p1, v1

    aget-byte v3, p0, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isRw2Format([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5155
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 5158
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5160
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5162
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p0

    .line 5163
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/16 p1, 0x55

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSeekableFD(Ljava/io/FileDescriptor;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4401
    :try_start_0
    sget v0, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSupportedDataType(Ljava/util/HashMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BitsPerSample"

    .line 6270
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6272
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 6274
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    const-string v2, "PhotometricInterpretation"

    .line 6281
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_3

    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6284
    invoke-virtual {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p0

    if-ne p0, v3, :cond_1

    sget-object p1, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 6286
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x6

    if-ne p0, p1, :cond_3

    .line 6288
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v3

    :cond_3
    sget-boolean p0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p0, :cond_4

    const-string p0, "ExifInterface"

    const-string p1, "Unsupported data type value"

    .line 6297
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private isThumbnail(Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ImageLength"

    .line 6305
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const-string v1, "ImageWidth"

    .line 6306
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6309
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6310
    invoke-virtual {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p0

    const/16 p1, 0x200

    if-gt v0, p1, :cond_0

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private loadAttributes(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 4330
    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4331
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4335
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 4336
    move-object p1, v1

    check-cast p1, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result p1

    iput p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 4339
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 4351
    :pswitch_0
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getHeifAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 4359
    :pswitch_1
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRw2Attributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 4347
    :pswitch_2
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRafAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 4355
    :pswitch_3
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getOrfAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 4343
    :pswitch_4
    invoke-direct {p0, p1, v0, v0}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    goto :goto_1

    .line 4370
    :pswitch_5
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 4378
    :goto_1
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/exifinterface/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4390
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    iput-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mIsSupportedFile:Z

    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v1, "ExifInterface"

    const-string v2, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    .line 4385
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4390
    :cond_1
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    if-eqz v0, :cond_2

    .line 4393
    :goto_2
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    :cond_2
    return-void

    .line 4390
    :goto_3
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 4393
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    .line 4395
    :cond_3
    throw p1

    .line 4326
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "inputstream shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private static parseDateTime(Ljava/lang/String;Ljava/lang/String;)J
    .locals 6

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_4

    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 4894
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4896
    :cond_0
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    :try_start_0
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 4900
    invoke-virtual {v3, p0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p0

    if-nez p0, :cond_1

    return-wide v0

    .line 4902
    :cond_1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_3

    .line 4906
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    :goto_0
    const-wide/16 v4, 0x3e8

    cmp-long v4, p0, v4

    if-lez v4, :cond_2

    const-wide/16 v4, 0xa

    .line 4908
    div-long/2addr p0, v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_2
    add-long/2addr v2, p0

    :catch_0
    :cond_3
    return-wide v2

    :catch_1
    :cond_4
    :goto_1
    return-wide v0
.end method

.method private parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5843
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5845
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5848
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v0

    iget p0, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1

    const/16 p0, 0x2a

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 5850
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid start code: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5854
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result p0

    const/16 v0, 0x8

    if-lt p0, v0, :cond_4

    if-ge p0, p2, :cond_4

    add-int/lit8 p0, p0, -0x8

    if-lez p0, :cond_3

    .line 5860
    invoke-virtual {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result p1

    if-ne p1, p0, :cond_2

    goto :goto_1

    .line 5861
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Couldn\'t jump to first Ifd: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 5856
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid first Ifd offset: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private printAttributes()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4412
    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4413
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The size of tag group["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExifInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4414
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4415
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 4416
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tagName: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", tagType: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", tagValue: \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4417
    invoke-virtual {v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4416
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5823
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p0

    const/16 p1, 0x4949

    const-string v0, "ExifInterface"

    if-eq p0, p1, :cond_2

    const/16 p1, 0x4d4d

    if-ne p0, p1, :cond_1

    sget-boolean p0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "readExifSegment: Byte Align MM"

    .line 5832
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5834
    :cond_0
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p0

    .line 5836
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid byte order: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget-boolean p0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "readExifSegment: Byte Align II"

    .line 5827
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5829
    :cond_3
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object p0
.end method

.method private readExifSegment([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5783
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 5787
    array-length p1, p1

    invoke-direct {p0, v0, p1}, Landroidx/exifinterface/media/ExifInterface;->parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 5790
    invoke-direct {p0, v0, p2}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    return-void
.end method

.method private readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 5870
    iget v4, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5872
    iget v3, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    const/4 v4, 0x2

    add-int/2addr v3, v4

    iget v5, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-le v3, v5, :cond_0

    return-void

    .line 5877
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    sget-boolean v5, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    const-string v6, "ExifInterface"

    if-eqz v5, :cond_1

    .line 5879
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "numberOfDirectoryEntry: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5881
    :cond_1
    iget v5, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    mul-int/lit8 v7, v3, 0xc

    add-int/2addr v5, v7

    iget v7, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v5, v7, :cond_2d

    if-gtz v3, :cond_2

    goto/16 :goto_11

    :cond_2
    const/4 v5, 0x0

    move v7, v5

    :goto_0
    const/4 v8, 0x5

    if-ge v7, v3, :cond_28

    .line 5889
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v12

    .line 5890
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v13

    .line 5891
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v15

    .line 5893
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v14

    int-to-long v9, v14

    const-wide/16 v18, 0x4

    add-long v9, v9, v18

    sget-object v14, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 5896
    aget-object v14, v14, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    sget-boolean v14, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    const/4 v4, 0x3

    const/16 v22, 0x1

    if-eqz v14, :cond_4

    new-array v8, v8, [Ljava/lang/Object;

    .line 5900
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v8, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v8, v22

    if-eqz v11, :cond_3

    iget-object v5, v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    const/16 v21, 0x2

    aput-object v5, v8, v21

    .line 5901
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v20, 0x4

    aput-object v5, v8, v20

    const-string v5, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    .line 5899
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const/16 v21, 0x2

    :goto_2
    const/4 v5, 0x7

    if-nez v11, :cond_6

    if-eqz v14, :cond_5

    .line 5908
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v4, "Skip the tag entry since tag number is not defined: "

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    move-wide/from16 v25, v9

    move-object v9, v6

    goto/16 :goto_6

    :cond_6
    if-lez v13, :cond_d

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 5910
    array-length v8, v4

    if-lt v13, v8, :cond_7

    goto :goto_5

    .line 5914
    :cond_7
    invoke-virtual {v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;->isFormatCompatible(I)Z

    move-result v8

    if-nez v8, :cond_8

    if-eqz v14, :cond_5

    .line 5916
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Skip the tag entry since data format ("

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    aget-object v8, v8, v13

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ") is unexpected for tag: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    if-ne v13, v5, :cond_9

    .line 5922
    iget v13, v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    :cond_9
    move-object/from16 v24, v6

    int-to-long v5, v15

    .line 5924
    aget v4, v4, v13

    move-wide/from16 v25, v9

    int-to-long v8, v4

    mul-long v4, v5, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-ltz v6, :cond_b

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v4, v8

    if-lez v6, :cond_a

    goto :goto_4

    :cond_a
    move-object/from16 v9, v24

    goto :goto_8

    :cond_b
    :goto_4
    if-eqz v14, :cond_c

    .line 5927
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Skip the tag entry since the number of components is invalid: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v9, v24

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_c
    move-object/from16 v9, v24

    goto :goto_7

    :cond_d
    :goto_5
    move-wide/from16 v25, v9

    move-object v9, v6

    if-eqz v14, :cond_e

    .line 5912
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Skip the tag entry since data format is invalid: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_6
    const-wide/16 v4, 0x0

    :goto_7
    const/16 v22, 0x0

    :goto_8
    if-nez v22, :cond_f

    move-wide/from16 v10, v25

    .line 5935
    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    move/from16 v22, v3

    move/from16 v24, v7

    goto/16 :goto_10

    :cond_f
    move-object v6, v11

    move-wide/from16 v10, v25

    cmp-long v18, v4, v18

    const-string v8, "Compression"

    move/from16 v22, v3

    if-lez v18, :cond_17

    .line 5942
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    move/from16 v24, v7

    if-eqz v14, :cond_10

    .line 5944
    new-instance v7, Ljava/lang/StringBuilder;

    move/from16 v18, v13

    const-string v13, "seek to data offset: "

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_10
    move/from16 v18, v13

    :goto_9
    iget v7, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v13, 0x7

    if-ne v7, v13, :cond_13

    const-string v7, "MakerNote"

    .line 5947
    iget-object v13, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    iput v3, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfMakerNoteOffset:I

    goto :goto_a

    :cond_11
    const/4 v7, 0x6

    if-ne v2, v7, :cond_12

    const-string v13, "ThumbnailImage"

    .line 5950
    iget-object v7, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 5951
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    iput v3, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailOffset:I

    iput v15, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailLength:I

    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    const/4 v13, 0x6

    .line 5957
    invoke-static {v13, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v7

    iget v13, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailOffset:I

    move/from16 v19, v12

    int-to-long v12, v13

    move/from16 v25, v15

    iget-object v15, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5959
    invoke-static {v12, v13, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v12

    iget v13, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailLength:I

    move-wide/from16 v26, v10

    int-to-long v10, v13

    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5961
    invoke-static {v10, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v10

    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x4

    .line 5963
    aget-object v11, v11, v13

    invoke-virtual {v11, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5964
    aget-object v7, v7, v13

    const-string v11, "JPEGInterchangeFormat"

    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5966
    aget-object v7, v7, v13

    const-string v11, "JPEGInterchangeFormatLength"

    invoke-virtual {v7, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_12
    :goto_a
    move-wide/from16 v26, v10

    move/from16 v19, v12

    move/from16 v25, v15

    goto :goto_b

    :cond_13
    move-wide/from16 v26, v10

    move/from16 v19, v12

    move/from16 v25, v15

    const/16 v10, 0xa

    if-ne v7, v10, :cond_14

    const-string v7, "JpgFromRaw"

    .line 5970
    iget-object v10, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    iput v3, v0, Landroidx/exifinterface/media/ExifInterface;->mRw2JpgFromRawOffset:I

    :cond_14
    :goto_b
    int-to-long v10, v3

    add-long v12, v10, v4

    .line 5974
    iget v7, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    move-object/from16 v28, v8

    int-to-long v7, v7

    cmp-long v7, v12, v7

    if-gtz v7, :cond_15

    .line 5975
    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    move-wide/from16 v7, v26

    goto :goto_c

    :cond_15
    if-eqz v14, :cond_16

    .line 5979
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Skip the tag entry since data offset is invalid: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move-wide/from16 v7, v26

    .line 5981
    invoke-virtual {v1, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_10

    :cond_17
    move/from16 v24, v7

    move-object/from16 v28, v8

    move-wide v7, v10

    move/from16 v19, v12

    move/from16 v18, v13

    move/from16 v25, v15

    :goto_c
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 5987
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v14, :cond_18

    .line 5989
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "nextIfdType: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " byteCount: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/16 v10, 0x8

    if-eqz v3, :cond_21

    move/from16 v13, v18

    const/4 v11, 0x3

    if-eq v13, v11, :cond_1c

    const/4 v4, 0x4

    if-eq v13, v4, :cond_1b

    if-eq v13, v10, :cond_1a

    const/16 v4, 0x9

    if-eq v13, v4, :cond_19

    const/16 v4, 0xd

    if-eq v13, v4, :cond_19

    const-wide/16 v4, -0x1

    goto :goto_e

    .line 6010
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v4

    goto :goto_d

    .line 6001
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v4

    goto :goto_d

    .line 6005
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v4

    goto :goto_e

    .line 5997
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    :goto_d
    int-to-long v4, v4

    :goto_e
    if-eqz v14, :cond_1d

    .line 6019
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v6, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    filled-new-array {v10, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v10, "Offset: %d, tagName: %s"

    invoke-static {v10, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const-wide/16 v10, 0x0

    cmp-long v6, v4, v10

    if-lez v6, :cond_1f

    .line 6025
    iget v6, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    int-to-long v10, v6

    cmp-long v6, v4, v10

    if-gez v6, :cond_1f

    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    long-to-int v10, v4

    .line 6026
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 6027
    invoke-virtual {v1, v4, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 6028
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_f

    :cond_1e
    if-eqz v14, :cond_20

    .line 6031
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "Skip jump into the IFD since it has already been read: IfdType "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " (at "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_1f
    if-eqz v14, :cond_20

    .line 6037
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Skip jump into the IFD since its offset is invalid: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6041
    :cond_20
    :goto_f
    invoke-virtual {v1, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_10

    :cond_21
    move/from16 v13, v18

    .line 6045
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v3

    long-to-int v4, v4

    .line 6046
    new-array v4, v4, [B

    .line 6047
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6048
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    int-to-long v11, v3

    move-object v14, v5

    move/from16 v3, v25

    move v15, v13

    move/from16 v16, v3

    move-wide/from16 v17, v11

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v19}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6050
    aget-object v3, v3, v2

    iget-object v4, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "DNGVersion"

    .line 6055
    iget-object v4, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v3, 0x3

    iput v3, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    :cond_22
    const-string v3, "Make"

    .line 6062
    iget-object v4, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, "Model"

    iget-object v4, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    :cond_23
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6063
    invoke-virtual {v5, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PENTAX"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    :cond_24
    iget-object v3, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v4, v28

    .line 6064
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6065
    invoke-virtual {v5, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    const v4, 0xffff

    if-ne v3, v4, :cond_26

    :cond_25
    iput v10, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 6070
    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, v7

    if-eqz v3, :cond_27

    .line 6071
    invoke-virtual {v1, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    :cond_27
    :goto_10
    add-int/lit8 v7, v24, 0x1

    int-to-short v7, v7

    move-object v6, v9

    move/from16 v4, v21

    move/from16 v3, v22

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_28
    move-object v9, v6

    .line 6075
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v2, v3

    iget v3, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v2, v3, :cond_2d

    .line 6076
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_29

    .line 6078
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "nextIfdOffset: %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    int-to-long v4, v2

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2c

    .line 6083
    iget v6, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-ge v2, v6, :cond_2c

    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 6084
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 6085
    invoke-virtual {v1, v4, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x4

    .line 6086
    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 6088
    invoke-direct {v0, v1, v3}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_11

    :cond_2a
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6089
    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 6090
    invoke-direct {v0, v1, v8}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_11

    :cond_2b
    if-eqz v3, :cond_2d

    .line 6094
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_2c
    if-eqz v3, :cond_2d

    .line 6100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stop reading file since a wrong offset may cause an infinite loop: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_11
    return-void
.end method

.method private removeAttribute(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 4314
    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4315
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private retrieveJpegImageSize(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6116
    aget-object v0, v0, p2

    const-string v1, "ImageLength"

    .line 6117
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6118
    aget-object v1, v1, p2

    const-string v2, "ImageWidth"

    .line 6119
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6123
    aget-object v0, v0, p2

    const-string v1, "JPEGInterchangeFormat"

    .line 6124
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6127
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 6130
    invoke-direct {p0, p1, v0, p2}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    :cond_1
    return-void
.end method

.method private saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5688
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "saveJpegAttributes starting with (inputStream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5691
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 5692
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 5694
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result p2

    const-string v1, "Invalid marker"

    const/4 v2, -0x1

    if-ne p2, v2, :cond_c

    .line 5697
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5698
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result p2

    const/16 v3, -0x28

    if-ne p2, v3, :cond_b

    .line 5701
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5704
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    const/16 p2, -0x1f

    .line 5705
    invoke-virtual {p1, p2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    const/4 v3, 0x6

    .line 5706
    invoke-direct {p0, p1, v3}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;I)I

    const/16 p0, 0x1000

    new-array v4, p0, [B

    .line 5711
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    if-ne v5, v2, :cond_a

    .line 5715
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    const/16 v6, -0x27

    if-eq v5, v6, :cond_9

    const/16 v6, -0x26

    if-eq v5, v6, :cond_9

    const-string v6, "Invalid length"

    const/4 v7, 0x0

    if-eq v5, p2, :cond_3

    .line 5761
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5762
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5763
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    .line 5764
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_2

    :goto_1
    if-lez v5, :cond_1

    .line 5771
    invoke-static {v5, p0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 5770
    invoke-virtual {v0, v4, v7, v6}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_1

    .line 5772
    invoke-virtual {p1, v4, v7, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v5, v6

    goto :goto_1

    .line 5767
    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5718
    :cond_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    add-int/lit8 v9, v8, -0x2

    if-ltz v9, :cond_8

    new-array v10, v3, [B

    if-lt v9, v3, :cond_6

    .line 5724
    invoke-virtual {v0, v10}, Ljava/io/DataInputStream;->read([B)I

    move-result v11

    if-ne v11, v3, :cond_5

    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 5727
    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_6

    add-int/lit8 v8, v8, -0x8

    .line 5729
    invoke-virtual {v0, v8}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v5

    if-ne v5, v8, :cond_4

    goto :goto_0

    .line 5730
    :cond_4
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5725
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid exif"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5736
    :cond_6
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5737
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5738
    invoke-virtual {p1, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    if-lt v9, v3, :cond_7

    add-int/lit8 v9, v8, -0x8

    .line 5741
    invoke-virtual {p1, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    :cond_7
    :goto_2
    if-lez v9, :cond_1

    .line 5745
    invoke-static {v9, p0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 5744
    invoke-virtual {v0, v4, v7, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v5

    if-ltz v5, :cond_1

    .line 5746
    invoke-virtual {p1, v4, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v9, v5

    goto :goto_2

    .line 5720
    :cond_8
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5753
    :cond_9
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5754
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5756
    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    return-void

    .line 5713
    :cond_a
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5699
    :cond_b
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5695
    :cond_c
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x4

    .line 6137
    aget-object v0, v0, v1

    const-string v1, "Compression"

    .line 6140
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const/4 v2, 0x6

    if-eqz v1, :cond_2

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6142
    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iput v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 6145
    :cond_0
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    .line 6150
    :cond_1
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isSupportedDataType(Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6151
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromStrips(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_2
    iput v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    .line 6159
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static startsWith([B[B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 7105
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    .line 7108
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 7109
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method private swapBasedOnImageSize(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6997
    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "ExifInterface"

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 7004
    aget-object v0, v0, p1

    const-string v2, "ImageLength"

    .line 7005
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 7006
    aget-object v3, v3, p1

    const-string v4, "ImageWidth"

    .line 7007
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 7008
    aget-object v5, v5, p2

    .line 7009
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 7010
    aget-object v5, v5, p2

    .line 7011
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_4

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_3

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7022
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7023
    invoke-virtual {v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7024
    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7025
    invoke-virtual {v4, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ge v0, v2, :cond_5

    if-ge v1, v3, :cond_5

    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 7029
    aget-object v0, p0, p1

    .line 7030
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 7031
    aput-object v0, p0, p2

    goto :goto_2

    :cond_3
    :goto_0
    sget-boolean p0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "Second image does not contain valid size information"

    .line 7019
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    :goto_1
    sget-boolean p0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "First image does not contain valid size information"

    .line 7015
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void

    :cond_6
    :goto_3
    sget-boolean p0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p0, :cond_7

    const-string p0, "Cannot perform swap since only one image data exists"

    .line 6999
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private updateAttribute(Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 4299
    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4300
    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4301
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6365
    aget-object v0, v0, p2

    const-string v1, "DefaultCropSize"

    .line 6366
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6368
    aget-object v1, v1, p2

    const-string v2, "SensorTopBorder"

    .line 6369
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6370
    aget-object v2, v2, p2

    const-string v3, "SensorLeftBorder"

    .line 6371
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6372
    aget-object v3, v3, p2

    const-string v4, "SensorBottomBorder"

    .line 6373
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6374
    aget-object v4, v4, p2

    const-string v5, "SensorRightBorder"

    .line 6375
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const-string v5, "ImageLength"

    const-string v6, "ImageWidth"

    if-eqz v0, :cond_5

    .line 6380
    iget p1, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v7, "Invalid crop size values. cropSize="

    const-string v8, "ExifInterface"

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6382
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    check-cast p1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    if-eqz p1, :cond_1

    .line 6383
    array-length v0, p1

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 6388
    :cond_0
    aget-object v0, p1, v3

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6389
    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 6390
    aget-object p1, p1, v2

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6391
    invoke-static {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    goto :goto_1

    .line 6384
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6385
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6384
    invoke-static {v8, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6394
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    check-cast p1, [I

    if-eqz p1, :cond_4

    .line 6395
    array-length v0, p1

    if-eq v0, v4, :cond_3

    goto :goto_2

    .line 6400
    :cond_3
    aget v0, p1, v3

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6401
    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 6402
    aget p1, p1, v2

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6403
    invoke-static {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    :goto_1
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6405
    aget-object v1, v1, p2

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6406
    aget-object p0, p0, p2

    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 6396
    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6397
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6396
    invoke-static {v8, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6410
    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6411
    invoke-virtual {v3, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6412
    invoke-virtual {v4, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6413
    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    if-le v0, p1, :cond_7

    if-le v1, v2, :cond_7

    sub-int/2addr v0, p1

    sub-int/2addr v1, v2

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6418
    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6420
    invoke-static {v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6421
    aget-object v1, v1, p2

    invoke-virtual {v1, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6422
    aget-object p0, p0, p2

    invoke-virtual {p0, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 6425
    :cond_6
    invoke-direct {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface;->retrieveJpegImageSize(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    :cond_7
    :goto_3
    return-void
.end method

.method private validateImages(Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x5

    .line 6321
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    const/4 v1, 0x4

    .line 6322
    invoke-direct {p0, p1, v1}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 6323
    invoke-direct {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x1

    .line 6328
    aget-object v2, v2, v3

    const-string v4, "PixelXDimension"

    .line 6329
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6330
    aget-object v3, v4, v3

    const-string v4, "PixelYDimension"

    .line 6331
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6333
    aget-object v4, v4, p1

    const-string v5, "ImageWidth"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6334
    aget-object p1, v2, p1

    const-string v2, "ImageLength"

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6339
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6340
    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6341
    aget-object v2, p1, v0

    aput-object v2, p1, v1

    .line 6342
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, p1, v0

    :cond_1
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6347
    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "ExifInterface"

    const-string p1, "No image meets the size requirements of a thumbnail image."

    .line 6348
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;I)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 6433
    array-length v3, v2

    new-array v3, v3, [I

    .line 6434
    array-length v2, v2

    new-array v2, v2, [I

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 6437
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_0

    aget-object v8, v4, v7

    .line 6438
    iget-object v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v8}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 6441
    iget-object v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 6442
    iget-object v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    move v4, v6

    :goto_1
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 6445
    array-length v5, v5

    if-ge v4, v5, :cond_3

    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6446
    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v7, v5

    move v8, v6

    :goto_2
    if-ge v8, v7, :cond_2

    aget-object v9, v5, v8

    .line 6447
    check-cast v9, Ljava/util/Map$Entry;

    .line 6448
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_1

    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6449
    aget-object v10, v10, v4

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v5, 0x1

    .line 6456
    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    const-wide/16 v7, 0x0

    if-nez v4, :cond_4

    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6457
    aget-object v4, v4, v6

    sget-object v9, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v9, v9, v5

    iget-object v9, v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6458
    invoke-static {v7, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v10

    .line 6457
    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v9, 0x2

    .line 6460
    aget-object v4, v4, v9

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6461
    aget-object v4, v4, v6

    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v10, v10, v9

    iget-object v10, v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6462
    invoke-static {v7, v8, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v11

    .line 6461
    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v10, 0x3

    .line 6464
    aget-object v4, v4, v10

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6465
    aget-object v4, v4, v5

    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v11, v11, v10

    iget-object v11, v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6466
    invoke-static {v7, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v12

    .line 6465
    invoke-virtual {v4, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-boolean v4, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const/4 v11, 0x4

    if-eqz v4, :cond_7

    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6469
    aget-object v4, v4, v11

    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    iget-object v12, v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6470
    invoke-static {v7, v8, v13}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 6469
    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6471
    aget-object v4, v4, v11

    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    iget-object v12, v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget v13, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    int-to-long v13, v13

    iget-object v15, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6472
    invoke-static {v13, v14, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 6471
    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move v4, v6

    :goto_3
    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 6477
    array-length v12, v12

    if-ge v4, v12, :cond_a

    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6479
    aget-object v12, v12, v4

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v13, v6

    :cond_8
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 6480
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6481
    invoke-virtual {v14}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->size()I

    move-result v14

    if-le v14, v11, :cond_8

    add-int/2addr v13, v14

    goto :goto_4

    .line 6486
    :cond_9
    aget v12, v2, v4

    add-int/2addr v12, v13

    aput v12, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    const/16 v4, 0x8

    move v13, v4

    move v12, v6

    :goto_5
    sget-object v14, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 6491
    array-length v14, v14

    if-ge v12, v14, :cond_c

    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6492
    aget-object v14, v14, v12

    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b

    .line 6493
    aput v13, v3, v12

    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6494
    aget-object v14, v14, v12

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    mul-int/lit8 v14, v14, 0xc

    add-int/lit8 v14, v14, 0x6

    aget v15, v2, v12

    add-int/2addr v14, v15

    add-int/2addr v13, v14

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_c
    iget-boolean v12, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v12, :cond_d

    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6499
    aget-object v12, v12, v11

    sget-object v14, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    iget-object v14, v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    int-to-long v7, v13

    iget-object v15, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6500
    invoke-static {v7, v8, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 6499
    invoke-virtual {v12, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int v7, p2, v13

    iput v7, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    iget v7, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    add-int/2addr v13, v7

    :cond_d
    add-int/2addr v13, v4

    sget-boolean v4, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v4, :cond_e

    .line 6508
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "totalSize length: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "ExifInterface"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    :goto_6
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 6509
    array-length v8, v8

    if-ge v4, v8, :cond_e

    .line 6511
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget v12, v3, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, v4

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aget v15, v2, v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v8, v12, v14, v15}, [Ljava/lang/Object;

    move-result-object v8

    const-string v12, "index: %d, offsets: %d, tag count: %d, data sizes: %d"

    .line 6510
    invoke-static {v12, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_e
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6516
    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6517
    aget-object v2, v2, v6

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v4, v4, v5

    iget-object v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v7, v3, v5

    int-to-long v7, v7

    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6518
    invoke-static {v7, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 6517
    invoke-virtual {v2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6520
    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6521
    aget-object v2, v2, v6

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v4, v4, v9

    iget-object v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v7, v3, v9

    int-to-long v7, v7

    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6522
    invoke-static {v7, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 6521
    invoke-virtual {v2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6524
    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6525
    aget-object v2, v2, v5

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v4, v4, v10

    iget-object v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v5, v3, v10

    int-to-long v7, v5

    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v7, v8, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6530
    :cond_11
    invoke-virtual {v1, v13}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 6531
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6532
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v4, :cond_12

    const/16 v2, 0x4d4d

    goto :goto_7

    :cond_12
    const/16 v2, 0x4949

    :goto_7
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6534
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const/16 v2, 0x2a

    .line 6535
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    const-wide/16 v4, 0x8

    .line 6536
    invoke-virtual {v1, v4, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    move v2, v6

    :goto_8
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 6539
    array-length v4, v4

    if-ge v2, v4, :cond_1a

    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6540
    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6543
    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 6546
    aget v4, v3, v2

    add-int/2addr v4, v9

    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0xc

    add-int/2addr v4, v5

    add-int/2addr v4, v11

    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6547
    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 6549
    aget-object v8, v8, v2

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 6550
    iget v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 6551
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6552
    invoke-virtual {v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->size()I

    move-result v10

    .line 6554
    invoke-virtual {v1, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 6555
    iget v8, v7, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {v1, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 6556
    iget v8, v7, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-virtual {v1, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    if-le v10, v11, :cond_14

    int-to-long v7, v4

    .line 6558
    invoke-virtual {v1, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    add-int/2addr v4, v10

    goto :goto_9

    .line 6561
    :cond_14
    iget-object v7, v7, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-virtual {v1, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    if-ge v10, v11, :cond_13

    :goto_a
    if-ge v10, v11, :cond_13

    .line 6565
    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_15
    if-nez v2, :cond_16

    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6574
    aget-object v4, v4, v11

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_16

    .line 6575
    aget v4, v3, v11

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    const-wide/16 v4, 0x0

    goto :goto_b

    :cond_16
    const-wide/16 v4, 0x0

    .line 6577
    invoke-virtual {v1, v4, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    :goto_b
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6581
    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_17
    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 6582
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6584
    iget-object v10, v8, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v10, v10

    if-le v10, v11, :cond_17

    .line 6585
    iget-object v10, v8, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    iget-object v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v8, v8

    invoke-virtual {v1, v10, v6, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    goto :goto_c

    :cond_18
    const-wide/16 v4, 0x0

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_1a
    iget-boolean v2, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v2, :cond_1b

    .line 6593
    invoke-virtual/range {p0 .. p0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6597
    :cond_1b
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return v13
.end method


# virtual methods
.method public flipHorizontally()V
    .locals 3

    const-string v0, "Orientation"

    const/4 v1, 0x1

    .line 4206
    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x7

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x8

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x2

    .line 4238
    :goto_0
    :pswitch_7
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public flipVertically()V
    .locals 3

    const-string v0, "Orientation"

    const/4 v1, 0x1

    .line 4167
    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x7

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x8

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x4

    .line 4199
    :goto_0
    :pswitch_7
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAltitude(D)D
    .locals 6

    const-string v0, "GPSAltitude"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 4821
    invoke-virtual {p0, v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    const-string v2, "GPSAltitudeRef"

    const/4 v3, -0x1

    .line 4822
    invoke-virtual {p0, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    const-wide/16 v4, 0x0

    cmpl-double v2, v0, v4

    if-ltz v2, :cond_1

    if-ltz p0, :cond_1

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    int-to-double p0, v3

    mul-double/2addr v0, p0

    return-wide v0

    :cond_1
    return-wide p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_6

    .line 3891
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 3893
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3894
    invoke-virtual {v0, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v2, "GPSTimeStamp"

    .line 3896
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3898
    iget p1, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    const/4 v2, 0x5

    const-string v3, "ExifInterface"

    if-eq p1, v2, :cond_1

    iget p1, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    .line 3900
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "GPS Timestamp format is not rational. format="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3903
    invoke-virtual {v0, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    check-cast p0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    if-eqz p0, :cond_3

    .line 3904
    array-length p1, p0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 3908
    aget-object v0, p0, p1

    iget-wide v0, v0, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-float v0, v0

    aget-object p1, p0, p1

    iget-wide v1, p1, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-float p1, v1

    div-float/2addr v0, p1

    float-to-int p1, v0

    .line 3909
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    aget-object v1, p0, v0

    iget-wide v1, v1, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-float v1, v1

    aget-object v0, p0, v0

    iget-wide v2, v0, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-float v0, v2

    div-float/2addr v1, v0

    float-to-int v0, v1

    .line 3910
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v2, p0, v1

    iget-wide v2, v2, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-float v2, v2

    aget-object p0, p0, v1

    iget-wide v3, p0, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-float p0, v3

    div-float/2addr v2, p0

    float-to-int p0, v2

    .line 3911
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%02d:%02d:%02d"

    .line 3908
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3905
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid GPS Timestamp array. array="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    :try_start_0
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3914
    invoke-virtual {v0, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_5
    return-object v1

    .line 3889
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "tag shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAttributeBytes(Ljava/lang/String;)[B
    .locals 0

    if-eqz p1, :cond_1

    .line 4715
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4717
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 4713
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "tag shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAttributeDouble(Ljava/lang/String;D)D
    .locals 0

    if-eqz p1, :cond_1

    .line 3958
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    if-nez p1, :cond_0

    return-wide p2

    :cond_0
    :try_start_0
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3964
    invoke-virtual {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p2

    .line 3956
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "tag shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 0

    if-eqz p1, :cond_1

    .line 3934
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    :try_start_0
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3940
    invoke-virtual {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2

    .line 3932
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "tag shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAttributeRange(Ljava/lang/String;)[J
    .locals 3

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mModified:Z

    if-nez v0, :cond_1

    .line 4695
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [J

    const/4 v0, 0x0

    .line 4697
    iget-wide v1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytesOffset:J

    aput-wide v1, p1, v0

    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length p0, p0

    int-to-long v0, p0

    const/4 p0, 0x1

    aput-wide v0, p1, p0

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 4691
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The underlying file has been modified since being parsed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4688
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "tag shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDateTime()J
    .locals 2

    const-string v0, "DateTime"

    .line 4862
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubSecTime"

    .line 4863
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4862
    invoke-static {v0, p0}, Landroidx/exifinterface/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTimeDigitized()J
    .locals 2

    const-string v0, "DateTimeDigitized"

    .line 4875
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubSecTimeDigitized"

    .line 4876
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4875
    invoke-static {v0, p0}, Landroidx/exifinterface/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTimeOriginal()J
    .locals 2

    const-string v0, "DateTimeOriginal"

    .line 4888
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubSecTimeOriginal"

    .line 4889
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4888
    invoke-static {v0, p0}, Landroidx/exifinterface/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGpsDateTime()J
    .locals 5

    const-string v0, "GPSDateStamp"

    .line 4928
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSTimeStamp"

    .line 4929
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 4931
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4932
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 4936
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4938
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/text/ParsePosition;-><init>(I)V

    :try_start_0
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 4940
    invoke-virtual {v3, p0, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p0

    if-nez p0, :cond_1

    return-wide v1

    .line 4942
    :cond_1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_2
    :goto_0
    return-wide v1
.end method

.method public getLatLong([F)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4731
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getLatLong()[D

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 4736
    :cond_0
    aget-wide v1, p0, v0

    double-to-float v1, v1

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 4737
    aget-wide v1, p0, v0

    double-to-float p0, v1

    aput p0, p1, v0

    return v0
.end method

.method public getLatLong()[D
    .locals 9

    const-string v0, "GPSLatitude"

    .line 4750
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSLatitudeRef"

    .line 4751
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPSLongitude"

    .line 4752
    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GPSLongitudeRef"

    .line 4753
    invoke-virtual {p0, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    .line 4757
    :try_start_0
    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v3

    .line 4758
    invoke-static {v2, p0}, Landroidx/exifinterface/media/ExifInterface;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v5

    const/4 v7, 0x2

    new-array v7, v7, [D

    const/4 v8, 0x0

    aput-wide v3, v7, v8

    const/4 v3, 0x1

    aput-wide v5, v7, v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 4761
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Latitude/longitude values are not parsable. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "latValue=%s, latRef=%s, lngValue=%s, lngRef=%s"

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 4762
    invoke-static {v4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExifInterface"

    .line 4761
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRotationDegrees()I
    .locals 2

    const-string v0, "Orientation"

    const/4 v1, 0x1

    .line 4271
    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x5a

    return p0

    :pswitch_1
    const/16 p0, 0x10e

    return p0

    :pswitch_2
    const/16 p0, 0xb4

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getThumbnail()[B
    .locals 2

    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 4539
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 8

    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    if-nez v0, :cond_1

    .line 4610
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    :cond_1
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 4616
    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    new-array v2, v0, [I

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    mul-int/lit8 v5, v3, 0x3

    .line 4619
    aget-byte v6, v4, v5

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, v4, v7

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x2

    aget-byte v4, v4, v5

    add-int/2addr v6, v4

    aput v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x4

    .line 4623
    aget-object v0, v0, v3

    const-string v4, "ImageLength"

    .line 4624
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4625
    aget-object v3, v4, v3

    const-string v4, "ImageWidth"

    .line 4626
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4628
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4629
    invoke-virtual {v3, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p0

    .line 4630
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1

    :cond_5
    :goto_1
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    iget p0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    .line 4614
    invoke-static {v0, v3, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailBytes()[B
    .locals 9

    const-string v0, "ExifInterface"

    iget-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_3

    .line 4563
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4564
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    :goto_0
    move-object v3, v2

    goto :goto_1

    :cond_2
    const-string p0, "Cannot read thumbnail from inputstream without mark/reset support"

    .line 4566
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4593
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception p0

    move-object v3, v2

    goto/16 :goto_3

    :catch_0
    move-exception p0

    move-object v3, v2

    goto/16 :goto_2

    :cond_3
    :try_start_2
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 4570
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_5

    .line 4572
    invoke-static {v1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4573
    :try_start_3
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 4574
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v8, v3

    move-object v3, v1

    move-object v1, v8

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v3, v1

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v3, v1

    move-object v1, v2

    goto :goto_2

    :cond_5
    move-object v1, v2

    move-object v3, v1

    :goto_1
    if-eqz v1, :cond_9

    :try_start_4
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v4, v4

    .line 4580
    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    iget v6, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    int-to-long v6, v6

    cmp-long v4, v4, v6

    const-string v5, "Corrupted image"

    if-nez v4, :cond_8

    :try_start_5
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    .line 4583
    new-array v4, v4, [B

    .line 4584
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    iget v7, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    if-ne v6, v7, :cond_7

    iput-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 4593
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v3, :cond_6

    .line 4595
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterface;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_6
    return-object v4

    .line 4585
    :cond_7
    :try_start_6
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4581
    :cond_8
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    move-exception p0

    goto :goto_2

    .line 4578
    :cond_9
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_2
    move-exception p0

    move-object v3, v2

    goto :goto_4

    :catch_3
    move-exception p0

    move-object v1, v2

    move-object v3, v1

    :goto_2
    :try_start_7
    const-string v4, "Encountered exception while getting thumbnail"

    .line 4591
    invoke-static {v0, v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 4593
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v3, :cond_a

    .line 4595
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterface;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_a
    return-object v2

    :catchall_3
    move-exception p0

    :goto_3
    move-object v2, v1

    .line 4593
    :goto_4
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v3, :cond_b

    .line 4595
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterface;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 4597
    :cond_b
    throw p0
.end method

.method public getThumbnailRange()[J
    .locals 4

    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mModified:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [J

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v1, v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iget p0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    int-to-long v1, p0

    const/4 p0, 0x1

    aput-wide v1, v0, p0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 4664
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The underlying file has been modified since being parsed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 0

    .line 4527
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasThumbnail()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    return p0
.end method

.method public isFlipped()Z
    .locals 2

    const-string v0, "Orientation"

    const/4 v1, 0x1

    .line 4247
    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method public isThumbnailCompressed()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget p0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public resetOrientation()V
    .locals 2

    const/4 v0, 0x1

    .line 4129
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Orientation"

    invoke-virtual {p0, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public rotate(I)V
    .locals 6

    .line 4139
    rem-int/lit8 v0, p1, 0x5a

    if-nez v0, :cond_4

    const/4 v0, 0x1

    const-string v1, "Orientation"

    .line 4143
    invoke-virtual {p0, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    .line 4146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz v3, :cond_1

    .line 4147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4148
    div-int/lit8 p1, p1, 0x5a

    add-int/2addr v0, p1

    rem-int/2addr v0, v5

    if-gez v0, :cond_0

    move v4, v5

    :cond_0
    add-int/2addr v0, v4

    .line 4150
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_1
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    .line 4151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4153
    div-int/lit8 p1, p1, 0x5a

    add-int/2addr v0, p1

    rem-int/2addr v0, v5

    if-gez v0, :cond_2

    move v4, v5

    :cond_2
    add-int/2addr v0, v4

    .line 4155
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4160
    :cond_3
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4140
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "degree should be a multiple of 90"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveAttributes()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Couldn\'t rename to "

    const-string v1, "Couldn\'t restore original file: "

    iget-boolean v2, p0, Landroidx/exifinterface/media/ExifInterface;->mIsSupportedFile:Z

    if-eqz v2, :cond_9

    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4441
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "ExifInterface does not support saving attributes for the current input."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/exifinterface/media/ExifInterface;->mModified:Z

    .line 4450
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnail()[B

    move-result-object v2

    iput-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 4456
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    :try_start_0
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_4

    .line 4462
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4463
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v0, v3

    move-object v7, v0

    goto :goto_4

    .line 4464
    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_5

    const-string v0, "temp"

    const-string v4, "jpg"

    .line 4467
    invoke-static {v0, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 4468
    sget v7, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, v5, v6, v7}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 4469
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 4470
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4471
    :try_start_2
    invoke-static {v0, v7}, Landroidx/exifinterface/media/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v7, v3

    :goto_2
    move-object v3, v0

    goto/16 :goto_b

    :catch_1
    move-exception p0

    move-object v7, v3

    :goto_3
    move-object v3, v0

    goto/16 :goto_a

    :cond_5
    move-object v0, v3

    move-object v4, v0

    move-object v7, v4

    .line 4476
    :goto_4
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4477
    invoke-static {v7}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4486
    :try_start_3
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 4488
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v7, :cond_7

    .line 4490
    sget v8, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v7, v5, v6, v8}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 4491
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_5

    :cond_7
    move-object v5, v3

    .line 4493
    :goto_5
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 4494
    :try_start_4
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 4495
    :try_start_5
    invoke-direct {p0, v6, v0}, Landroidx/exifinterface/media/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 4505
    invoke-static {v6}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4506
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4507
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    iput-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    return-void

    :catchall_2
    move-exception p0

    move-object v5, v0

    goto :goto_6

    :catch_2
    move-exception v3

    move-object v5, v0

    move-object v0, v3

    goto :goto_7

    :catchall_3
    move-exception p0

    move-object v5, v3

    :goto_6
    move-object v3, v6

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v5, v3

    :goto_7
    move-object v3, v6

    goto :goto_8

    :catchall_4
    move-exception p0

    move-object v5, v3

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v5, v3

    :goto_8
    :try_start_6
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz p0, :cond_8

    .line 4498
    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_8

    .line 4499
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4500
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4503
    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Failed to save new file"

    invoke-direct {p0, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    move-exception p0

    .line 4505
    :goto_9
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4506
    invoke-static {v5}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4507
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 4508
    throw p0

    :catchall_6
    move-exception p0

    move-object v7, v3

    goto :goto_b

    :catch_5
    move-exception p0

    move-object v7, v3

    .line 4474
    :goto_a
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to copy original file to temp file"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception p0

    .line 4476
    :goto_b
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4477
    invoke-static {v7}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4478
    throw p0

    .line 4438
    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string v0, "ExifInterface only supports saving attributes on JPEG formats."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAltitude(D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    .line 4836
    :goto_0
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$Rational;

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-direct {v1, p1, p2}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(D)V

    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$Rational;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GPSAltitude"

    invoke-virtual {p0, p2, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GPSAltitudeRef"

    .line 4837
    invoke-virtual {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_18

    const-string v3, "ISOSpeedRatings"

    .line 3980
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "ExifInterface"

    if-eqz v3, :cond_1

    sget-boolean v1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "setAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    .line 3982
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "PhotographicSensitivity"

    :cond_1
    const/4 v3, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 3988
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "GPSTimeStamp"

    .line 3989
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, " : "

    const-string v8, "Invalid value for "

    if-eqz v6, :cond_3

    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    .line 3990
    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 3991
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_2

    .line 3992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3995
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/1,"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v7, 0x3

    .line 3996
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/1"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3999
    :cond_3
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 4000
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$Rational;

    invoke-direct {v6, v9, v10}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(D)V

    invoke-virtual {v6}, Landroidx/exifinterface/media/ExifInterface$Rational;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4002
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_0
    const/4 v6, 0x0

    move v7, v6

    :goto_1
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 4008
    array-length v8, v8

    if-ge v7, v8, :cond_17

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    iget-boolean v8, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    if-nez v8, :cond_5

    goto/16 :goto_f

    :cond_5
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 4012
    aget-object v8, v8, v7

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    if-eqz v8, :cond_16

    if-nez v2, :cond_6

    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4015
    aget-object v8, v8, v7

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 4018
    :cond_6
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    .line 4020
    iget v10, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, -0x1

    if-eq v10, v11, :cond_e

    iget v10, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_7

    goto/16 :goto_5

    .line 4022
    :cond_7
    iget v10, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    if-eq v10, v12, :cond_9

    iget v10, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v10, v11, :cond_8

    iget v10, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    .line 4023
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_9

    .line 4024
    :cond_8
    iget v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    goto/16 :goto_6

    .line 4025
    :cond_9
    iget v10, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    if-eq v10, v5, :cond_d

    iget v10, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v11, 0x7

    if-eq v10, v11, :cond_d

    iget v10, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    if-ne v10, v3, :cond_a

    goto/16 :goto_4

    :cond_a
    sget-boolean v10, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v10, :cond_16

    .line 4031
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Given tag ("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") value didn\'t match with one of expected formats: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v13, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    aget-object v13, v11, v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v13, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    const-string v14, ""

    const-string v15, ", "

    if-ne v13, v12, :cond_b

    move-object v8, v14

    goto :goto_2

    :cond_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    aget-object v8, v11, v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " (guess: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    .line 4036
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v10, v11, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v12, :cond_c

    goto :goto_3

    :cond_c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    .line 4037
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v9, v11, v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_3
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4031
    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 4028
    :cond_d
    :goto_4
    iget v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    goto :goto_6

    .line 4021
    :cond_e
    :goto_5
    iget v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    :goto_6
    const-string v9, "/"

    const-string v10, ","

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    move-object/from16 v16, v4

    move v15, v5

    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_15

    .line 4117
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Data format isn\'t one of expected formats: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v16

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 4106
    :pswitch_1
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 4107
    array-length v9, v8

    new-array v9, v9, [D

    move v10, v6

    .line 4108
    :goto_7
    array-length v11, v8

    if-ge v10, v11, :cond_f

    .line 4109
    aget-object v11, v8, v10

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    aput-wide v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_f
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4111
    aget-object v8, v8, v7

    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4112
    invoke-static {v9, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4111
    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 4094
    :pswitch_2
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 4095
    array-length v10, v8

    new-array v10, v10, [Landroidx/exifinterface/media/ExifInterface$Rational;

    move v11, v6

    .line 4096
    :goto_8
    array-length v13, v8

    if-ge v11, v13, :cond_10

    .line 4097
    aget-object v13, v8, v11

    invoke-virtual {v13, v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 4098
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$Rational;

    aget-object v15, v13, v6

    move-object/from16 v16, v4

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-long v3, v3

    aget-object v13, v13, v5

    .line 4099
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-long v5, v5

    invoke-direct {v14, v3, v4, v5, v6}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJ)V

    aput-object v14, v10, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v16

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_8

    :cond_10
    move-object/from16 v16, v4

    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4101
    aget-object v3, v3, v7

    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4102
    invoke-static {v10, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createSRational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 4101
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :pswitch_3
    move-object/from16 v16, v4

    .line 4062
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 4063
    array-length v4, v3

    new-array v4, v4, [I

    const/4 v5, 0x0

    .line 4064
    :goto_9
    array-length v6, v3

    if-ge v5, v6, :cond_11

    .line 4065
    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_11
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4067
    aget-object v3, v3, v7

    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4068
    invoke-static {v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 4067
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    move-object/from16 v4, v16

    const/4 v15, 0x1

    goto/16 :goto_10

    :pswitch_4
    move-object/from16 v16, v4

    .line 4082
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 4083
    array-length v4, v3

    new-array v4, v4, [Landroidx/exifinterface/media/ExifInterface$Rational;

    const/4 v5, 0x0

    .line 4084
    :goto_b
    array-length v6, v3

    if-ge v5, v6, :cond_12

    .line 4085
    aget-object v6, v3, v5

    invoke-virtual {v6, v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 4086
    new-instance v8, Landroidx/exifinterface/media/ExifInterface$Rational;

    const/4 v11, 0x0

    aget-object v10, v6, v11

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    double-to-long v13, v13

    const/4 v15, 0x1

    aget-object v6, v6, v15

    .line 4087
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-long v10, v11

    invoke-direct {v8, v13, v14, v10, v11}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJ)V

    aput-object v8, v4, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v12, -0x1

    goto :goto_b

    :cond_12
    const/4 v15, 0x1

    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4089
    aget-object v3, v3, v7

    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4090
    invoke-static {v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 4089
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    :pswitch_5
    move-object/from16 v16, v4

    move v15, v5

    move v3, v12

    .line 4072
    invoke-virtual {v2, v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 4073
    array-length v4, v3

    new-array v4, v4, [J

    const/4 v5, 0x0

    .line 4074
    :goto_c
    array-length v6, v3

    if-ge v5, v6, :cond_13

    .line 4075
    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_13
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4077
    aget-object v3, v3, v7

    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4078
    invoke-static {v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 4077
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :pswitch_6
    move-object/from16 v16, v4

    move v15, v5

    move v3, v12

    .line 4052
    invoke-virtual {v2, v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 4053
    array-length v4, v3

    new-array v4, v4, [I

    const/4 v5, 0x0

    .line 4054
    :goto_d
    array-length v6, v3

    if-ge v5, v6, :cond_14

    .line 4055
    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_14
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4057
    aget-object v3, v3, v7

    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4058
    invoke-static {v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 4057
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :pswitch_7
    move-object/from16 v16, v4

    move v15, v5

    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4048
    aget-object v3, v3, v7

    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :pswitch_8
    move-object/from16 v16, v4

    move v15, v5

    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4043
    aget-object v3, v3, v7

    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_e
    move-object/from16 v4, v16

    goto :goto_10

    :cond_16
    :goto_f
    move v15, v5

    :goto_10
    add-int/lit8 v7, v7, 0x1

    move v5, v15

    const/4 v3, 0x2

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_17
    return-void

    .line 3978
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDateTime(J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    .line 4848
    rem-long v0, p1, v0

    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 4849
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DateTime"

    invoke-virtual {p0, p2, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SubSecTime"

    .line 4850
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGpsInfo(Landroid/location/Location;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "GPSProcessingMethod"

    .line 4779
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4780
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setLatLong(DD)V

    .line 4781
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAltitude(D)V

    const-string v0, "GPSSpeedRef"

    const-string v1, "K"

    .line 4783
    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4784
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$Rational;

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    .line 4785
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(D)V

    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$Rational;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSSpeed"

    .line 4784
    invoke-virtual {p0, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 4786
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s+"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 4787
    aget-object v0, p1, v0

    const-string v1, "GPSDateStamp"

    invoke-virtual {p0, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4788
    aget-object p1, p1, v0

    const-string v0, "GPSTimeStamp"

    invoke-virtual {p0, v0, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLatLong(DD)V
    .locals 4

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p1, v0

    const-string v1, " is not valid."

    if-ltz v0, :cond_3

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v0, p1, v2

    if-gtz v0, :cond_3

    .line 4802
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p3, v2

    if-ltz v0, :cond_2

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v0, p3, v2

    if-gtz v0, :cond_2

    .line 4805
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    const-string v2, "N"

    goto :goto_0

    :cond_0
    const-string v2, "S"

    :goto_0
    const-string v3, "GPSLatitudeRef"

    .line 4808
    invoke-virtual {p0, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4809
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface;->convertDecimalDegree(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GPSLatitude"

    invoke-virtual {p0, p2, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-double p1, p3, v0

    if-ltz p1, :cond_1

    const-string p1, "E"

    goto :goto_1

    :cond_1
    const-string p1, "W"

    :goto_1
    const-string p2, "GPSLongitudeRef"

    .line 4810
    invoke-virtual {p0, p2, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4811
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface;->convertDecimalDegree(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GPSLongitude"

    invoke-virtual {p0, p2, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4806
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Longitude value "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4803
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Latitude value "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
