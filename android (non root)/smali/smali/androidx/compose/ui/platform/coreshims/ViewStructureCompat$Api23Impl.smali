.class Landroidx/compose/ui/platform/coreshims/ViewStructureCompat$Api23Impl;
.super Ljava/lang/Object;
.source "ViewStructureCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setClassName(Landroid/view/ViewStructure;Ljava/lang/String;)V
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    return-void
.end method

.method static setContentDescription(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V
    .locals 0

    .line 173
    invoke-virtual {p0, p1}, Landroid/view/ViewStructure;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static setDimens(Landroid/view/ViewStructure;IIIIII)V
    .locals 0

    .line 158
    invoke-virtual/range {p0 .. p6}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    return-void
.end method

.method static setText(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V
    .locals 0

    .line 163
    invoke-virtual {p0, p1}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
