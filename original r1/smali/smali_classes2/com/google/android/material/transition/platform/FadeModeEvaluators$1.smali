.class Lcom/google/android/material/transition/platform/FadeModeEvaluators$1;
.super Ljava/lang/Object;
.source "FadeModeEvaluators.java"

# interfaces
.implements Lcom/google/android/material/transition/platform/FadeModeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/FadeModeEvaluators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FFFF)Lcom/google/android/material/transition/platform/FadeModeResult;
    .locals 0

    const/4 p0, 0x0

    const/16 p4, 0xff

    .line 40
    invoke-static {p0, p4, p2, p3, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(IIFFF)I

    move-result p0

    .line 41
    invoke-static {p4, p0}, Lcom/google/android/material/transition/platform/FadeModeResult;->endOnTop(II)Lcom/google/android/material/transition/platform/FadeModeResult;

    move-result-object p0

    return-object p0
.end method
