.class public final synthetic Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda1;->f$0:I

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->lambda$new$1(I)Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method
