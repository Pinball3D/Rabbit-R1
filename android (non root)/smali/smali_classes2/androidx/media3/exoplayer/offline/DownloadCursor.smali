.class public interface abstract Landroidx/media3/exoplayer/offline/DownloadCursor;
.super Ljava/lang/Object;
.source "DownloadCursor.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract getCount()I
.end method

.method public abstract getDownload()Landroidx/media3/exoplayer/offline/Download;
.end method

.method public abstract getPosition()I
.end method

.method public isAfterLast()Z
    .locals 2

    .line 120
    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 123
    :cond_0
    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getPosition()I

    move-result v0

    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getCount()I

    move-result p0

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isBeforeFirst()Z
    .locals 2

    .line 112
    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 115
    :cond_0
    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getPosition()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public abstract isClosed()Z
.end method

.method public isFirst()Z
    .locals 1

    .line 101
    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getPosition()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getCount()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLast()Z
    .locals 2

    .line 106
    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getCount()I

    move-result v0

    .line 107
    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getPosition()I

    move-result p0

    add-int/lit8 v1, v0, -0x1

    if-ne p0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public moveToFirst()Z
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->moveToPosition(I)Z

    move-result p0

    return p0
.end method

.method public moveToLast()Z
    .locals 1

    .line 72
    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->moveToPosition(I)Z

    move-result p0

    return p0
.end method

.method public moveToNext()Z
    .locals 1

    .line 84
    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->moveToPosition(I)Z

    move-result p0

    return p0
.end method

.method public abstract moveToPosition(I)Z
.end method

.method public moveToPrevious()Z
    .locals 1

    .line 96
    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->moveToPosition(I)Z

    move-result p0

    return p0
.end method
