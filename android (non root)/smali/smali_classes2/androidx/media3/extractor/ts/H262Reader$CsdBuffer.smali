.class final Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;
.super Ljava/lang/Object;
.source "H262Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/H262Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CsdBuffer"
.end annotation


# static fields
.field private static final START_CODE:[B


# instance fields
.field public data:[B

.field private isFilling:Z

.field public length:I

.field public sequenceExtensionPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->START_CODE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->data:[B

    return-void
.end method


# virtual methods
.method public onData([BII)V
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr p3, p2

    iget-object v0, p0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->data:[B

    .line 343
    array-length v1, v0

    iget v2, p0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->length:I

    add-int v3, v2, p3

    if-ge v1, v3, :cond_1

    add-int/2addr v2, p3

    mul-int/lit8 v2, v2, 0x2

    .line 344
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->data:[B

    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->data:[B

    iget v1, p0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->length:I

    .line 346
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->length:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->length:I

    return-void
.end method

.method public onStartCode(II)Z
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->length:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->length:I

    iget p2, p0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    if-nez p2, :cond_0

    const/16 p2, 0xb5

    if-ne p1, p2, :cond_0

    iput v0, p0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    return v1

    :cond_1
    const/16 p2, 0xb3

    if-ne p1, p2, :cond_2

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    :cond_2
    :goto_0
    sget-object p1, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->START_CODE:[B

    .line 327
    array-length p2, p1

    invoke-virtual {p0, p1, v2, p2}, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    return v2
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    iput v0, p0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->length:I

    iput v0, p0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    return-void
.end method
