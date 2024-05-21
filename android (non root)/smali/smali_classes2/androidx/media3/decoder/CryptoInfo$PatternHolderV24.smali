.class final Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;
.super Ljava/lang/Object;
.source "CryptoInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/decoder/CryptoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PatternHolderV24"
.end annotation


# instance fields
.field private final frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

.field private final pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec$CryptoInfo;)V
    .locals 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    .line 166
    new-instance p1, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec$CryptoInfo;Landroidx/media3/decoder/CryptoInfo$1;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;-><init>(Landroid/media/MediaCodec$CryptoInfo;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;II)V
    .locals 0

    .line 159
    invoke-direct {p0, p1, p2}, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;->set(II)V

    return-void
.end method

.method private set(II)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 170
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    iget-object p1, p0, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object p0, p0, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 171
    invoke-virtual {p1, p0}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    return-void
.end method
