.class public final Lcom/google/zxing/client/android/Intents$Scan;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Scan"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.google.zxing.client.android.SCAN"

.field public static final AZTEC_MODE:Ljava/lang/String; = "AZTEC_MODE"

.field public static final BARCODE_IMAGE_ENABLED:Ljava/lang/String; = "BARCODE_IMAGE_ENABLED"

.field public static final BEEP_ENABLED:Ljava/lang/String; = "BEEP_ENABLED"

.field public static final CAMERA_ID:Ljava/lang/String; = "SCAN_CAMERA_ID"

.field public static final CHARACTER_SET:Ljava/lang/String; = "CHARACTER_SET"

.field public static final DATA_MATRIX_MODE:Ljava/lang/String; = "DATA_MATRIX_MODE"

.field public static final FORMATS:Ljava/lang/String; = "SCAN_FORMATS"

.field public static final INVERTED_SCAN:I = 0x1

.field public static final MISSING_CAMERA_PERMISSION:Ljava/lang/String; = "MISSING_CAMERA_PERMISSION"

.field public static final MISSING_CAMERA_PERMISSION_DIALOG_MESSAGE:Ljava/lang/String; = "MISSING_CAMERA_PERMISSION_DIALOG_MESSAGE"

.field public static final MIXED_SCAN:I = 0x2

.field public static final MODE:Ljava/lang/String; = "SCAN_MODE"

.field public static final NORMAL_SCAN:I = 0x0

.field public static final ONE_D_MODE:Ljava/lang/String; = "ONE_D_MODE"

.field public static final ORIENTATION_LOCKED:Ljava/lang/String; = "SCAN_ORIENTATION_LOCKED"

.field public static final PDF417_MODE:Ljava/lang/String; = "PDF417_MODE"

.field public static final PRODUCT_MODE:Ljava/lang/String; = "PRODUCT_MODE"

.field public static final PROMPT_MESSAGE:Ljava/lang/String; = "PROMPT_MESSAGE"

.field public static final QR_CODE_MODE:Ljava/lang/String; = "QR_CODE_MODE"

.field public static final RESULT:Ljava/lang/String; = "SCAN_RESULT"

.field public static final RESULT_BARCODE_IMAGE_PATH:Ljava/lang/String; = "SCAN_RESULT_IMAGE_PATH"

.field public static final RESULT_BYTES:Ljava/lang/String; = "SCAN_RESULT_BYTES"

.field public static final RESULT_BYTE_SEGMENTS_PREFIX:Ljava/lang/String; = "SCAN_RESULT_BYTE_SEGMENTS_"

.field public static final RESULT_ERROR_CORRECTION_LEVEL:Ljava/lang/String; = "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

.field public static final RESULT_FORMAT:Ljava/lang/String; = "SCAN_RESULT_FORMAT"

.field public static final RESULT_ORIENTATION:Ljava/lang/String; = "SCAN_RESULT_ORIENTATION"

.field public static final RESULT_UPC_EAN_EXTENSION:Ljava/lang/String; = "SCAN_RESULT_UPC_EAN_EXTENSION"

.field public static final SCAN_TYPE:Ljava/lang/String; = "SCAN_TYPE"

.field public static final SHOW_MISSING_CAMERA_PERMISSION_DIALOG:Ljava/lang/String; = "SHOW_MISSING_CAMERA_PERMISSION_DIALOG"

.field public static final TIMEOUT:Ljava/lang/String; = "TIMEOUT"

.field public static final TORCH_ENABLED:Ljava/lang/String; = "TORCH_ENABLED"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
