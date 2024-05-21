.class public final Landroidx/media3/decoder/CryptoInfo;
.super Ljava/lang/Object;
.source "CryptoInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;
    }
.end annotation


# instance fields
.field public clearBlocks:I

.field public encryptedBlocks:I

.field private final frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

.field public iv:[B

.field public key:[B

.field public mode:I

.field public numBytesOfClearData:[I

.field public numBytesOfEncryptedData:[I

.field public numSubSamples:I

.field private final patternHolder:Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Landroidx/media3/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    .line 86
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    new-instance v1, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;

    invoke-direct {v1, v0, v3}, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;-><init>(Landroid/media/MediaCodec$CryptoInfo;Landroidx/media3/decoder/CryptoInfo$1;)V

    move-object v3, v1

    :cond_0
    iput-object v3, p0, Landroidx/media3/decoder/CryptoInfo;->patternHolder:Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;

    return-void
.end method


# virtual methods
.method public getFrameworkCryptoInfo()Landroid/media/MediaCodec$CryptoInfo;
    .locals 0

    iget-object p0, p0, Landroidx/media3/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    return-object p0
.end method

.method public increaseClearDataFirstSubSampleBy(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/decoder/CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media3/decoder/CryptoInfo;->numBytesOfClearData:[I

    iget-object v1, p0, Landroidx/media3/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    .line 153
    iput-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    :cond_1
    iget-object p0, p0, Landroidx/media3/decoder/CryptoInfo;->numBytesOfClearData:[I

    const/4 v0, 0x0

    .line 155
    aget v1, p0, v0

    add-int/2addr v1, p1

    aput v1, p0, v0

    return-void
.end method

.method public set(I[I[I[B[BIII)V
    .locals 1

    iput p1, p0, Landroidx/media3/decoder/CryptoInfo;->numSubSamples:I

    iput-object p2, p0, Landroidx/media3/decoder/CryptoInfo;->numBytesOfClearData:[I

    iput-object p3, p0, Landroidx/media3/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    iput-object p4, p0, Landroidx/media3/decoder/CryptoInfo;->key:[B

    iput-object p5, p0, Landroidx/media3/decoder/CryptoInfo;->iv:[B

    iput p6, p0, Landroidx/media3/decoder/CryptoInfo;->mode:I

    iput p7, p0, Landroidx/media3/decoder/CryptoInfo;->encryptedBlocks:I

    iput p8, p0, Landroidx/media3/decoder/CryptoInfo;->clearBlocks:I

    iget-object v0, p0, Landroidx/media3/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    .line 111
    iput p1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iget-object p1, p0, Landroidx/media3/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    .line 112
    iput-object p2, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iget-object p1, p0, Landroidx/media3/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    .line 113
    iput-object p3, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iget-object p1, p0, Landroidx/media3/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    .line 114
    iput-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iget-object p1, p0, Landroidx/media3/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    .line 115
    iput-object p5, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iget-object p1, p0, Landroidx/media3/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    .line 116
    iput p6, p1, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 117
    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_0

    iget-object p0, p0, Landroidx/media3/decoder/CryptoInfo;->patternHolder:Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;

    .line 118
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;

    invoke-static {p0, p7, p8}, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;->access$100(Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;II)V

    :cond_0
    return-void
.end method
