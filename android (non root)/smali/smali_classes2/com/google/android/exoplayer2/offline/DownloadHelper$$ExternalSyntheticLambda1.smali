.class public final synthetic Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/offline/DownloadHelper;

.field public final synthetic f$1:Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadHelper;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda1;->f$1:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda1;->f$1:Ljava/io/IOException;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->lambda$onMediaPreparationFailed$5$com-google-android-exoplayer2-offline-DownloadHelper(Ljava/io/IOException;)V

    return-void
.end method
