.class Landroidx/transition/ViewGroupOverlayApi18;
.super Ljava/lang/Object;
.source "ViewGroupOverlayApi18.java"

# interfaces
.implements Landroidx/transition/ViewGroupOverlayImpl;


# instance fields
.field private final mViewGroupOverlay:Landroid/view/ViewGroupOverlay;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iput-object p1, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    .line 38
    invoke-virtual {p0, p1}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public add(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    .line 48
    invoke-virtual {p0, p1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    .line 43
    invoke-virtual {p0, p1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    .line 53
    invoke-virtual {p0, p1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method
