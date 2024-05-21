.class public final Lcom/google/android/exoplayer2/PlaybackParameters;
.super Ljava/lang/Object;
.source "PlaybackParameters.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/PlaybackParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

.field private static final FIELD_PITCH:Ljava/lang/String;

.field private static final FIELD_SPEED:Ljava/lang/String;


# instance fields
.field public final pitch:F

.field private final scaledUsPerMs:I

.field public final speed:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(F)V

    sput-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    const/4 v0, 0x0

    .line 116
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->FIELD_SPEED:Ljava/lang/String;

    const/4 v0, 0x1

    .line 117
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->FIELD_PITCH:Ljava/lang/String;

    .line 128
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/PlaybackParameters$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 60
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 61
    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iput p1, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    iput p2, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    .line 64
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->scaledUsPerMs:I

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 3

    sget-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->FIELD_SPEED:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 130
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sget-object v2, Lcom/google/android/exoplayer2/PlaybackParameters;->FIELD_PITCH:Ljava/lang/String;

    .line 131
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    .line 132
    new-instance v1, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {v1, v0, p0}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 97
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v2, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 98
    iget v3, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget p0, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getMediaTimeUsForPlayoutTimeMs(J)J
    .locals 2

    iget p0, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->scaledUsPerMs:I

    int-to-long v0, p0

    mul-long/2addr p1, v0

    return-wide p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 104
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    .line 105
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/google/android/exoplayer2/PlaybackParameters;->FIELD_SPEED:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v1, Lcom/google/android/exoplayer2/PlaybackParameters;->FIELD_PITCH:Ljava/lang/String;

    iget p0, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    .line 123
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 111
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget p0, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "PlaybackParameters(speed=%.2f, pitch=%.2f)"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public withSpeed(F)Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 1

    .line 86
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget p0, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    invoke-direct {v0, p1, p0}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    return-object v0
.end method
