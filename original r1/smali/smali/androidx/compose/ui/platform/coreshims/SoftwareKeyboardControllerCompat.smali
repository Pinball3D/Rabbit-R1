.class public final Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat;
.super Ljava/lang/Object;
.source "SoftwareKeyboardControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30;,
        Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl;,
        Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl20;
    }
.end annotation


# instance fields
.field private final mImpl:Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30;

    invoke-direct {v0, p1}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat;->mImpl:Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl;

    return-void
.end method

.method constructor <init>(Landroid/view/WindowInsetsController;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30;

    invoke-direct {v0, p1}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30;-><init>(Landroid/view/WindowInsetsController;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat;->mImpl:Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl;

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat;->mImpl:Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl;

    .line 81
    invoke-virtual {p0}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl;->hide()V

    return-void
.end method

.method public show()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat;->mImpl:Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl;

    .line 71
    invoke-virtual {p0}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl;->show()V

    return-void
.end method
