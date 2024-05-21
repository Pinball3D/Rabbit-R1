.class final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ManifestLoadErrorThrower"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;->this$0:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 1415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private maybeThrowManifestError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;->this$0:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 1430
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->access$800(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;->this$0:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 1431
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->access$800(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;->this$0:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 1419
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->access$700(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)Lcom/google/android/exoplayer2/upstream/Loader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 1420
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;->maybeThrowManifestError()V

    return-void
.end method

.method public maybeThrowError(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;->this$0:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 1425
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->access$700(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)Lcom/google/android/exoplayer2/upstream/Loader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError(I)V

    .line 1426
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;->maybeThrowManifestError()V

    return-void
.end method
