.class public final Landroidx/media3/common/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allowedCapturePolicy:I

.field private contentType:I

.field private flags:I

.field private spatializationBehavior:I

.field private usage:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/AudioAttributes$Builder;->contentType:I

    iput v0, p0, Landroidx/media3/common/AudioAttributes$Builder;->flags:I

    const/4 v1, 0x1

    iput v1, p0, Landroidx/media3/common/AudioAttributes$Builder;->usage:I

    iput v1, p0, Landroidx/media3/common/AudioAttributes$Builder;->allowedCapturePolicy:I

    iput v0, p0, Landroidx/media3/common/AudioAttributes$Builder;->spatializationBehavior:I

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/common/AudioAttributes;
    .locals 8

    .line 127
    new-instance v7, Landroidx/media3/common/AudioAttributes;

    iget v1, p0, Landroidx/media3/common/AudioAttributes$Builder;->contentType:I

    iget v2, p0, Landroidx/media3/common/AudioAttributes$Builder;->flags:I

    iget v3, p0, Landroidx/media3/common/AudioAttributes$Builder;->usage:I

    iget v4, p0, Landroidx/media3/common/AudioAttributes$Builder;->allowedCapturePolicy:I

    iget v5, p0, Landroidx/media3/common/AudioAttributes$Builder;->spatializationBehavior:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/media3/common/AudioAttributes;-><init>(IIIIILandroidx/media3/common/AudioAttributes$1;)V

    return-object v7
.end method

.method public setAllowedCapturePolicy(I)Landroidx/media3/common/AudioAttributes$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/AudioAttributes$Builder;->allowedCapturePolicy:I

    return-object p0
.end method

.method public setContentType(I)Landroidx/media3/common/AudioAttributes$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/AudioAttributes$Builder;->contentType:I

    return-object p0
.end method

.method public setFlags(I)Landroidx/media3/common/AudioAttributes$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/AudioAttributes$Builder;->flags:I

    return-object p0
.end method

.method public setSpatializationBehavior(I)Landroidx/media3/common/AudioAttributes$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/AudioAttributes$Builder;->spatializationBehavior:I

    return-object p0
.end method

.method public setUsage(I)Landroidx/media3/common/AudioAttributes$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/AudioAttributes$Builder;->usage:I

    return-object p0
.end method
