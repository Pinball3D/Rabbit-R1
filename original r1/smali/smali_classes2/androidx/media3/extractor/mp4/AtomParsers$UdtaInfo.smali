.class public final Landroidx/media3/extractor/mp4/AtomParsers$UdtaInfo;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UdtaInfo"
.end annotation


# instance fields
.field public final metaMetadata:Landroidx/media3/common/Metadata;

.field public final smtaMetadata:Landroidx/media3/common/Metadata;

.field public final xyzMetadata:Landroidx/media3/common/Metadata;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Metadata;Landroidx/media3/common/Metadata;Landroidx/media3/common/Metadata;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/AtomParsers$UdtaInfo;->metaMetadata:Landroidx/media3/common/Metadata;

    iput-object p2, p0, Landroidx/media3/extractor/mp4/AtomParsers$UdtaInfo;->smtaMetadata:Landroidx/media3/common/Metadata;

    iput-object p3, p0, Landroidx/media3/extractor/mp4/AtomParsers$UdtaInfo;->xyzMetadata:Landroidx/media3/common/Metadata;

    return-void
.end method
