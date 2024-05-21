.class final Lcom/google/android/material/carousel/KeylineState$Keyline;
.super Ljava/lang/Object;
.source "KeylineState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/carousel/KeylineState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Keyline"
.end annotation


# instance fields
.field final cutoff:F

.field final isAnchor:Z

.field final loc:F

.field final locOffset:F

.field final mask:F

.field final maskedItemSize:F


# direct methods
.method constructor <init>(FFFF)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 590
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/carousel/KeylineState$Keyline;-><init>(FFFFZF)V

    return-void
.end method

.method constructor <init>(FFFFZF)V
    .locals 0

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    iput p2, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    iput p3, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iput p4, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iput-boolean p5, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    iput p6, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    return-void
.end method

.method static lerp(Lcom/google/android/material/carousel/KeylineState$Keyline;Lcom/google/android/material/carousel/KeylineState$Keyline;F)Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 5

    .line 624
    new-instance v0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    iget v2, p1, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 625
    invoke-static {v1, v2, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    iget v3, p1, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 626
    invoke-static {v2, v3, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v2

    iget v3, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget v4, p1, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    .line 627
    invoke-static {v3, v4, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v3

    iget p0, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iget p1, p1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    .line 628
    invoke-static {p0, p1, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/material/carousel/KeylineState$Keyline;-><init>(FFFF)V

    return-object v0
.end method
