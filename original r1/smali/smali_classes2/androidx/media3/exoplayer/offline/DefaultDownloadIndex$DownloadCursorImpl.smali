.class final Landroidx/media3/exoplayer/offline/DefaultDownloadIndex$DownloadCursorImpl;
.super Ljava/lang/Object;
.source "DefaultDownloadIndex.java"

# interfaces
.implements Landroidx/media3/exoplayer/offline/DownloadCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;
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

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Landroidx/media3/exoplayer/offline/DefaultDownloadIndex$1;)V
    .locals 0

    .line 547
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex$DownloadCursorImpl;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    .line 577
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    .line 562
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    return p0
.end method

.method public getDownload()Landroidx/media3/exoplayer/offline/Download;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    .line 557
    invoke-static {p0}, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex;->access$100(Landroid/database/Cursor;)Landroidx/media3/exoplayer/offline/Download;

    move-result-object p0

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    .line 567
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result p0

    return p0
.end method

.method public isClosed()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    .line 582
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    return p0
.end method

.method public moveToPosition(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    .line 572
    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p0

    return p0
.end method
