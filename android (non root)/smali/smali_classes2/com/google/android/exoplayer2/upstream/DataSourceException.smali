.class public Lcom/google/android/exoplayer2/upstream/DataSourceException;
.super Ljava/io/IOException;
.source "DataSourceException.java"


# static fields
.field public static final POSITION_OUT_OF_RANGE:I = 0x7d8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final reason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p3, p0, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    iput p2, p0, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    return-void
.end method

.method public static isCausedByPositionOutOfRange(Ljava/io/IOException;)Z
    .locals 2

    :goto_0
    if-eqz p0, :cond_1

    .line 33
    instance-of v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    if-eqz v0, :cond_0

    .line 34
    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    iget v0, v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    const/16 v1, 0x7d8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 39
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
