.class public Landroidx/core/view/ViewStructureCompat;
.super Ljava/lang/Object;
.source "ViewStructureCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ViewStructureCompat$Api23Impl;
    }
.end annotation


# instance fields
.field private final mWrappedObj:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/view/ViewStructure;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    return-void
.end method

.method public static toViewStructureCompat(Landroid/view/ViewStructure;)Landroidx/core/view/ViewStructureCompat;
    .locals 1

    .line 51
    new-instance v0, Landroidx/core/view/ViewStructureCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/ViewStructureCompat;-><init>(Landroid/view/ViewStructure;)V

    return-object v0
.end method


# virtual methods
.method public setClassName(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    .line 102
    check-cast p0, Landroid/view/ViewStructure;

    invoke-static {p0, p1}, Landroidx/core/view/ViewStructureCompat$Api23Impl;->setClassName(Landroid/view/ViewStructure;Ljava/lang/String;)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    .line 118
    check-cast p0, Landroid/view/ViewStructure;

    invoke-static {p0, p1}, Landroidx/core/view/ViewStructureCompat$Api23Impl;->setContentDescription(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDimens(IIIIII)V
    .locals 7

    iget-object p0, p0, Landroidx/core/view/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    .line 142
    move-object v0, p0

    check-cast v0, Landroid/view/ViewStructure;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewStructureCompat$Api23Impl;->setDimens(Landroid/view/ViewStructure;IIIIII)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    .line 86
    check-cast p0, Landroid/view/ViewStructure;

    invoke-static {p0, p1}, Landroidx/core/view/ViewStructureCompat$Api23Impl;->setText(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toViewStructure()Landroid/view/ViewStructure;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    .line 66
    check-cast p0, Landroid/view/ViewStructure;

    return-object p0
.end method
