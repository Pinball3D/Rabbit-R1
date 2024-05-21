.class public Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClippingConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_END_POSITION_MS:Ljava/lang/String;

.field private static final FIELD_RELATIVE_TO_DEFAULT_POSITION:Ljava/lang/String;

.field private static final FIELD_RELATIVE_TO_LIVE_WINDOW:Ljava/lang/String;

.field private static final FIELD_STARTS_AT_KEY_FRAME:Ljava/lang/String;

.field private static final FIELD_START_POSITION_MS:Ljava/lang/String;

.field public static final UNSET:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;


# instance fields
.field public final endPositionMs:J

.field public final relativeToDefaultPosition:Z

.field public final relativeToLiveWindow:Z

.field public final startPositionMs:J

.field public final startsAtKeyFrame:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1534
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->UNSET:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    const/4 v0, 0x0

    .line 1696
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_START_POSITION_MS:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1697
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_END_POSITION_MS:Ljava/lang/String;

    const/4 v0, 0x2

    .line 1698
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_LIVE_WINDOW:Ljava/lang/String;

    const/4 v0, 0x3

    .line 1699
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_DEFAULT_POSITION:Ljava/lang/String;

    const/4 v0, 0x4

    .line 1700
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_STARTS_AT_KEY_FRAME:Ljava/lang/String;

    .line 1724
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)V
    .locals 2

    .line 1653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1654
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->access$3900(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    .line 1655
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->access$4000(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    .line 1656
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->access$4100(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    .line 1657
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->access$4200(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    .line 1658
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->access$4300(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    .line 1531
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)V

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;
    .locals 5

    .line 1726
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;-><init>()V

    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_START_POSITION_MS:Ljava/lang/String;

    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->UNSET:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    iget-wide v3, v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    .line 1728
    invoke-virtual {p0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1727
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setStartPositionMs(J)Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_END_POSITION_MS:Ljava/lang/String;

    iget-wide v3, v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    .line 1731
    invoke-virtual {p0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1730
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setEndPositionMs(J)Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_LIVE_WINDOW:Ljava/lang/String;

    iget-boolean v3, v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    .line 1733
    invoke-virtual {p0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1732
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setRelativeToLiveWindow(Z)Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_DEFAULT_POSITION:Ljava/lang/String;

    iget-boolean v3, v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    .line 1737
    invoke-virtual {p0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1736
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setRelativeToDefaultPosition(Z)Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_STARTS_AT_KEY_FRAME:Ljava/lang/String;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    .line 1741
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 1740
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setStartsAtKeyFrame(Z)Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    move-result-object p0

    .line 1743
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->buildClippingProperties()Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;
    .locals 2

    .line 1663
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1671
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1675
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    .line 1677
    iget-wide v5, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    if-ne v1, v3, :cond_2

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 6

    .line 1704
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-wide v1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    sget-object v3, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->UNSET:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    .line 1705
    iget-wide v4, v3, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    cmp-long v4, v1, v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_START_POSITION_MS:Ljava/lang/String;

    .line 1706
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    .line 1708
    iget-wide v4, v3, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    cmp-long v4, v1, v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_END_POSITION_MS:Ljava/lang/String;

    .line 1709
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    .line 1711
    iget-boolean v2, v3, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_LIVE_WINDOW:Ljava/lang/String;

    .line 1712
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    .line 1714
    iget-boolean v2, v3, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_DEFAULT_POSITION:Ljava/lang/String;

    .line 1715
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    .line 1717
    iget-boolean v1, v3, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    if-eq p0, v1, :cond_4

    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_STARTS_AT_KEY_FRAME:Ljava/lang/String;

    .line 1718
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    return-object v0
.end method
