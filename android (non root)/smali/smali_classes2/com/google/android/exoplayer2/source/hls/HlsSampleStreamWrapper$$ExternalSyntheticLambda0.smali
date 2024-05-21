.class public final synthetic Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onPrepared()V

    return-void
.end method
