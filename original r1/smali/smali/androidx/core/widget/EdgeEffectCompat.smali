.class public final Landroidx/core/widget/EdgeEffectCompat;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/EdgeEffectCompat$Api31Impl;,
        Landroidx/core/widget/EdgeEffectCompat$Api21Impl;
    }
.end annotation


# instance fields
.field private final mEdgeEffect:Landroid/widget/EdgeEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 70
    invoke-static {p0, p1}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object p0

    return-object p0
.end method

.method public static getDistance(Landroid/widget/EdgeEffect;)F
    .locals 0

    .line 91
    invoke-static {p0}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result p0

    return p0
.end method

.method public static onPull(Landroid/widget/EdgeEffect;FF)V
    .locals 0

    .line 198
    invoke-static {p0, p1, p2}, Landroidx/core/widget/EdgeEffectCompat$Api21Impl;->onPull(Landroid/widget/EdgeEffect;FF)V

    return-void
.end method

.method public static onPullDistance(Landroid/widget/EdgeEffect;FF)F
    .locals 0

    .line 246
    invoke-static {p0, p1, p2}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    .line 301
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p0

    return p0
.end method

.method public finish()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    .line 131
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    return-void
.end method

.method public isFinished()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    .line 120
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p0

    return p0
.end method

.method public onAbsorb(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    .line 283
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onPull(F)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    .line 149
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 p0, 0x1

    return p0
.end method

.method public onPull(FF)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    .line 174
    invoke-static {p0, p1, p2}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    const/4 p0, 0x1

    return p0
.end method

.method public onRelease()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    .line 264
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p0, p0, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    .line 265
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p0

    return p0
.end method

.method public setSize(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    .line 106
    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method
