.class public abstract Landroidx/media3/decoder/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# instance fields
.field private flags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addFlag(I)V
    .locals 1

    iget v0, p0, Landroidx/media3/decoder/Buffer;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/decoder/Buffer;->flags:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/decoder/Buffer;->flags:I

    return-void
.end method

.method public final clearFlag(I)V
    .locals 1

    iget v0, p0, Landroidx/media3/decoder/Buffer;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/decoder/Buffer;->flags:I

    return-void
.end method

.method protected final getFlag(I)Z
    .locals 0

    iget p0, p0, Landroidx/media3/decoder/Buffer;->flags:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasSupplementalData()Z
    .locals 1

    const/high16 v0, 0x10000000

    .line 59
    invoke-virtual {p0, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result p0

    return p0
.end method

.method public final isDecodeOnly()Z
    .locals 1

    const/high16 v0, -0x80000000

    .line 34
    invoke-virtual {p0, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result p0

    return p0
.end method

.method public final isEndOfStream()Z
    .locals 1

    const/4 v0, 0x4

    .line 44
    invoke-virtual {p0, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result p0

    return p0
.end method

.method public final isFirstSample()Z
    .locals 1

    const/high16 v0, 0x8000000

    .line 39
    invoke-virtual {p0, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result p0

    return p0
.end method

.method public final isKeyFrame()Z
    .locals 1

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result p0

    return p0
.end method

.method public final isLastSample()Z
    .locals 1

    const/high16 v0, 0x20000000

    .line 54
    invoke-virtual {p0, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result p0

    return p0
.end method

.method public final setFlags(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/decoder/Buffer;->flags:I

    return-void
.end method
