.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ChildScrollAlignment;
.super Ljava/lang/Object;
.source "ChildScrollAlignment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0004J&\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ChildScrollAlignment;",
        "",
        "()V",
        "alignment",
        "Lcom/rubensousa/dpadrecyclerview/ChildAlignment;",
        "getAlignment",
        "setAlignment",
        "",
        "alignmentConfig",
        "updateAlignments",
        "view",
        "Landroid/view/View;",
        "layoutParams",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;",
        "isVertical",
        "",
        "reverseLayout",
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


# instance fields
.field private alignment:Lcom/rubensousa/dpadrecyclerview/ChildAlignment;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v8, Lcom/rubensousa/dpadrecyclerview/ChildAlignment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/rubensousa/dpadrecyclerview/ChildAlignment;-><init>(IFZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ChildScrollAlignment;->alignment:Lcom/rubensousa/dpadrecyclerview/ChildAlignment;

    return-void
.end method


# virtual methods
.method public final getAlignment()Lcom/rubensousa/dpadrecyclerview/ChildAlignment;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ChildScrollAlignment;->alignment:Lcom/rubensousa/dpadrecyclerview/ChildAlignment;

    return-object p0
.end method

.method public final setAlignment(Lcom/rubensousa/dpadrecyclerview/ChildAlignment;)V
    .locals 1

    const-string v0, "alignmentConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ChildScrollAlignment;->alignment:Lcom/rubensousa/dpadrecyclerview/ChildAlignment;

    return-void
.end method

.method public final updateAlignments(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;ZZ)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ChildScrollAlignment;->alignment:Lcom/rubensousa/dpadrecyclerview/ChildAlignment;

    .line 43
    check-cast p0, Lcom/rubensousa/dpadrecyclerview/ViewAlignment;

    .line 40
    invoke-static {p1, p1, p0, p3, p4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ViewAnchorHelper;->calculateAnchor(Landroid/view/View;Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/ViewAlignment;ZZ)I

    move-result p0

    .line 45
    invoke-virtual {p2, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;->setAlignmentAnchor$dpadrecyclerview_release(I)V

    return-void
.end method
