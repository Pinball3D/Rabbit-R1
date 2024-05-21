.class final Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
.super Landroidx/media3/extractor/mp4/Atom;
.source "Atom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/Atom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContainerAtom"
.end annotation


# instance fields
.field public final containerChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field public final endPosition:J

.field public final leafChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/extractor/mp4/Atom$LeafAtom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 464
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/Atom;-><init>(I)V

    iput-wide p2, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    .line 466
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 467
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    .line 485
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Landroidx/media3/extractor/mp4/Atom$LeafAtom;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 476
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getChildAtomOfTypeCount(I)I
    .locals 5

    iget-object v0, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 538
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 540
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    .line 541
    iget v4, v4, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->type:I

    if-ne v4, p1, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    .line 545
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    .line 547
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    .line 548
    iget v2, v2, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->type:I

    if-ne v2, p1, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v3
.end method

.method public getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    .locals 4

    iget-object v0, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    .line 520
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    .line 522
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    .line 523
    iget v3, v2, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->type:I

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    .locals 4

    iget-object v0, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 499
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 501
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    .line 502
    iget v3, v2, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->type:I

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->type:I

    invoke-static {v1}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " leaves: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 559
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " containers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    .line 561
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
