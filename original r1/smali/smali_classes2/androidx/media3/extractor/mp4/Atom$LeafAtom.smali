.class final Landroidx/media3/extractor/mp4/Atom$LeafAtom;
.super Landroidx/media3/extractor/mp4/Atom;
.source "Atom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/Atom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LeafAtom"
.end annotation


# instance fields
.field public final data:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(ILandroidx/media3/common/util/ParsableByteArray;)V
    .locals 0

    .line 447
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/Atom;-><init>(I)V

    iput-object p2, p0, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method
