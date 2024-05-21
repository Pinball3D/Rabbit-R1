.class public final Lcom/google/android/exoplayer2/video/ColorInfo;
.super Ljava/lang/Object;
.source "ColorInfo.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_COLOR_RANGE:Ljava/lang/String;

.field private static final FIELD_COLOR_SPACE:Ljava/lang/String;

.field private static final FIELD_COLOR_TRANSFER:Ljava/lang/String;

.field private static final FIELD_HDR_STATIC_INFO:Ljava/lang/String;

.field public static final SDR_BT709_LIMITED:Lcom/google/android/exoplayer2/video/ColorInfo;


# instance fields
.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field private hashCode:I

.field public final hdrStaticInfo:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    new-instance v0, Lcom/google/android/exoplayer2/video/ColorInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->SDR_BT709_LIMITED:Lcom/google/android/exoplayer2/video/ColorInfo;

    const/4 v0, 0x0

    .line 181
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_SPACE:Ljava/lang/String;

    .line 182
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_RANGE:Ljava/lang/String;

    .line 183
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_TRANSFER:Ljava/lang/String;

    .line 184
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_HDR_STATIC_INFO:Ljava/lang/String;

    .line 196
    new-instance v0, Lcom/google/android/exoplayer2/video/ColorInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/ColorInfo$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    iput p2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    iput p3, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    iput-object p4, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    return-void
.end method

.method public static isTransferHdr(Lcom/google/android/exoplayer2/video/ColorInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 89
    iget p0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isoColorPrimariesToColorSpace(I)I
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    const/4 v1, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public static isoTransferCharacteristicsToColorTransfer(I)I
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10

    const/4 v1, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    const/4 v2, 0x7

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_2

    if-eq p0, v2, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/video/ColorInfo;
    .locals 5

    .line 198
    new-instance v0, Lcom/google/android/exoplayer2/video/ColorInfo;

    sget-object v1, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_SPACE:Ljava/lang/String;

    const/4 v2, -0x1

    .line 199
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v3, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_RANGE:Ljava/lang/String;

    .line 200
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_TRANSFER:Ljava/lang/String;

    .line 201
    invoke-virtual {p0, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v4, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_HDR_STATIC_INFO:Ljava/lang/String;

    .line 202
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, v1, v3, v2, p0}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    return-object v0
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

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 146
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/video/ColorInfo;

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    .line 147
    iget v3, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    iget v3, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    iget v3, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    iget-object p1, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    .line 150
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hashCode:I

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    .line 173
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hashCode:I

    :cond_0
    iget p0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hashCode:I

    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_SPACE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    .line 189
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_RANGE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    .line 190
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_TRANSFER:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_HDR_STATIC_INFO:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    .line 192
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColorInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
