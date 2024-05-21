.class public final Lcom/google/android/exoplayer2/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/DeviceInfo$PlaybackType;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MAX_VOLUME:Ljava/lang/String;

.field private static final FIELD_MIN_VOLUME:Ljava/lang/String;

.field private static final FIELD_PLAYBACK_TYPE:Ljava/lang/String;

.field public static final PLAYBACK_TYPE_LOCAL:I = 0x0

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x1

.field public static final UNKNOWN:Lcom/google/android/exoplayer2/DeviceInfo;


# instance fields
.field public final maxVolume:I

.field public final minVolume:I

.field public final playbackType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/google/android/exoplayer2/DeviceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/exoplayer2/DeviceInfo;-><init>(III)V

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->UNKNOWN:Lcom/google/android/exoplayer2/DeviceInfo;

    .line 89
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_PLAYBACK_TYPE:Ljava/lang/String;

    const/4 v0, 0x1

    .line 90
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MIN_VOLUME:Ljava/lang/String;

    const/4 v0, 0x2

    .line 91
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MAX_VOLUME:Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/google/android/exoplayer2/DeviceInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/DeviceInfo$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    iput p2, p0, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    iput p3, p0, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/DeviceInfo;
    .locals 4

    sget-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_PLAYBACK_TYPE:Ljava/lang/String;

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MIN_VOLUME:Ljava/lang/String;

    .line 107
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MAX_VOLUME:Ljava/lang/String;

    .line 108
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 109
    new-instance v1, Lcom/google/android/exoplayer2/DeviceInfo;

    invoke-direct {v1, v0, v2, p0}, Lcom/google/android/exoplayer2/DeviceInfo;-><init>(III)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 69
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/DeviceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 72
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/DeviceInfo;

    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    .line 73
    iget v3, p1, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    iget v3, p1, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    iget p1, p1, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_PLAYBACK_TYPE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MIN_VOLUME:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MAX_VOLUME:Ljava/lang/String;

    iget p0, p0, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    .line 98
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
