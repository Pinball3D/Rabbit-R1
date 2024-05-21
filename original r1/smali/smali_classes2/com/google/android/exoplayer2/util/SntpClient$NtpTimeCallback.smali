.class final Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;
.super Ljava/lang/Object;
.source "SntpClient.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/SntpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NtpTimeCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/google/android/exoplayer2/upstream/Loader$Loadable;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;)V
    .locals 0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;->callback:Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    return-void
.end method


# virtual methods
.method public onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 0

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;->callback:Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    if-eqz p1, :cond_1

    .line 318
    invoke-static {}, Lcom/google/android/exoplayer2/util/SntpClient;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;->callback:Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    .line 321
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/util/ConcurrentModificationException;

    invoke-direct {p2}, Ljava/util/ConcurrentModificationException;-><init>()V

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;->onInitializationFailed(Ljava/io/IOException;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;->callback:Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    .line 323
    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;->onInitialized()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;->callback:Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    if-eqz p0, :cond_0

    .line 342
    invoke-interface {p0, p6}, Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;->onInitializationFailed(Ljava/io/IOException;)V

    .line 344
    :cond_0
    sget-object p0, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    return-object p0
.end method
