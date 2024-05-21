.class public final Landroidx/media3/extractor/mp4/AtomParsers$MvhdInfo;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MvhdInfo"
.end annotation


# instance fields
.field public final metadata:Landroidx/media3/common/Metadata;

.field public final timescale:J


# direct methods
.method public constructor <init>(Landroidx/media3/common/Metadata;J)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/AtomParsers$MvhdInfo;->metadata:Landroidx/media3/common/Metadata;

    iput-wide p2, p0, Landroidx/media3/extractor/mp4/AtomParsers$MvhdInfo;->timescale:J

    return-void
.end method
