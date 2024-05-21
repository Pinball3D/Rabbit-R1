.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/SubPositionScrollAlignment;
.super Ljava/lang/Object;
.source "SubPositionScrollAlignment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubPositionScrollAlignment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubPositionScrollAlignment.kt\ncom/rubensousa/dpadrecyclerview/layoutmanager/alignment/SubPositionScrollAlignment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n1864#2,3:84\n*S KotlinDebug\n*F\n+ 1 SubPositionScrollAlignment.kt\ncom/rubensousa/dpadrecyclerview/layoutmanager/alignment/SubPositionScrollAlignment\n*L\n54#1:84,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J:\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002J4\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00162\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/SubPositionScrollAlignment;",
        "",
        "()V",
        "calculateAnchor",
        "",
        "itemView",
        "Landroid/view/View;",
        "alignment",
        "Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;",
        "isVertical",
        "",
        "reverseLayout",
        "getAlignmentView",
        "getSubPositionAnchors",
        "",
        "alignments",
        "",
        "currentAnchors",
        "updateAlignments",
        "",
        "view",
        "layoutParams",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;",
        "dpadrecyclerview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final calculateAnchor(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;ZZ)I
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/SubPositionScrollAlignment;->getAlignmentView(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;)Landroid/view/View;

    move-result-object p0

    .line 68
    check-cast p2, Lcom/rubensousa/dpadrecyclerview/ViewAlignment;

    .line 67
    invoke-static {p1, p0, p2, p3, p4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ViewAnchorHelper;->calculateAnchor(Landroid/view/View;Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/ViewAlignment;ZZ)I

    move-result p0

    return p0
.end method

.method private final getAlignmentView(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;)Landroid/view/View;
    .locals 1

    .line 73
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->getAlignmentViewId()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 74
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->getAlignmentViewId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private final getSubPositionAnchors(Landroid/view/View;Ljava/util/List;[IZZ)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;",
            ">;[IZZ)[I"
        }
    .end annotation

    .line 46
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    .line 49
    array-length v0, p3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 50
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [I

    .line 54
    :cond_2
    check-cast p2, Ljava/lang/Iterable;

    .line 85
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    check-cast v1, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;

    .line 55
    invoke-direct {p0, p1, v1, p4, p5}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/SubPositionScrollAlignment;->calculateAnchor(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;ZZ)I

    move-result v1

    aput v1, p3, v0

    move v0, v2

    goto :goto_0

    :cond_4
    return-object p3
.end method


# virtual methods
.method public final updateAlignments(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;Ljava/util/List;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;",
            "Ljava/util/List<",
            "Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;",
            ">;ZZ)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignments"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;->getSubPositionAnchors$dpadrecyclerview_release()[I

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v5, p4

    move v6, p5

    .line 33
    invoke-direct/range {v1 .. v6}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/SubPositionScrollAlignment;->getSubPositionAnchors(Landroid/view/View;Ljava/util/List;[IZZ)[I

    move-result-object p0

    .line 36
    invoke-virtual {p2, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;->setSubPositionAnchors$dpadrecyclerview_release([I)V

    return-void
.end method
