.class public final Landroidx/media3/exoplayer/DefaultLoadControl$Builder;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/DefaultLoadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

.field private backBufferDurationMs:I

.field private bufferForPlaybackAfterRebufferMs:I

.field private bufferForPlaybackMs:I

.field private buildCalled:Z

.field private maxBufferMs:I

.field private minBufferMs:I

.field private prioritizeTimeOverSizeThresholds:Z

.field private retainBackBufferFromKeyframe:Z

.field private targetBufferBytes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xc350

    iput v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->minBufferMs:I

    iput v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->maxBufferMs:I

    const/16 v0, 0x9c4

    iput v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->bufferForPlaybackMs:I

    const/16 v0, 0x1388

    iput v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->bufferForPlaybackAfterRebufferMs:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->targetBufferBytes:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->prioritizeTimeOverSizeThresholds:Z

    iput v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->backBufferDurationMs:I

    iput-boolean v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->retainBackBufferFromKeyframe:Z

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/DefaultLoadControl;
    .locals 13

    iget-boolean v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 237
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-boolean v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->buildCalled:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>(ZI)V

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    .line 242
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/DefaultLoadControl;

    iget-object v4, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    iget v5, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->minBufferMs:I

    iget v6, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->maxBufferMs:I

    iget v7, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->bufferForPlaybackMs:I

    iget v8, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->bufferForPlaybackAfterRebufferMs:I

    iget v9, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->targetBufferBytes:I

    iget-boolean v10, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->prioritizeTimeOverSizeThresholds:Z

    iget v11, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->backBufferDurationMs:I

    iget-boolean v12, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->retainBackBufferFromKeyframe:Z

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Landroidx/media3/exoplayer/DefaultLoadControl;-><init>(Landroidx/media3/exoplayer/upstream/DefaultAllocator;IIIIIZIZ)V

    return-object v0
.end method

.method public setAllocator(Landroidx/media3/exoplayer/upstream/DefaultAllocator;)Landroidx/media3/exoplayer/DefaultLoadControl$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 141
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    return-object p0
.end method

.method public setBackBuffer(IZ)Landroidx/media3/exoplayer/DefaultLoadControl$Builder;
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 228
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    const-string v0, "backBufferDurationMs"

    const-string v1, "0"

    const/4 v2, 0x0

    .line 229
    invoke-static {p1, v2, v0, v1}, Landroidx/media3/exoplayer/DefaultLoadControl;->access$000(IILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->backBufferDurationMs:I

    iput-boolean p2, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->retainBackBufferFromKeyframe:Z

    return-object p0
.end method

.method public setBufferDurationsMs(IIII)Landroidx/media3/exoplayer/DefaultLoadControl$Builder;
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 167
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    const/4 v0, 0x0

    const-string v1, "bufferForPlaybackMs"

    const-string v2, "0"

    .line 168
    invoke-static {p3, v0, v1, v2}, Landroidx/media3/exoplayer/DefaultLoadControl;->access$000(IILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "bufferForPlaybackAfterRebufferMs"

    .line 169
    invoke-static {p4, v0, v3, v2}, Landroidx/media3/exoplayer/DefaultLoadControl;->access$000(IILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "minBufferMs"

    .line 171
    invoke-static {p1, p3, v0, v1}, Landroidx/media3/exoplayer/DefaultLoadControl;->access$000(IILjava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {p1, p4, v0, v3}, Landroidx/media3/exoplayer/DefaultLoadControl;->access$000(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "maxBufferMs"

    .line 177
    invoke-static {p2, p1, v1, v0}, Landroidx/media3/exoplayer/DefaultLoadControl;->access$000(IILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->minBufferMs:I

    iput p2, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->maxBufferMs:I

    iput p3, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->bufferForPlaybackMs:I

    iput p4, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->bufferForPlaybackAfterRebufferMs:I

    return-object p0
.end method

.method public setPrioritizeTimeOverSizeThresholds(Z)Landroidx/media3/exoplayer/DefaultLoadControl$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 211
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->prioritizeTimeOverSizeThresholds:Z

    return-object p0
.end method

.method public setTargetBufferBytes(I)Landroidx/media3/exoplayer/DefaultLoadControl$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 195
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput p1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->targetBufferBytes:I

    return-object p0
.end method
