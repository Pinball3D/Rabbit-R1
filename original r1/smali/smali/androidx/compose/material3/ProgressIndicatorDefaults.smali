.class public final Landroidx/compose/material3/ProgressIndicatorDefaults;
.super Ljava/lang/Object;
.source "ProgressIndicator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\t\u0010\u0006R\u001c\u0010\n\u001a\u00020\u000b\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000f\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u0010\u0010\u0006R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u00178G\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u00178G\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0019R\u001a\u0010\u001c\u001a\u00020\u00178G\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0019R\u001a\u0010\u001e\u001a\u00020\u00178G\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0019\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/compose/material3/ProgressIndicatorDefaults;",
        "",
        "()V",
        "CircularDeterminateStrokeCap",
        "Landroidx/compose/ui/graphics/StrokeCap;",
        "getCircularDeterminateStrokeCap-KaPHkGw",
        "()I",
        "I",
        "CircularIndeterminateStrokeCap",
        "getCircularIndeterminateStrokeCap-KaPHkGw",
        "CircularStrokeWidth",
        "Landroidx/compose/ui/unit/Dp;",
        "getCircularStrokeWidth-D9Ej5fM",
        "()F",
        "F",
        "LinearStrokeCap",
        "getLinearStrokeCap-KaPHkGw",
        "ProgressAnimationSpec",
        "Landroidx/compose/animation/core/SpringSpec;",
        "",
        "getProgressAnimationSpec",
        "()Landroidx/compose/animation/core/SpringSpec;",
        "circularColor",
        "Landroidx/compose/ui/graphics/Color;",
        "getCircularColor",
        "(Landroidx/compose/runtime/Composer;I)J",
        "circularTrackColor",
        "getCircularTrackColor",
        "linearColor",
        "getLinearColor",
        "linearTrackColor",
        "getLinearTrackColor",
        "material3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field private static final CircularDeterminateStrokeCap:I

.field private static final CircularIndeterminateStrokeCap:I

.field private static final CircularStrokeWidth:F

.field public static final INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

.field private static final LinearStrokeCap:I

.field private static final ProgressAnimationSpec:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/ProgressIndicatorDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    .line 521
    sget-object v0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->getActiveIndicatorWidth-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->CircularStrokeWidth:F

    .line 524
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v0

    sput v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->LinearStrokeCap:I

    .line 527
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v0

    sput v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->CircularDeterminateStrokeCap:I

    .line 530
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getSquare-KaPHkGw()I

    move-result v0

    sput v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->CircularIndeterminateStrokeCap:I

    .line 536
    new-instance v0, Landroidx/compose/animation/core/SpringSpec;

    const v1, 0x3a83126f    # 0.001f

    .line 541
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x42480000    # 50.0f

    .line 536
    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/animation/core/SpringSpec;-><init>(FFLjava/lang/Object;)V

    sput-object v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->ProgressAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCircularColor(Landroidx/compose/runtime/Composer;I)J
    .locals 2

    const p0, 0x6b7ceedd

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "C510@19873L9:ProgressIndicator.kt#uh7d8r"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.ProgressIndicatorDefaults.<get-circularColor> (ProgressIndicator.kt:509)"

    .line 511
    invoke-static {p0, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->getActiveIndicatorColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ColorSchemeKt;->toColor(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-wide v0
.end method

.method public final getCircularDeterminateStrokeCap-KaPHkGw()I
    .locals 0

    sget p0, Landroidx/compose/material3/ProgressIndicatorDefaults;->CircularDeterminateStrokeCap:I

    return p0
.end method

.method public final getCircularIndeterminateStrokeCap-KaPHkGw()I
    .locals 0

    sget p0, Landroidx/compose/material3/ProgressIndicatorDefaults;->CircularIndeterminateStrokeCap:I

    return p0
.end method

.method public final getCircularStrokeWidth-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/ProgressIndicatorDefaults;->CircularStrokeWidth:F

    return p0
.end method

.method public final getCircularTrackColor(Landroidx/compose/runtime/Composer;I)J
    .locals 2

    const p0, -0x1817f127

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "C:ProgressIndicator.kt#uh7d8r"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.ProgressIndicatorDefaults.<get-circularTrackColor> (ProgressIndicator.kt:517)"

    .line 518
    invoke-static {p0, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-wide v0
.end method

.method public final getLinearColor(Landroidx/compose/runtime/Composer;I)J
    .locals 2

    const p0, -0x367f4f17

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "C506@19692L9:ProgressIndicator.kt#uh7d8r"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.ProgressIndicatorDefaults.<get-linearColor> (ProgressIndicator.kt:505)"

    .line 507
    invoke-static {p0, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->getActiveIndicatorColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ColorSchemeKt;->toColor(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-wide v0
.end method

.method public final getLinearStrokeCap-KaPHkGw()I
    .locals 0

    sget p0, Landroidx/compose/material3/ProgressIndicatorDefaults;->LinearStrokeCap:I

    return p0
.end method

.method public final getLinearTrackColor(Landroidx/compose/runtime/Composer;I)J
    .locals 2

    const p0, 0x63fd40d9

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "C514@20049L9:ProgressIndicator.kt#uh7d8r"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.ProgressIndicatorDefaults.<get-linearTrackColor> (ProgressIndicator.kt:513)"

    .line 515
    invoke-static {p0, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->getTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ColorSchemeKt;->toColor(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-wide v0
.end method

.method public final getProgressAnimationSpec()Landroidx/compose/animation/core/SpringSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/SpringSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/compose/material3/ProgressIndicatorDefaults;->ProgressAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    return-object p0
.end method
