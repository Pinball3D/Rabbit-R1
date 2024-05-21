.class public final Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;
.super Ljava/lang/Object;
.source "LoadErrorHandlingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadErrorInfo"
.end annotation


# instance fields
.field public final errorCount:I

.field public final exception:Ljava/io/IOException;

.field public final loadEventInfo:Lcom/google/android/exoplayer2/source/LoadEventInfo;

.field public final mediaLoadData:Lcom/google/android/exoplayer2/source/MediaLoadData;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;I)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->loadEventInfo:Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->mediaLoadData:Lcom/google/android/exoplayer2/source/MediaLoadData;

    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->exception:Ljava/io/IOException;

    iput p4, p0, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->errorCount:I

    return-void
.end method
