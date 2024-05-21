.class final Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;
.super Ljava/lang/Object;
.source "DefaultDownloadIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/DownloadCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadCursorImpl"
.end annotation


# instance fields
.field private final cursor:Landroid/database/Cursor;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$1;)V
    .locals 0

    .line 544
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    .line 574
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    .line 559
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    return p0
.end method

.method public getDownload()Lcom/google/android/exoplayer2/offline/Download;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    .line 554
    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->access$100(Landroid/database/Cursor;)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object p0

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    .line 564
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result p0

    return p0
.end method

.method public isClosed()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    .line 579
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    return p0
.end method

.method public moveToPosition(I)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    .line 569
    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p0

    return p0
.end method
