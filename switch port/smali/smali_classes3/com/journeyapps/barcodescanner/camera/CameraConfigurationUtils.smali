.class public final Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;
.super Ljava/lang/Object;
.source "CameraConfigurationUtils.java"


# static fields
.field private static final AREA_PER_1000:I = 0x190

.field private static final MAX_EXPOSURE_COMPENSATION:F = 1.5f

.field private static final MAX_FPS:I = 0x14

.field private static final MIN_EXPOSURE_COMPENSATION:F = 0.0f

.field private static final MIN_FPS:I = 0xa

.field private static final SEMICOLON:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "CameraConfiguration"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ";"

    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->SEMICOLON:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildMiddleArea(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Landroid/hardware/Camera$Area;

    new-instance v1, Landroid/graphics/Rect;

    neg-int v2, p0

    invoke-direct {v1, v2, v2, p0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p0, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static collectStats(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 0

    .line 330
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->collectStats(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static collectStats(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BOARD="

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nBRAND="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nCPU_ABI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nDEVICE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nDISPLAY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nFINGERPRINT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nHOST="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    sget-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nMANUFACTURER="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nMODEL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nPRODUCT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nTAGS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nTIME="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    sget-wide v1, Landroid/os/Build;->TIME:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nTYPE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nUSER="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    sget-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nVERSION.CODENAME="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nVERSION.INCREMENTAL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nVERSION.RELEASE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nVERSION.SDK_INT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    sget-object v1, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->SEMICOLON:Ljava/util/regex/Pattern;

    .line 357
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    .line 358
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 359
    array-length v1, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 360
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static varargs findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Requesting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value from among: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfiguration"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Supported "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " values: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 289
    array-length v0, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 290
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Can set "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " to: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "No supported values match"

    .line 296
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static indexOfClosestZoom(Landroid/hardware/Camera$Parameters;D)Ljava/lang/Integer;
    .locals 10

    .line 249
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Zoom ratios: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraConfiguration"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result p0

    if-eqz v0, :cond_3

    .line 252
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 p0, p0, 0x1

    if-eq v1, p0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v3

    const/4 p0, 0x0

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move v1, p0

    .line 259
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge p0, v7, :cond_2

    .line 260
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v7, v7

    sub-double/2addr v7, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v9, v7, v5

    if-gez v9, :cond_1

    move v1, p0

    move-wide v5, v7

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 266
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Chose zoom ratio of "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double p1, p1

    div-double/2addr p1, v3

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const-string p0, "Invalid zoom ratios!"

    .line 253
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setBarcodeSceneMode(Landroid/hardware/Camera$Parameters;)V
    .locals 3

    .line 219
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "barcode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "CameraConfiguration"

    const-string v0, "Barcode scene mode already set"

    .line 220
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 224
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "scene mode"

    .line 223
    invoke-static {v2, v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static setBestExposure(Landroid/hardware/Camera$Parameters;Z)V
    .locals 6

    .line 120
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    .line 121
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    .line 122
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v2

    const-string v3, "CameraConfiguration"

    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-lez v5, :cond_3

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v4, 0x3fc00000    # 1.5f

    :goto_0
    div-float/2addr v4, v2

    .line 126
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float v4, p1

    mul-float/2addr v2, v4

    .line 129
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 130
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0

    const-string v1, " / "

    if-ne v0, p1, :cond_2

    .line 131
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Exposure compensation already set to "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 133
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Setting exposure compensation to "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    goto :goto_1

    :cond_3
    const-string p0, "Camera does not support exposure compensation"

    .line 137
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static setBestPreviewFPS(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0x14

    .line 142
    invoke-static {p0, v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->setBestPreviewFPS(Landroid/hardware/Camera$Parameters;II)V

    return-void
.end method

.method public static setBestPreviewFPS(Landroid/hardware/Camera$Parameters;II)V
    .locals 8

    .line 146
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Supported FPS ranges: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraConfiguration"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 148
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 150
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 151
    aget v5, v1, v4

    .line 152
    aget v6, v1, v3

    mul-int/lit16 v7, p1, 0x3e8

    if-lt v5, v7, :cond_0

    mul-int/lit16 v5, p2, 0x3e8

    if-gt v6, v5, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    const-string p0, "No suitable FPS range?"

    .line 159
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 162
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 163
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 164
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "FPS range already set to "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 166
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Setting FPS range to "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    aget p1, v1, v4

    aget p2, v1, v3

    invoke-virtual {p0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static setFocus(Landroid/hardware/Camera$Parameters;Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;Z)V
    .locals 5

    .line 57
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "macro"

    const-string v2, "auto"

    const-string v3, "focus mode"

    if-nez p2, :cond_4

    .line 60
    sget-object v4, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->AUTO:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    if-ne p1, v4, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    sget-object v4, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->CONTINUOUS:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    if-ne p1, v4, :cond_1

    const-string p1, "continuous-picture"

    const-string v4, "continuous-video"

    .line 65
    filled-new-array {p1, v4, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 70
    :cond_1
    sget-object v2, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->INFINITY:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    if-ne p1, v2, :cond_2

    const-string p1, "infinity"

    .line 71
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 74
    :cond_2
    sget-object v2, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->MACRO:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    if-ne p1, v2, :cond_3

    .line 75
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    .line 61
    :cond_4
    :goto_0
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-nez p2, :cond_5

    if-nez p1, :cond_5

    const-string p1, "edof"

    .line 82
    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    if-eqz p1, :cond_7

    .line 88
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 89
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Focus mode already set to "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraConfiguration"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 91
    :cond_6
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public static setFocusArea(Landroid/hardware/Camera$Parameters;)V
    .locals 4

    .line 176
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    const-string v1, "CameraConfiguration"

    if-lez v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Old focus areas: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusAreas()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x190

    .line 178
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->buildMiddleArea(I)Ljava/util/List;

    move-result-object v0

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting focus area to : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const-string p0, "Device does not support focus areas"

    .line 182
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setInvertColor(Landroid/hardware/Camera$Parameters;)V
    .locals 3

    .line 271
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    const-string v1, "negative"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "CameraConfiguration"

    const-string v0, "Negative effect already set"

    .line 272
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 276
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "color effect"

    .line 275
    invoke-static {v2, v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static setMetering(Landroid/hardware/Camera$Parameters;)V
    .locals 4

    .line 188
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    const-string v1, "CameraConfiguration"

    if-lez v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Old metering areas: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMeteringAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x190

    .line 190
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->buildMiddleArea(I)Ljava/util/List;

    move-result-object v0

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting metering area to : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const-string p0, "Device does not support metering areas"

    .line 194
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setTorch(Landroid/hardware/Camera$Parameters;Z)V
    .locals 3

    .line 97
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "flash mode"

    if-eqz p1, :cond_0

    const-string p1, "torch"

    const-string v2, "on"

    .line 100
    filled-new-array {p1, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "off"

    .line 105
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 110
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "CameraConfiguration"

    if-eqz v0, :cond_1

    .line 111
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Flash mode already set to "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 113
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Setting flash mode to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static setVideoStabilization(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    .line 206
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    const-string v1, "CameraConfiguration"

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Video stabilization already enabled"

    .line 208
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Enabling video stabilization..."

    .line 210
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 211
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    goto :goto_0

    :cond_1
    const-string p0, "This device does not support video stabilization"

    .line 214
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setZoom(Landroid/hardware/Camera$Parameters;D)V
    .locals 2

    .line 232
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    const-string v1, "CameraConfiguration"

    if-eqz v0, :cond_2

    .line 233
    invoke-static {p0, p1, p2}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->indexOfClosestZoom(Landroid/hardware/Camera$Parameters;D)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 238
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Zoom is already set to "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Setting zoom to "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    goto :goto_0

    :cond_2
    const-string p0, "Zoom is not supported"

    .line 244
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static toString(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/hardware/Camera$Area;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 322
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    .line 324
    iget-object v2, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/hardware/Camera$Area;->weight:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[I>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 301
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 307
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 p0, 0x5d

    .line 313
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const-string p0, "[]"

    return-object p0
.end method
