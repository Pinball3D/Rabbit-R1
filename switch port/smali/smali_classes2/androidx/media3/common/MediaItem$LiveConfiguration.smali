.class public final Landroidx/media3/common/MediaItem$LiveConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LiveConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/MediaItem$LiveConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MAX_OFFSET_MS:Ljava/lang/String;

.field private static final FIELD_MAX_PLAYBACK_SPEED:Ljava/lang/String;

.field private static final FIELD_MIN_OFFSET_MS:Ljava/lang/String;

.field private static final FIELD_MIN_PLAYBACK_SPEED:Ljava/lang/String;

.field private static final FIELD_TARGET_OFFSET_MS:Ljava/lang/String;

.field public static final UNSET:Landroidx/media3/common/MediaItem$LiveConfiguration;


# instance fields
.field public final maxOffsetMs:J

.field public final maxPlaybackSpeed:F

.field public final minOffsetMs:J

.field public final minPlaybackSpeed:F

.field public final targetOffsetMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1366
    new-instance v0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->UNSET:Landroidx/media3/common/MediaItem$LiveConfiguration;

    const/4 v0, 0x0

    .line 1460
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_TARGET_OFFSET_MS:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1461
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_MIN_OFFSET_MS:Ljava/lang/String;

    const/4 v0, 0x2

    .line 1462
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_MAX_OFFSET_MS:Ljava/lang/String;

    const/4 v0, 0x3

    .line 1463
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_MIN_PLAYBACK_SPEED:Ljava/lang/String;

    const/4 v0, 0x4

    .line 1464
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_MAX_PLAYBACK_SPEED:Ljava/lang/String;

    .line 1490
    new-instance v0, Landroidx/media3/common/MediaItem$LiveConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$LiveConfiguration$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(JJJFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    iput-wide p3, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    iput-wide p5, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    iput p7, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    iput p8, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)V
    .locals 9

    .line 1401
    invoke-static {p1}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->access$2000(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)J

    move-result-wide v1

    .line 1402
    invoke-static {p1}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->access$2100(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)J

    move-result-wide v3

    .line 1403
    invoke-static {p1}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->access$2200(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)J

    move-result-wide v5

    .line 1404
    invoke-static {p1}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->access$2300(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)F

    move-result v7

    .line 1405
    invoke-static {p1}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->access$2400(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)F

    move-result v8

    move-object v0, p0

    .line 1400
    invoke-direct/range {v0 .. v8}, Landroidx/media3/common/MediaItem$LiveConfiguration;-><init>(JJJFF)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;Landroidx/media3/common/MediaItem$1;)V
    .locals 0

    .line 1268
    invoke-direct {p0, p1}, Landroidx/media3/common/MediaItem$LiveConfiguration;-><init>(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)V

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem$LiveConfiguration;
    .locals 10

    .line 1492
    new-instance v9, Landroidx/media3/common/MediaItem$LiveConfiguration;

    sget-object v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_TARGET_OFFSET_MS:Ljava/lang/String;

    sget-object v1, Landroidx/media3/common/MediaItem$LiveConfiguration;->UNSET:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-wide v2, v1, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    .line 1493
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sget-object v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_MIN_OFFSET_MS:Ljava/lang/String;

    iget-wide v4, v1, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    .line 1494
    invoke-virtual {p0, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sget-object v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_MAX_OFFSET_MS:Ljava/lang/String;

    iget-wide v6, v1, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    .line 1495
    invoke-virtual {p0, v0, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sget-object v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_MIN_PLAYBACK_SPEED:Ljava/lang/String;

    iget v8, v1, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    .line 1496
    invoke-virtual {p0, v0, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v8

    sget-object v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_MAX_PLAYBACK_SPEED:Ljava/lang/String;

    iget v1, v1, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    .line 1498
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    move-object v0, v9

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v6

    move v7, v8

    move v8, p0

    invoke-direct/range {v0 .. v8}, Landroidx/media3/common/MediaItem$LiveConfiguration;-><init>(JJJFF)V

    return-object v9
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;
    .locals 2

    .line 1428
    new-instance v0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;-><init>(Landroidx/media3/common/MediaItem$LiveConfiguration;Landroidx/media3/common/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1436
    :cond_0
    instance-of v1, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1439
    :cond_1
    check-cast p1, Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-wide v3, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    .line 1441
    iget-wide v5, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    iget-wide v5, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    iget-wide v5, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    iget v3, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget p0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    iget p1, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 1453
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v1, p0, v2

    if-eqz v1, :cond_1

    .line 1454
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    :cond_1
    add-int/2addr v0, v4

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 6

    .line 1469
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-wide v1, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    sget-object v3, Landroidx/media3/common/MediaItem$LiveConfiguration;->UNSET:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 1470
    iget-wide v4, v3, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v4, v1, v4

    if-eqz v4, :cond_0

    sget-object v4, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_TARGET_OFFSET_MS:Ljava/lang/String;

    .line 1471
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-wide v1, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    .line 1473
    iget-wide v4, v3, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v4, v1, v4

    if-eqz v4, :cond_1

    sget-object v4, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_MIN_OFFSET_MS:Ljava/lang/String;

    .line 1474
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    iget-wide v1, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    .line 1476
    iget-wide v4, v3, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    cmp-long v4, v1, v4

    if-eqz v4, :cond_2

    sget-object v4, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_MAX_OFFSET_MS:Ljava/lang/String;

    .line 1477
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    iget v1, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    .line 1479
    iget v2, v3, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    sget-object v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_MIN_PLAYBACK_SPEED:Ljava/lang/String;

    .line 1480
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_3
    iget p0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    .line 1482
    iget v1, v3, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_4

    sget-object v1, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_MAX_PLAYBACK_SPEED:Ljava/lang/String;

    .line 1483
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_4
    return-object v0
.end method
