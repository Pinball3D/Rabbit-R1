.class public final Landroidx/media3/common/audio/ChannelMixingMatrix;
.super Ljava/lang/Object;
.source "ChannelMixingMatrix.java"


# instance fields
.field private final coefficients:[F

.field private final inputChannelCount:I

.field private final isDiagonal:Z

.field private final isIdentity:Z

.field private final isZero:Z

.field private final outputChannelCount:I


# direct methods
.method public constructor <init>(II[F)V
    .locals 9

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Input channel count must be positive."

    .line 82
    invoke-static {v2, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-lez p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "Output channel count must be positive."

    .line 83
    invoke-static {v2, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 84
    array-length v2, p3

    mul-int v3, p1, p2

    if-ne v2, v3, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    const-string v3, "Coefficient array length is invalid."

    invoke-static {v2, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroidx/media3/common/audio/ChannelMixingMatrix;->inputChannelCount:I

    iput p2, p0, Landroidx/media3/common/audio/ChannelMixingMatrix;->outputChannelCount:I

    .line 89
    invoke-static {p3}, Landroidx/media3/common/audio/ChannelMixingMatrix;->checkCoefficientsValid([F)[F

    move-result-object p3

    iput-object p3, p0, Landroidx/media3/common/audio/ChannelMixingMatrix;->coefficients:[F

    move v2, v0

    move v3, v2

    move v4, v3

    move p3, v1

    :goto_3
    if-ge p3, p1, :cond_7

    move v5, v1

    :goto_4
    if-ge v5, p2, :cond_6

    .line 97
    invoke-virtual {p0, p3, v5}, Landroidx/media3/common/audio/ChannelMixingMatrix;->getMixingCoefficient(II)F

    move-result v6

    if-ne p3, v5, :cond_3

    move v7, v0

    goto :goto_5

    :cond_3
    move v7, v1

    :goto_5
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v6, v8

    if-eqz v8, :cond_4

    if-eqz v7, :cond_4

    move v4, v1

    :cond_4
    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_5

    move v2, v1

    if-nez v7, :cond_5

    move v3, v2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_7
    iput-boolean v2, p0, Landroidx/media3/common/audio/ChannelMixingMatrix;->isZero:Z

    .line 112
    invoke-virtual {p0}, Landroidx/media3/common/audio/ChannelMixingMatrix;->isSquare()Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz v3, :cond_8

    move p1, v0

    goto :goto_6

    :cond_8
    move p1, v1

    :goto_6
    iput-boolean p1, p0, Landroidx/media3/common/audio/ChannelMixingMatrix;->isDiagonal:Z

    if-eqz p1, :cond_9

    if-eqz v4, :cond_9

    goto :goto_7

    :cond_9
    move v0, v1

    :goto_7
    iput-boolean v0, p0, Landroidx/media3/common/audio/ChannelMixingMatrix;->isIdentity:Z

    return-void
.end method

.method private static checkCoefficientsValid([F)[F
    .locals 3

    const/4 v0, 0x0

    .line 187
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 188
    aget v1, p0, v0

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Coefficient at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is negative."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method

.method public static create(II)Landroidx/media3/common/audio/ChannelMixingMatrix;
    .locals 2

    .line 68
    new-instance v0, Landroidx/media3/common/audio/ChannelMixingMatrix;

    .line 71
    invoke-static {p0, p1}, Landroidx/media3/common/audio/ChannelMixingMatrix;->createMixingCoefficients(II)[F

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/common/audio/ChannelMixingMatrix;-><init>(II[F)V

    return-object v0
.end method

.method private static createMixingCoefficients(II)[F
    .locals 3

    if-ne p0, p1, :cond_0

    .line 160
    invoke-static {p1}, Landroidx/media3/common/audio/ChannelMixingMatrix;->initializeIdentityMatrix(I)[F

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p0, v0, :cond_1

    if-ne p1, v1, :cond_1

    new-array p0, v1, [F

    fill-array-data p0, :array_0

    return-object p0

    :cond_1
    if-ne p0, v1, :cond_2

    if-ne p1, v0, :cond_2

    new-array p0, v1, [F

    fill-array-data p0, :array_1

    return-object p0

    .line 170
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Default channel mixing coefficients for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "->"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " are not yet implemented."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private static initializeIdentityMatrix(I)[F
    .locals 4

    mul-int v0, p0, p0

    .line 179
    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    mul-int v2, p0, v1

    add-int/2addr v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 181
    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getInputChannelCount()I
    .locals 0

    iget p0, p0, Landroidx/media3/common/audio/ChannelMixingMatrix;->inputChannelCount:I

    return p0
.end method

.method public getMixingCoefficient(II)F
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/audio/ChannelMixingMatrix;->coefficients:[F

    iget p0, p0, Landroidx/media3/common/audio/ChannelMixingMatrix;->outputChannelCount:I

    mul-int/2addr p1, p0

    add-int/2addr p1, p2

    .line 126
    aget p0, v0, p1

    return p0
.end method

.method public getOutputChannelCount()I
    .locals 0

    iget p0, p0, Landroidx/media3/common/audio/ChannelMixingMatrix;->outputChannelCount:I

    return p0
.end method

.method public isDiagonal()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/common/audio/ChannelMixingMatrix;->isDiagonal:Z

    return p0
.end method

.method public isIdentity()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/common/audio/ChannelMixingMatrix;->isIdentity:Z

    return p0
.end method

.method public isSquare()Z
    .locals 1

    iget v0, p0, Landroidx/media3/common/audio/ChannelMixingMatrix;->inputChannelCount:I

    iget p0, p0, Landroidx/media3/common/audio/ChannelMixingMatrix;->outputChannelCount:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isZero()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/common/audio/ChannelMixingMatrix;->isZero:Z

    return p0
.end method

.method public scaleBy(F)Landroidx/media3/common/audio/ChannelMixingMatrix;
    .locals 4

    iget-object v0, p0, Landroidx/media3/common/audio/ChannelMixingMatrix;->coefficients:[F

    .line 151
    array-length v0, v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/media3/common/audio/ChannelMixingMatrix;->coefficients:[F

    .line 152
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 153
    aget v2, v2, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    new-instance p1, Landroidx/media3/common/audio/ChannelMixingMatrix;

    iget v1, p0, Landroidx/media3/common/audio/ChannelMixingMatrix;->inputChannelCount:I

    iget p0, p0, Landroidx/media3/common/audio/ChannelMixingMatrix;->outputChannelCount:I

    invoke-direct {p1, v1, p0, v0}, Landroidx/media3/common/audio/ChannelMixingMatrix;-><init>(II[F)V

    return-object p1
.end method
