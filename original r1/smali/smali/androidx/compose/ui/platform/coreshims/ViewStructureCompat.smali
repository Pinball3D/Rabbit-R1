.class public Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;
.super Ljava/lang/Object;
.source "ViewStructureCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/coreshims/ViewStructureCompat$Api23Impl;
    }
.end annotation


# instance fields
.field private final mWrappedObj:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/view/ViewStructure;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    return-void
.end method

.method public static toViewStructureCompat(Landroid/view/ViewStructure;)Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;
    .locals 1

    .line 53
    new-instance v0, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;

    invoke-direct {v0, p0}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;-><init>(Landroid/view/ViewStructure;)V

    return-object v0
.end method


# virtual methods
.method public setClassName(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    .line 104
    check-cast p0, Landroid/view/ViewStructure;

    invoke-static {p0, p1}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat$Api23Impl;->setClassName(Landroid/view/ViewStructure;Ljava/lang/String;)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    .line 120
    check-cast p0, Landroid/view/ViewStructure;

    invoke-static {p0, p1}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat$Api23Impl;->setContentDescription(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDimens(IIIIII)V
    .locals 7

    iget-object p0, p0, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    .line 144
    move-object v0, p0

    check-cast v0, Landroid/view/ViewStructure;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat$Api23Impl;->setDimens(Landroid/view/ViewStructure;IIIIII)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    .line 88
    check-cast p0, Landroid/view/ViewStructure;

    invoke-static {p0, p1}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat$Api23Impl;->setText(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toViewStructure()Landroid/view/ViewStructure;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    .line 68
    check-cast p0, Landroid/view/ViewStructure;

    return-object p0
.end method
