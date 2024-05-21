.class public final Landroidx/compose/material3/ProgressIndicatorKt;
.super Ljava/lang/Object;
.source "ProgressIndicator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProgressIndicator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProgressIndicator.kt\nandroidx/compose/material3/ProgressIndicatorKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 6 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,612:1\n83#2,3:613\n83#2,3:622\n1114#3,6:616\n1114#3,6:625\n76#4:631\n76#4:632\n75#5,7:633\n92#5:641\n58#5:642\n154#6:640\n*S KotlinDebug\n*F\n+ 1 ProgressIndicator.kt\nandroidx/compose/material3/ProgressIndicatorKt\n*L\n85#1:613,3\n166#1:622,3\n85#1:616,6\n166#1:625,6\n296#1:631\n336#1:632\n487#1:633,7\n558#1:641\n558#1:642\n549#1:640\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0018\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u001a3\u0010\"\u001a\u00020#2\u0008\u0008\u0002\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010&\u001a\u00020\'2\u0008\u0008\u0002\u0010(\u001a\u00020\u0005H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010*\u001aG\u0010\"\u001a\u00020#2\u0008\u0008\u0002\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010&\u001a\u00020\'2\u0008\u0008\u0002\u0010(\u001a\u00020\u00052\u0008\u0008\u0002\u0010+\u001a\u00020\'2\u0008\u0008\u0002\u0010,\u001a\u00020-H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008.\u0010/\u001a;\u0010\"\u001a\u00020#2\u0006\u00100\u001a\u00020\u00012\u0008\u0008\u0002\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010&\u001a\u00020\'2\u0008\u0008\u0002\u0010(\u001a\u00020\u0005H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00081\u00102\u001aO\u0010\"\u001a\u00020#2\u0006\u00100\u001a\u00020\u00012\u0008\u0008\u0002\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010&\u001a\u00020\'2\u0008\u0008\u0002\u0010(\u001a\u00020\u00052\u0008\u0008\u0002\u0010+\u001a\u00020\'2\u0008\u0008\u0002\u0010,\u001a\u00020-H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00083\u00104\u001a3\u00105\u001a\u00020#2\u0008\u0008\u0002\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010&\u001a\u00020\'2\u0008\u0008\u0002\u0010+\u001a\u00020\'H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00086\u00107\u001a=\u00105\u001a\u00020#2\u0008\u0008\u0002\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010&\u001a\u00020\'2\u0008\u0008\u0002\u0010+\u001a\u00020\'2\u0008\u0008\u0002\u0010,\u001a\u00020-H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00088\u00109\u001a;\u00105\u001a\u00020#2\u0006\u00100\u001a\u00020\u00012\u0008\u0008\u0002\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010&\u001a\u00020\'2\u0008\u0008\u0002\u0010+\u001a\u00020\'H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008:\u0010;\u001aE\u00105\u001a\u00020#2\u0006\u00100\u001a\u00020\u00012\u0008\u0008\u0002\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010&\u001a\u00020\'2\u0008\u0008\u0002\u0010+\u001a\u00020\'2\u0008\u0008\u0002\u0010,\u001a\u00020-H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008<\u0010=\u001a9\u0010>\u001a\u00020#*\u00020?2\u0006\u0010@\u001a\u00020\u00012\u0006\u0010A\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\'2\u0006\u0010B\u001a\u00020CH\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008D\u0010E\u001a)\u0010F\u001a\u00020#*\u00020?2\u0006\u0010&\u001a\u00020\'2\u0006\u0010B\u001a\u00020CH\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008G\u0010H\u001a9\u0010I\u001a\u00020#*\u00020?2\u0006\u0010@\u001a\u00020\u00012\u0006\u0010A\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\'2\u0006\u0010B\u001a\u00020CH\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008J\u0010E\u001aA\u0010K\u001a\u00020#*\u00020?2\u0006\u0010@\u001a\u00020\u00012\u0006\u0010(\u001a\u00020\u00052\u0006\u0010A\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\'2\u0006\u0010B\u001a\u00020CH\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008L\u0010M\u001aA\u0010N\u001a\u00020#*\u00020?2\u0006\u0010O\u001a\u00020\u00012\u0006\u0010P\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u00012\u0006\u0010,\u001a\u00020-H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008Q\u0010R\u001a1\u0010S\u001a\u00020#*\u00020?2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u00012\u0006\u0010,\u001a\u00020-H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008T\u0010U\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0019\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007\"\u000e\u0010\t\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000c\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0012\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0013\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u0019\u0010\u0014\u001a\u00020\u0005X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0015\u0010\u0007\"\u0019\u0010\u0016\u001a\u00020\u0005X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0017\u0010\u0007\"\u000e\u0010\u0018\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0019\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001a\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001b\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001c\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001d\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001e\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001f\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010 \u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010!\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006V"
    }
    d2 = {
        "BaseRotationAngle",
        "",
        "CircularEasing",
        "Landroidx/compose/animation/core/CubicBezierEasing;",
        "CircularIndicatorDiameter",
        "Landroidx/compose/ui/unit/Dp;",
        "getCircularIndicatorDiameter",
        "()F",
        "F",
        "FirstLineHeadDelay",
        "",
        "FirstLineHeadDuration",
        "FirstLineHeadEasing",
        "FirstLineTailDelay",
        "FirstLineTailDuration",
        "FirstLineTailEasing",
        "HeadAndTailAnimationDuration",
        "HeadAndTailDelayDuration",
        "JumpRotationAngle",
        "LinearAnimationDuration",
        "LinearIndicatorHeight",
        "getLinearIndicatorHeight",
        "LinearIndicatorWidth",
        "getLinearIndicatorWidth",
        "RotationAngleOffset",
        "RotationDuration",
        "RotationsPerCycle",
        "SecondLineHeadDelay",
        "SecondLineHeadDuration",
        "SecondLineHeadEasing",
        "SecondLineTailDelay",
        "SecondLineTailDuration",
        "SecondLineTailEasing",
        "StartAngleOffset",
        "CircularProgressIndicator",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "color",
        "Landroidx/compose/ui/graphics/Color;",
        "strokeWidth",
        "CircularProgressIndicator-aM-cp0Q",
        "(Landroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V",
        "trackColor",
        "strokeCap",
        "Landroidx/compose/ui/graphics/StrokeCap;",
        "CircularProgressIndicator-LxG7B9w",
        "(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V",
        "progress",
        "CircularProgressIndicator-MBs18nI",
        "(FLandroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V",
        "CircularProgressIndicator-DUhRLBM",
        "(FLandroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V",
        "LinearProgressIndicator",
        "LinearProgressIndicator-RIQooxk",
        "(Landroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/Composer;II)V",
        "LinearProgressIndicator-2cYBFYY",
        "(Landroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V",
        "LinearProgressIndicator-eaDK9VM",
        "(FLandroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/Composer;II)V",
        "LinearProgressIndicator-_5eSR-E",
        "(FLandroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V",
        "drawCircularIndicator",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "startAngle",
        "sweep",
        "stroke",
        "Landroidx/compose/ui/graphics/drawscope/Stroke;",
        "drawCircularIndicator-42QJj7c",
        "(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V",
        "drawCircularIndicatorTrack",
        "drawCircularIndicatorTrack-bw27NRU",
        "(Landroidx/compose/ui/graphics/drawscope/DrawScope;JLandroidx/compose/ui/graphics/drawscope/Stroke;)V",
        "drawDeterminateCircularIndicator",
        "drawDeterminateCircularIndicator-42QJj7c",
        "drawIndeterminateCircularIndicator",
        "drawIndeterminateCircularIndicator-hrjfTZI",
        "(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V",
        "drawLinearIndicator",
        "startFraction",
        "endFraction",
        "drawLinearIndicator-qYKTg0g",
        "(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJFI)V",
        "drawLinearIndicatorTrack",
        "drawLinearIndicatorTrack-AZGd3zU",
        "(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFI)V",
        "material3_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BaseRotationAngle:F = 286.0f

.field private static final CircularEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final CircularIndicatorDiameter:F

.field private static final FirstLineHeadDelay:I = 0x0

.field private static final FirstLineHeadDuration:I = 0x2ee

.field private static final FirstLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final FirstLineTailDelay:I = 0x14d

.field private static final FirstLineTailDuration:I = 0x352

.field private static final FirstLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final HeadAndTailAnimationDuration:I = 0x29a

.field private static final HeadAndTailDelayDuration:I = 0x29a

.field private static final JumpRotationAngle:F = 290.0f

.field private static final LinearAnimationDuration:I = 0x708

.field private static final LinearIndicatorHeight:F

.field private static final LinearIndicatorWidth:F

.field private static final RotationAngleOffset:F = 216.0f

.field private static final RotationDuration:I = 0x534

.field private static final RotationsPerCycle:I = 0x5

.field private static final SecondLineHeadDelay:I = 0x3e8

.field private static final SecondLineHeadDuration:I = 0x237

.field private static final SecondLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final SecondLineTailDelay:I = 0x4f3

.field private static final SecondLineTailDuration:I = 0x215

.field private static final SecondLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final StartAngleOffset:F = -90.0f


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0xf0

    int-to-float v0, v0

    .line 640
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/ProgressIndicatorKt;->LinearIndicatorWidth:F

    .line 552
    sget-object v0, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->getTrackHeight-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/ProgressIndicatorKt;->LinearIndicatorHeight:F

    .line 558
    sget-object v0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->getSize-D9Ej5fM()F

    move-result v0

    sget-object v1, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->getActiveIndicatorWidth-D9Ej5fM()F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 641
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sub-float/2addr v0, v1

    .line 642
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    .line 577
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->FirstLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 578
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v2, v4, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->FirstLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 579
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v5, 0x3f266666    # 0.65f

    invoke-direct {v0, v2, v2, v5, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->SecondLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 580
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3ee66666    # 0.45f

    invoke-direct {v0, v5, v2, v6, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->SecondLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 611
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-direct {v0, v3, v2, v1, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->CircularEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-void
.end method

.method public static final CircularProgressIndicator-DUhRLBM(FLandroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V
    .locals 18

    move/from16 v1, p0

    move/from16 v9, p9

    const v0, -0x57c1d8cf

    move-object/from16 v2, p8

    .line 294
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    const-string v3, "C(CircularProgressIndicator)P(2,1,0:c#ui.graphics.Color,4:c#ui.unit.Dp,5:c#ui.graphics.Color,3:c#ui.graphics.StrokeCap)289@11687L13,291@11821L18,*295@12015L7,298@12096L365:ProgressIndicator.kt#uh7d8r"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, p10, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v9, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v9, 0xe

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v9

    goto :goto_1

    :cond_2
    move v3, v9

    :goto_1
    and-int/lit8 v4, p10, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v9, 0x70

    if-nez v5, :cond_5

    move-object/from16 v5, p1

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v5, p1

    :goto_4
    and-int/lit16 v6, v9, 0x380

    if-nez v6, :cond_8

    and-int/lit8 v6, p10, 0x4

    if-nez v6, :cond_6

    move-wide/from16 v6, p2

    invoke-interface {v2, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_5

    :cond_6
    move-wide/from16 v6, p2

    :cond_7
    const/16 v8, 0x80

    :goto_5
    or-int/2addr v3, v8

    goto :goto_6

    :cond_8
    move-wide/from16 v6, p2

    :goto_6
    and-int/lit8 v8, p10, 0x8

    if-eqz v8, :cond_9

    or-int/lit16 v3, v3, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v10, v9, 0x1c00

    if-nez v10, :cond_b

    move/from16 v10, p4

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x800

    goto :goto_7

    :cond_a
    const/16 v11, 0x400

    :goto_7
    or-int/2addr v3, v11

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v10, p4

    :goto_9
    const v11, 0xe000

    and-int/2addr v11, v9

    if-nez v11, :cond_e

    and-int/lit8 v11, p10, 0x10

    if-nez v11, :cond_c

    move-wide/from16 v11, p5

    invoke-interface {v2, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x4000

    goto :goto_a

    :cond_c
    move-wide/from16 v11, p5

    :cond_d
    const/16 v13, 0x2000

    :goto_a
    or-int/2addr v3, v13

    goto :goto_b

    :cond_e
    move-wide/from16 v11, p5

    :goto_b
    and-int/lit8 v13, p10, 0x20

    if-eqz v13, :cond_f

    const/high16 v14, 0x30000

    or-int/2addr v3, v14

    goto :goto_d

    :cond_f
    const/high16 v14, 0x70000

    and-int/2addr v14, v9

    if-nez v14, :cond_11

    move/from16 v14, p7

    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v15

    if-eqz v15, :cond_10

    const/high16 v15, 0x20000

    goto :goto_c

    :cond_10
    const/high16 v15, 0x10000

    :goto_c
    or-int/2addr v3, v15

    goto :goto_e

    :cond_11
    :goto_d
    move/from16 v14, p7

    :goto_e
    const v15, 0x5b6db

    and-int/2addr v3, v15

    const v15, 0x12492

    if-ne v3, v15, :cond_14

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_10

    .line 310
    :cond_12
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_13
    :goto_f
    move-wide v3, v6

    move-wide v6, v11

    move v8, v14

    goto/16 :goto_13

    .line 294
    :cond_14
    :goto_10
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v3, v9, 0x1

    if-eqz v3, :cond_16

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_11

    .line 293
    :cond_15
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_12

    :cond_16
    :goto_11
    if-eqz v4, :cond_17

    .line 289
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    move-object v5, v3

    :cond_17
    and-int/lit8 v3, p10, 0x4

    const/4 v4, 0x6

    if-eqz v3, :cond_18

    .line 290
    sget-object v3, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v3, v2, v4}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v6

    :cond_18
    if-eqz v8, :cond_19

    .line 291
    sget-object v3, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v3}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularStrokeWidth-D9Ej5fM()F

    move-result v3

    move v10, v3

    :cond_19
    and-int/lit8 v3, p10, 0x10

    if-eqz v3, :cond_1a

    .line 292
    sget-object v3, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v3, v2, v4}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v3

    move-wide v11, v3

    :cond_1a
    if-eqz v13, :cond_1b

    .line 293
    sget-object v3, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v3}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularDeterminateStrokeCap-KaPHkGw()I

    move-result v3

    move v14, v3

    :cond_1b
    :goto_12
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v3, -0x1

    const-string v4, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:286)"

    .line 294
    invoke-static {v0, v9, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1c
    const/4 v0, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 295
    invoke-static {v1, v0, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    .line 296
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    const v4, 0x789c5f52

    const-string v8, "CC:CompositionLocal.kt#9igjgp"

    .line 631
    invoke-static {v2, v4, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 296
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 297
    new-instance v4, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-interface {v3, v10}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v3

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1a

    const/16 v17, 0x0

    move-object/from16 p1, v4

    move/from16 p2, v3

    move/from16 p3, v8

    move/from16 p4, v14

    move/from16 p5, v13

    move-object/from16 p6, v15

    move/from16 p7, v16

    move-object/from16 p8, v17

    invoke-direct/range {p1 .. p8}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x6

    move-object/from16 p1, v5

    move/from16 p2, v0

    move-object/from16 p3, v3

    move/from16 p4, v8

    move/from16 p5, v13

    .line 301
    invoke-static/range {p1 .. p6}, Landroidx/compose/foundation/ProgressSemanticsKt;->progressSemantics$default(Landroidx/compose/ui/Modifier;FLkotlin/ranges/ClosedFloatingPointRange;IILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget v8, Landroidx/compose/material3/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    .line 302
    invoke-static {v3, v8}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 299
    new-instance v8, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$1;

    move-object/from16 p1, v8

    move-wide/from16 p3, v11

    move-object/from16 p5, v4

    move-wide/from16 p6, v6

    invoke-direct/range {p1 .. p7}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$1;-><init>(FJLandroidx/compose/ui/graphics/drawscope/Stroke;J)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-static {v3, v8, v2, v0}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto/16 :goto_f

    .line 310
    :goto_13
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-nez v11, :cond_1d

    goto :goto_14

    :cond_1d
    new-instance v12, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$2;

    move-object v0, v12

    move/from16 v1, p0

    move-object v2, v5

    move v5, v10

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$2;-><init>(FLandroidx/compose/ui/Modifier;JFJIII)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_14
    return-void
.end method

.method public static final CircularProgressIndicator-LxG7B9w(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V
    .locals 23

    move/from16 v8, p8

    const v0, -0x6e80f9f

    move-object/from16 v1, p7

    .line 335
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v2, "C(CircularProgressIndicator)P(1,0:c#ui.graphics.Color,3:c#ui.unit.Dp,4:c#ui.graphics.Color,2:c#ui.graphics.StrokeCap)330@13521L13,332@13655L18,*335@13799L7,339@13898L28,341@14055L278,353@14447L230,364@14794L345,375@15172L354,386@15531L737:ProgressIndicator.kt#uh7d8r"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p9, 0x1

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    or-int/lit8 v4, v8, 0x6

    move v5, v4

    move-object/from16 v4, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v8, 0xe

    if-nez v4, :cond_2

    move-object/from16 v4, p0

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    or-int/2addr v5, v8

    goto :goto_1

    :cond_2
    move-object/from16 v4, p0

    move v5, v8

    :goto_1
    and-int/lit8 v6, v8, 0x70

    if-nez v6, :cond_5

    and-int/lit8 v6, p9, 0x2

    if-nez v6, :cond_3

    move-wide/from16 v6, p1

    invoke-interface {v1, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x20

    goto :goto_2

    :cond_3
    move-wide/from16 v6, p1

    :cond_4
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v5, v9

    goto :goto_3

    :cond_5
    move-wide/from16 v6, p1

    :goto_3
    and-int/lit8 v9, p9, 0x4

    if-eqz v9, :cond_6

    or-int/lit16 v5, v5, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v10, v8, 0x380

    if-nez v10, :cond_8

    move/from16 v10, p3

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x100

    goto :goto_4

    :cond_7
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v5, v11

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v10, p3

    :goto_6
    and-int/lit16 v11, v8, 0x1c00

    if-nez v11, :cond_b

    and-int/lit8 v11, p9, 0x8

    if-nez v11, :cond_9

    move-wide/from16 v11, p4

    invoke-interface {v1, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v13, 0x800

    goto :goto_7

    :cond_9
    move-wide/from16 v11, p4

    :cond_a
    const/16 v13, 0x400

    :goto_7
    or-int/2addr v5, v13

    goto :goto_8

    :cond_b
    move-wide/from16 v11, p4

    :goto_8
    and-int/lit8 v13, p9, 0x10

    if-eqz v13, :cond_c

    or-int/lit16 v5, v5, 0x6000

    goto :goto_a

    :cond_c
    const v14, 0xe000

    and-int/2addr v14, v8

    if-nez v14, :cond_e

    move/from16 v14, p6

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v15

    if-eqz v15, :cond_d

    const/16 v15, 0x4000

    goto :goto_9

    :cond_d
    const/16 v15, 0x2000

    :goto_9
    or-int/2addr v5, v15

    goto :goto_b

    :cond_e
    :goto_a
    move/from16 v14, p6

    :goto_b
    const v15, 0xb6db

    and-int/2addr v5, v15

    const/16 v15, 0x2492

    if-ne v5, v15, :cond_10

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_c

    .line 409
    :cond_f
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-wide v2, v6

    move-wide v5, v11

    move v7, v14

    goto/16 :goto_10

    .line 335
    :cond_10
    :goto_c
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v5, v8, 0x1

    if-eqz v5, :cond_13

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_d

    .line 334
    :cond_11
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v4

    :cond_12
    move v4, v10

    move-wide/from16 v20, v11

    move v5, v14

    goto :goto_f

    :cond_13
    :goto_d
    if-eqz v2, :cond_14

    .line 330
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    goto :goto_e

    :cond_14
    move-object v2, v4

    :goto_e
    and-int/lit8 v4, p9, 0x2

    const/4 v5, 0x6

    if-eqz v4, :cond_15

    .line 331
    sget-object v4, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v4, v1, v5}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v6

    :cond_15
    if-eqz v9, :cond_16

    .line 332
    sget-object v4, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v4}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularStrokeWidth-D9Ej5fM()F

    move-result v4

    move v10, v4

    :cond_16
    and-int/lit8 v4, p9, 0x8

    if-eqz v4, :cond_17

    .line 333
    sget-object v4, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v4, v1, v5}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    move-wide v11, v4

    :cond_17
    if-eqz v13, :cond_12

    .line 334
    sget-object v4, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v4}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularIndeterminateStrokeCap-KaPHkGw()I

    move-result v4

    move v5, v4

    move v4, v10

    move-wide/from16 v20, v11

    :goto_f
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_18

    const/4 v9, -0x1

    const-string v10, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:328)"

    .line 335
    invoke-static {v0, v8, v9, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 336
    :cond_18
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    const v9, 0x789c5f52

    const-string v10, "CC:CompositionLocal.kt#9igjgp"

    .line 632
    invoke-static {v1, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 336
    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 337
    new-instance v18, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-interface {v0, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1a

    const/4 v13, 0x0

    move-object/from16 p0, v18

    move/from16 p1, v0

    move/from16 p2, v9

    move/from16 p3, v5

    move/from16 p4, v10

    move-object/from16 p5, v11

    move/from16 p6, v12

    move-object/from16 p7, v13

    invoke-direct/range {p0 .. p7}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x0

    const/4 v15, 0x0

    const/4 v9, 0x1

    .line 340
    invoke-static {v0, v1, v15, v9}, Landroidx/compose/animation/core/InfiniteTransitionKt;->rememberInfiniteTransition(Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition;

    move-result-object v19

    .line 343
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v9, 0x5

    .line 344
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 345
    sget-object v9, Lkotlin/jvm/internal/IntCompanionObject;->INSTANCE:Lkotlin/jvm/internal/IntCompanionObject;

    invoke-static {v9}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/IntCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v12

    const/16 v9, 0x1a04

    .line 349
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getLinearEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v13

    .line 347
    invoke-static {v9, v15, v13, v3, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v9

    check-cast v9, Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    const/4 v14, 0x6

    const/16 v22, 0x0

    move-object/from16 p0, v9

    move-object/from16 p1, v13

    move-wide/from16 p2, v16

    move/from16 p4, v14

    move-object/from16 p5, v22

    .line 346
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v13

    const/4 v14, 0x0

    sget v9, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    or-int/lit16 v9, v9, 0x11b0

    sget v16, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    shl-int/lit8 v16, v16, 0xc

    or-int v16, v9, v16

    const/16 v17, 0x10

    move-object/from16 v9, v19

    move-object v15, v1

    .line 342
    invoke-static/range {v9 .. v17}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateValue(Landroidx/compose/animation/core/InfiniteTransition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v13

    const/4 v9, 0x0

    const/high16 v10, 0x438f0000    # 286.0f

    const/16 v11, 0x534

    .line 360
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getLinearEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v12

    const/4 v15, 0x0

    .line 358
    invoke-static {v11, v15, v12, v3, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    const/4 v3, 0x0

    const-wide/16 v11, 0x0

    const/4 v14, 0x6

    const/16 v16, 0x0

    move-object/from16 p0, v0

    move-object/from16 p1, v3

    move-wide/from16 p2, v11

    move/from16 p4, v14

    move-object/from16 p5, v16

    .line 357
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v0

    sget v11, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    or-int/lit16 v11, v11, 0x1b0

    sget v12, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    shl-int/lit8 v12, v12, 0x9

    or-int/2addr v11, v12

    const/16 v12, 0x8

    move-object/from16 p0, v19

    move/from16 p1, v9

    move/from16 p2, v10

    move-object/from16 p3, v0

    move-object/from16 p4, v3

    move-object/from16 p5, v1

    move/from16 p6, v11

    move/from16 p7, v12

    .line 354
    invoke-static/range {p0 .. p7}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v16

    const/4 v0, 0x0

    const/high16 v3, 0x43910000    # 290.0f

    .line 369
    sget-object v9, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$endAngle$1;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$endAngle$1;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static {v9}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    move-result-object v9

    check-cast v9, Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/16 v17, 0x0

    move-object/from16 p0, v9

    move-object/from16 p1, v10

    move-wide/from16 p2, v11

    move/from16 p4, v14

    move-object/from16 p5, v17

    .line 368
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v9

    sget v11, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    or-int/lit16 v11, v11, 0x1b0

    sget v12, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    shl-int/lit8 v12, v12, 0x9

    or-int/2addr v11, v12

    const/16 v12, 0x8

    move-object/from16 p0, v19

    move/from16 p1, v0

    move/from16 p2, v3

    move-object/from16 p3, v9

    move-object/from16 p4, v10

    move-object/from16 p5, v1

    move/from16 p6, v11

    move/from16 p7, v12

    .line 365
    invoke-static/range {p0 .. p7}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v14

    .line 380
    sget-object v9, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$startAngle$1;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$startAngle$1;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static {v9}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    move-result-object v9

    check-cast v9, Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    const-wide/16 v11, 0x0

    const/16 v17, 0x6

    move-object/from16 p0, v9

    move-object/from16 p1, v10

    move-wide/from16 p2, v11

    move/from16 p4, v17

    move-object/from16 p5, v22

    .line 379
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v9

    sget v11, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    or-int/lit16 v11, v11, 0x1b0

    sget v12, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    shl-int/lit8 v12, v12, 0x9

    or-int/2addr v11, v12

    const/16 v12, 0x8

    move-object/from16 p0, v19

    move/from16 p1, v0

    move/from16 p2, v3

    move-object/from16 p3, v9

    move-object/from16 p4, v10

    move-object/from16 p5, v1

    move/from16 p6, v11

    move/from16 p7, v12

    .line 376
    invoke-static/range {p0 .. p7}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 389
    invoke-static {v2}, Landroidx/compose/foundation/ProgressSemanticsKt;->progressSemantics(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget v9, Landroidx/compose/material3/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    .line 390
    invoke-static {v3, v9}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 387
    new-instance v22, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3;

    move-object/from16 v9, v22

    move-wide/from16 v10, v20

    move-object/from16 v12, v18

    move-object/from16 p0, v2

    move v2, v15

    move-object v15, v0

    move/from16 v17, v4

    move-wide/from16 v18, v6

    invoke-direct/range {v9 .. v19}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3;-><init>(JLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;FJ)V

    move-object/from16 v0, v22

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v0, v1, v2}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_19
    move v10, v4

    move-wide v2, v6

    move-object/from16 v4, p0

    move v7, v5

    move-wide/from16 v5, v20

    .line 409
    :goto_10
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-nez v11, :cond_1a

    goto :goto_11

    :cond_1a
    new-instance v12, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$4;

    move-object v0, v12

    move-object v1, v4

    move v4, v10

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$4;-><init>(Landroidx/compose/ui/Modifier;JFJIII)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_11
    return-void
.end method

.method public static final synthetic CircularProgressIndicator-MBs18nI(FLandroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V
    .locals 20
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compatibility"
    .end annotation

    move/from16 v6, p6

    const v0, 0x1802de6c

    move-object/from16 v1, p5

    .line 418
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v2, "C(CircularProgressIndicator)P(2,1,0:c#ui.graphics.Color,3:c#ui.unit.Dp)415@16500L13,422@16713L18,417@16587L219:ProgressIndicator.kt#uh7d8r"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p7, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v6, 0x6

    move v3, v2

    move/from16 v2, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v6, 0xe

    if-nez v2, :cond_2

    move/from16 v2, p0

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v6

    goto :goto_1

    :cond_2
    move/from16 v2, p0

    move v3, v6

    :goto_1
    and-int/lit8 v4, p7, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v6, 0x70

    if-nez v5, :cond_5

    move-object/from16 v5, p1

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v3, v7

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v5, p1

    :goto_4
    and-int/lit16 v7, v6, 0x380

    if-nez v7, :cond_8

    and-int/lit8 v7, p7, 0x4

    if-nez v7, :cond_6

    move-wide/from16 v7, p2

    invoke-interface {v1, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_5

    :cond_6
    move-wide/from16 v7, p2

    :cond_7
    const/16 v9, 0x80

    :goto_5
    or-int/2addr v3, v9

    goto :goto_6

    :cond_8
    move-wide/from16 v7, p2

    :goto_6
    and-int/lit8 v9, p7, 0x8

    if-eqz v9, :cond_9

    or-int/lit16 v3, v3, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v10, v6, 0x1c00

    if-nez v10, :cond_b

    move/from16 v10, p4

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x800

    goto :goto_7

    :cond_a
    const/16 v11, 0x400

    :goto_7
    or-int/2addr v3, v11

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v10, p4

    :goto_9
    and-int/lit16 v11, v3, 0x16db

    const/16 v12, 0x492

    if-ne v11, v12, :cond_d

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v11

    if-nez v11, :cond_c

    goto :goto_a

    .line 425
    :cond_c
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v4, v5

    move-wide/from16 v18, v7

    move v5, v10

    goto/16 :goto_e

    .line 418
    :cond_d
    :goto_a
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v11, v6, 0x1

    const/4 v12, 0x6

    if-eqz v11, :cond_11

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v11

    if-eqz v11, :cond_e

    goto :goto_b

    .line 417
    :cond_e
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v4, p7, 0x4

    if-eqz v4, :cond_f

    and-int/lit16 v3, v3, -0x381

    :cond_f
    move-object v4, v5

    :cond_10
    move-wide/from16 v18, v7

    move v5, v10

    goto :goto_d

    :cond_11
    :goto_b
    if-eqz v4, :cond_12

    .line 415
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    goto :goto_c

    :cond_12
    move-object v4, v5

    :goto_c
    and-int/lit8 v5, p7, 0x4

    if-eqz v5, :cond_13

    .line 416
    sget-object v5, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v5, v1, v12}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v7

    and-int/lit16 v3, v3, -0x381

    :cond_13
    if-eqz v9, :cond_10

    .line 417
    sget-object v5, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v5}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularStrokeWidth-D9Ej5fM()F

    move-result v5

    move-wide/from16 v18, v7

    :goto_d
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_14

    const/4 v7, -0x1

    const-string v8, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:412)"

    .line 418
    invoke-static {v0, v3, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 423
    :cond_14
    sget-object v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v0, v1, v12}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    .line 424
    sget-object v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularDeterminateStrokeCap-KaPHkGw()I

    move-result v14

    const/high16 v0, 0x30000

    and-int/lit8 v7, v3, 0xe

    or-int/2addr v0, v7

    and-int/lit8 v7, v3, 0x70

    or-int/2addr v0, v7

    and-int/lit16 v7, v3, 0x380

    or-int/2addr v0, v7

    and-int/lit16 v3, v3, 0x1c00

    or-int v16, v0, v3

    const/16 v17, 0x0

    move/from16 v7, p0

    move-object v8, v4

    move-wide/from16 v9, v18

    move v11, v5

    move-object v15, v1

    .line 418
    invoke-static/range {v7 .. v17}, Landroidx/compose/material3/ProgressIndicatorKt;->CircularProgressIndicator-DUhRLBM(FLandroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 425
    :cond_15
    :goto_e
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-nez v8, :cond_16

    goto :goto_f

    :cond_16
    new-instance v9, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5;

    move-object v0, v9

    move/from16 v1, p0

    move-object v2, v4

    move-wide/from16 v3, v18

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5;-><init>(FLandroidx/compose/ui/Modifier;JFII)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_f
    return-void
.end method

.method public static final synthetic CircularProgressIndicator-aM-cp0Q(Landroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V
    .locals 19
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compatibility"
    .end annotation

    move/from16 v5, p5

    const v0, 0x3875079c

    move-object/from16 v1, p4

    .line 433
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v2, "C(CircularProgressIndicator)P(1,0:c#ui.graphics.Color,2:c#ui.unit.Dp)430@17015L13,436@17214L18,432@17102L207:ProgressIndicator.kt#uh7d8r"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p6, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v3, v5, 0x6

    move v4, v3

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v5, 0xe

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v5

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v4, v5

    :goto_1
    and-int/lit8 v6, v5, 0x70

    if-nez v6, :cond_5

    and-int/lit8 v6, p6, 0x2

    if-nez v6, :cond_3

    move-wide/from16 v6, p1

    invoke-interface {v1, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x20

    goto :goto_2

    :cond_3
    move-wide/from16 v6, p1

    :cond_4
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v4, v8

    goto :goto_3

    :cond_5
    move-wide/from16 v6, p1

    :goto_3
    and-int/lit8 v8, p6, 0x4

    if-eqz v8, :cond_6

    or-int/lit16 v4, v4, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v9, v5, 0x380

    if-nez v9, :cond_8

    move/from16 v9, p3

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x100

    goto :goto_4

    :cond_7
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v4, v10

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v9, p3

    :goto_6
    and-int/lit16 v10, v4, 0x2db

    const/16 v11, 0x92

    if-ne v10, v11, :cond_a

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_7

    .line 439
    :cond_9
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v3

    move-wide v3, v6

    goto/16 :goto_c

    .line 433
    :cond_a
    :goto_7
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v10, v5, 0x1

    const/4 v11, 0x6

    if-eqz v10, :cond_e

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_9

    .line 432
    :cond_b
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_c

    and-int/lit8 v4, v4, -0x71

    :cond_c
    move-object v2, v3

    :cond_d
    move/from16 v16, v9

    :goto_8
    move-wide/from16 v17, v6

    move v6, v4

    move-wide/from16 v3, v17

    goto :goto_b

    :cond_e
    :goto_9
    if-eqz v2, :cond_f

    .line 430
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    goto :goto_a

    :cond_f
    move-object v2, v3

    :goto_a
    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_10

    .line 431
    sget-object v3, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v3, v1, v11}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v6

    and-int/lit8 v4, v4, -0x71

    :cond_10
    if-eqz v8, :cond_d

    .line 432
    sget-object v3, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v3}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularStrokeWidth-D9Ej5fM()F

    move-result v3

    move/from16 v16, v3

    goto :goto_8

    :goto_b
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v7, -0x1

    const-string v8, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:428)"

    .line 433
    invoke-static {v0, v6, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 437
    :cond_11
    sget-object v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v0, v1, v11}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v10

    .line 438
    sget-object v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularIndeterminateStrokeCap-KaPHkGw()I

    move-result v12

    and-int/lit8 v0, v6, 0xe

    or-int/lit16 v0, v0, 0x6000

    and-int/lit8 v7, v6, 0x70

    or-int/2addr v0, v7

    and-int/lit16 v6, v6, 0x380

    or-int v14, v0, v6

    const/4 v15, 0x0

    move-object v6, v2

    move-wide v7, v3

    move/from16 v9, v16

    move-object v13, v1

    .line 433
    invoke-static/range {v6 .. v15}, Landroidx/compose/material3/ProgressIndicatorKt;->CircularProgressIndicator-LxG7B9w(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_12
    move/from16 v9, v16

    .line 439
    :goto_c
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-nez v7, :cond_13

    goto :goto_d

    :cond_13
    new-instance v8, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$6;

    move-object v0, v8

    move-object v1, v2

    move-wide v2, v3

    move v4, v9

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$6;-><init>(Landroidx/compose/ui/Modifier;JFII)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-interface {v7, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_d
    return-void
.end method

.method public static final LinearProgressIndicator-2cYBFYY(Landroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V
    .locals 21

    move/from16 v7, p7

    const v0, -0x1c6c634f

    move-object/from16 v1, p6

    .line 113
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v2, "C(LinearProgressIndicator)P(1,0:c#ui.graphics.Color,3:c#ui.graphics.Color,2:c#ui.graphics.StrokeCap)109@5065L11,110@5128L16,113@5249L28,117@5531L319,128@5894L319,139@6258L323,150@6626L323,165@7081L660,161@6954L787:ProgressIndicator.kt#uh7d8r"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v3, v7, 0x6

    move v4, v3

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v7, 0xe

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v7

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v4, v7

    :goto_1
    and-int/lit8 v5, v7, 0x70

    if-nez v5, :cond_5

    and-int/lit8 v5, p8, 0x2

    if-nez v5, :cond_3

    move-wide/from16 v5, p1

    invoke-interface {v1, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x20

    goto :goto_2

    :cond_3
    move-wide/from16 v5, p1

    :cond_4
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v4, v8

    goto :goto_3

    :cond_5
    move-wide/from16 v5, p1

    :goto_3
    and-int/lit16 v8, v7, 0x380

    if-nez v8, :cond_8

    and-int/lit8 v8, p8, 0x4

    if-nez v8, :cond_6

    move-wide/from16 v8, p3

    invoke-interface {v1, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v8, p3

    :cond_7
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v4, v10

    goto :goto_5

    :cond_8
    move-wide/from16 v8, p3

    :goto_5
    and-int/lit8 v10, p8, 0x8

    if-eqz v10, :cond_9

    or-int/lit16 v4, v4, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v11, v7, 0x1c00

    if-nez v11, :cond_b

    move/from16 v11, p5

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v12, 0x800

    goto :goto_6

    :cond_a
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v4, v12

    goto :goto_8

    :cond_b
    :goto_7
    move/from16 v11, p5

    :goto_8
    and-int/lit16 v4, v4, 0x16db

    const/16 v12, 0x492

    if-ne v4, v12, :cond_d

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_9

    .line 188
    :cond_c
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_10

    .line 113
    :cond_d
    :goto_9
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v4, v7, 0x1

    if-eqz v4, :cond_10

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_a

    .line 112
    :cond_e
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v3

    :cond_f
    move-wide v3, v8

    move/from16 v18, v11

    goto :goto_c

    :cond_10
    :goto_a
    if-eqz v2, :cond_11

    .line 109
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    goto :goto_b

    :cond_11
    move-object v2, v3

    :goto_b
    and-int/lit8 v3, p8, 0x2

    const/4 v4, 0x6

    if-eqz v3, :cond_12

    .line 110
    sget-object v3, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v3, v1, v4}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v5

    :cond_12
    and-int/lit8 v3, p8, 0x4

    if-eqz v3, :cond_13

    .line 111
    sget-object v3, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v3, v1, v4}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v3

    move-wide v8, v3

    :cond_13
    if-eqz v10, :cond_f

    .line 112
    sget-object v3, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v3}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearStrokeCap-KaPHkGw()I

    move-result v3

    move/from16 v18, v3

    move-wide v3, v8

    :goto_c
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_14

    const/4 v8, -0x1

    const-string v9, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:107)"

    .line 113
    invoke-static {v0, v7, v8, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_14
    const/4 v0, 0x0

    const/4 v15, 0x0

    const/4 v8, 0x1

    .line 114
    invoke-static {v0, v1, v15, v8}, Landroidx/compose/animation/core/InfiniteTransitionKt;->rememberInfiniteTransition(Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition;

    move-result-object v0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 122
    sget-object v8, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$firstLineHead$1;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$firstLineHead$1;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v8}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    move-result-object v8

    check-cast v8, Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x6

    const/16 v16, 0x0

    move-object/from16 p0, v8

    move-object/from16 p1, v11

    move-wide/from16 p2, v12

    move/from16 p4, v14

    move-object/from16 p5, v16

    .line 121
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v11

    const/4 v12, 0x0

    sget v8, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    or-int/lit16 v8, v8, 0x1b0

    sget v13, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    shl-int/lit8 v13, v13, 0x9

    or-int v14, v8, v13

    const/16 v16, 0x8

    move-object v8, v0

    move-object v13, v1

    move v7, v15

    move/from16 v15, v16

    .line 118
    invoke-static/range {v8 .. v15}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v16

    .line 133
    sget-object v8, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$firstLineTail$1;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$firstLineTail$1;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v8}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    move-result-object v8

    check-cast v8, Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x6

    const/4 v15, 0x0

    move-object/from16 p0, v8

    move-object/from16 p1, v11

    move-wide/from16 p2, v12

    move/from16 p4, v14

    move-object/from16 p5, v15

    .line 132
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v11

    const/4 v12, 0x0

    sget v8, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    or-int/lit16 v8, v8, 0x1b0

    sget v13, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    shl-int/lit8 v13, v13, 0x9

    or-int v14, v8, v13

    const/16 v15, 0x8

    move-object v8, v0

    move-object v13, v1

    .line 129
    invoke-static/range {v8 .. v15}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v17

    .line 144
    sget-object v8, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$secondLineHead$1;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$secondLineHead$1;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v8}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    move-result-object v8

    check-cast v8, Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x6

    const/4 v15, 0x0

    move-object/from16 p0, v8

    move-object/from16 p1, v11

    move-wide/from16 p2, v12

    move/from16 p4, v14

    move-object/from16 p5, v15

    .line 143
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v11

    const/4 v12, 0x0

    sget v8, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    or-int/lit16 v8, v8, 0x1b0

    sget v13, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    shl-int/lit8 v13, v13, 0x9

    or-int v14, v8, v13

    const/16 v15, 0x8

    move-object v8, v0

    move-object v13, v1

    .line 140
    invoke-static/range {v8 .. v15}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v19

    .line 155
    sget-object v8, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$secondLineTail$1;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$secondLineTail$1;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v8}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    move-result-object v8

    check-cast v8, Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x6

    const/4 v15, 0x0

    move-object/from16 p0, v8

    move-object/from16 p1, v11

    move-wide/from16 p2, v12

    move/from16 p4, v14

    move-object/from16 p5, v15

    .line 154
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v11

    const/4 v12, 0x0

    sget v8, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    or-int/lit16 v8, v8, 0x1b0

    sget v13, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    shl-int/lit8 v13, v13, 0x9

    or-int v14, v8, v13

    const/16 v15, 0x8

    move-object v8, v0

    move-object v13, v1

    .line 151
    invoke-static/range {v8 .. v15}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 164
    invoke-static {v2}, Landroidx/compose/foundation/ProgressSemanticsKt;->progressSemantics(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget v9, Landroidx/compose/material3/ProgressIndicatorKt;->LinearIndicatorWidth:F

    sget v10, Landroidx/compose/material3/ProgressIndicatorKt;->LinearIndicatorHeight:F

    .line 165
    invoke-static {v8, v9, v10}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v14

    .line 166
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v8

    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/graphics/StrokeCap;->box-impl(I)Landroidx/compose/ui/graphics/StrokeCap;

    move-result-object v9

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v10

    move-object/from16 p0, v8

    move-object/from16 p1, v9

    move-object/from16 p2, v16

    move-object/from16 p3, v17

    move-object/from16 p4, v10

    move-object/from16 p5, v19

    move-object/from16 p6, v0

    filled-new-array/range {p0 .. p6}, [Ljava/lang/Object;

    move-result-object v8

    const v9, -0x21de6e89

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v1, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move v9, v7

    move v15, v9

    :goto_d
    const/4 v10, 0x7

    if-ge v15, v10, :cond_15

    .line 623
    aget-object v10, v8, v15

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v9, v10

    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 625
    :cond_15
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v9, :cond_17

    .line 626
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v8, v9, :cond_16

    goto :goto_e

    :cond_16
    move-object/from16 p0, v2

    move-object v2, v14

    goto :goto_f

    .line 166
    :cond_17
    :goto_e
    new-instance v20, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;

    move-object/from16 v8, v20

    move-wide v9, v3

    move/from16 v11, v18

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 p0, v2

    move-object v2, v14

    move-wide v14, v5

    move-object/from16 v16, v19

    move-object/from16 v17, v0

    invoke-direct/range {v8 .. v17}, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;-><init>(JILandroidx/compose/runtime/State;Landroidx/compose/runtime/State;JLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 628
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 624
    :goto_f
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 162
    invoke-static {v2, v8, v1, v7}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_18
    move-wide v8, v3

    move/from16 v11, v18

    move-object/from16 v3, p0

    .line 188
    :goto_10
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-nez v10, :cond_19

    goto :goto_11

    :cond_19
    new-instance v12, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$4;

    move-object v0, v12

    move-object v1, v3

    move-wide v2, v5

    move-wide v4, v8

    move v6, v11

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$4;-><init>(Landroidx/compose/ui/Modifier;JJIII)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_11
    return-void
.end method

.method public static final synthetic LinearProgressIndicator-RIQooxk(Landroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/Composer;II)V
    .locals 18
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compatibility"
    .end annotation

    move/from16 v6, p6

    const v0, 0x22e72f03

    move-object/from16 v1, p5

    .line 211
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v2, "C(LinearProgressIndicator)P(1,0:c#ui.graphics.Color,2:c#ui.graphics.Color)208@8403L11,209@8466L16,210@8488L126:ProgressIndicator.kt#uh7d8r"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p7, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v3, v6, 0x6

    move v4, v3

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v6, 0xe

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v6

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v4, v6

    :goto_1
    and-int/lit8 v5, v6, 0x70

    if-nez v5, :cond_4

    and-int/lit8 v5, p7, 0x2

    move-wide/from16 v7, p1

    if-nez v5, :cond_3

    invoke-interface {v1, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v4, v5

    goto :goto_3

    :cond_4
    move-wide/from16 v7, p1

    :goto_3
    and-int/lit16 v5, v6, 0x380

    if-nez v5, :cond_6

    and-int/lit8 v5, p7, 0x4

    move-wide/from16 v9, p3

    if-nez v5, :cond_5

    invoke-interface {v1, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x100

    goto :goto_4

    :cond_5
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v4, v5

    goto :goto_5

    :cond_6
    move-wide/from16 v9, p3

    :goto_5
    and-int/lit16 v5, v4, 0x2db

    const/16 v11, 0x92

    if-ne v5, v11, :cond_8

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_6

    .line 216
    :cond_7
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v3

    move-wide v3, v7

    goto/16 :goto_a

    .line 211
    :cond_8
    :goto_6
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v5, v6, 0x1

    if-eqz v5, :cond_c

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_7

    .line 210
    :cond_9
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_a

    and-int/lit8 v4, v4, -0x71

    :cond_a
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_b

    and-int/lit16 v4, v4, -0x381

    :cond_b
    move-object v2, v3

    goto :goto_9

    :cond_c
    :goto_7
    if-eqz v2, :cond_d

    .line 208
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    goto :goto_8

    :cond_d
    move-object v2, v3

    :goto_8
    and-int/lit8 v3, p7, 0x2

    const/4 v5, 0x6

    if-eqz v3, :cond_e

    .line 209
    sget-object v3, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v7

    and-int/lit8 v4, v4, -0x71

    :cond_e
    and-int/lit8 v3, p7, 0x4

    if-eqz v3, :cond_f

    .line 210
    sget-object v3, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v9

    and-int/lit16 v4, v4, -0x381

    :cond_f
    :goto_9
    move v5, v4

    move-wide v3, v7

    move-wide/from16 v16, v9

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, -0x1

    const-string v8, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:206)"

    .line 211
    invoke-static {v0, v5, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 215
    :cond_10
    sget-object v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearStrokeCap-KaPHkGw()I

    move-result v12

    and-int/lit8 v0, v5, 0xe

    or-int/lit16 v0, v0, 0xc00

    and-int/lit8 v7, v5, 0x70

    or-int/2addr v0, v7

    and-int/lit16 v5, v5, 0x380

    or-int v14, v0, v5

    const/4 v15, 0x0

    move-object v7, v2

    move-wide v8, v3

    move-wide/from16 v10, v16

    move-object v13, v1

    .line 211
    invoke-static/range {v7 .. v15}, Landroidx/compose/material3/ProgressIndicatorKt;->LinearProgressIndicator-2cYBFYY(Landroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_11
    move-wide/from16 v9, v16

    .line 216
    :goto_a
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-nez v8, :cond_12

    goto :goto_b

    :cond_12
    new-instance v11, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$6;

    move-object v0, v11

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v9

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$6;-><init>(Landroidx/compose/ui/Modifier;JJII)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_b
    return-void
.end method

.method public static final LinearProgressIndicator-_5eSR-E(FLandroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V
    .locals 16

    move/from16 v1, p0

    move/from16 v8, p8

    const v0, 0x35f79b61

    move-object/from16 v2, p7

    .line 79
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    const-string v3, "C(LinearProgressIndicator)P(2,1,0:c#ui.graphics.Color,4:c#ui.graphics.Color,3:c#ui.graphics.StrokeCap)75@3530L11,76@3593L16,84@3883L194,80@3741L336:ProgressIndicator.kt#uh7d8r"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, p9, 0x1

    const/4 v4, 0x4

    if-eqz v3, :cond_0

    or-int/lit8 v3, v8, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v8, 0xe

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v8

    goto :goto_1

    :cond_2
    move v3, v8

    :goto_1
    and-int/lit8 v5, p9, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v8, 0x70

    if-nez v6, :cond_5

    move-object/from16 v6, p1

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v3, v7

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v6, p1

    :goto_4
    and-int/lit16 v7, v8, 0x380

    if-nez v7, :cond_7

    and-int/lit8 v7, p9, 0x4

    move-wide/from16 v9, p2

    if-nez v7, :cond_6

    invoke-interface {v2, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x100

    goto :goto_5

    :cond_6
    const/16 v7, 0x80

    :goto_5
    or-int/2addr v3, v7

    goto :goto_6

    :cond_7
    move-wide/from16 v9, p2

    :goto_6
    and-int/lit16 v7, v8, 0x1c00

    if-nez v7, :cond_9

    and-int/lit8 v7, p9, 0x8

    move-wide/from16 v11, p4

    if-nez v7, :cond_8

    invoke-interface {v2, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x800

    goto :goto_7

    :cond_8
    const/16 v7, 0x400

    :goto_7
    or-int/2addr v3, v7

    goto :goto_8

    :cond_9
    move-wide/from16 v11, p4

    :goto_8
    and-int/lit8 v7, p9, 0x10

    if-eqz v7, :cond_a

    or-int/lit16 v3, v3, 0x6000

    goto :goto_a

    :cond_a
    const v13, 0xe000

    and-int/2addr v13, v8

    if-nez v13, :cond_c

    move/from16 v13, p6

    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v14, 0x4000

    goto :goto_9

    :cond_b
    const/16 v14, 0x2000

    :goto_9
    or-int/2addr v3, v14

    goto :goto_b

    :cond_c
    :goto_a
    move/from16 v13, p6

    :goto_b
    const v14, 0xb6db

    and-int/2addr v3, v14

    const/16 v14, 0x2492

    if-ne v3, v14, :cond_f

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_d

    .line 90
    :cond_d
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_e
    :goto_c
    move-wide v3, v9

    move v7, v13

    goto/16 :goto_11

    .line 79
    :cond_f
    :goto_d
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v3, v8, 0x1

    if-eqz v3, :cond_11

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_e

    .line 78
    :cond_10
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_f

    :cond_11
    :goto_e
    if-eqz v5, :cond_12

    .line 75
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    move-object v6, v3

    :cond_12
    and-int/lit8 v3, p9, 0x4

    const/4 v5, 0x6

    if-eqz v3, :cond_13

    .line 76
    sget-object v3, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v3, v2, v5}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v9

    :cond_13
    and-int/lit8 v3, p9, 0x8

    if-eqz v3, :cond_14

    .line 77
    sget-object v3, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v3, v2, v5}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v11

    :cond_14
    if-eqz v7, :cond_15

    .line 78
    sget-object v3, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v3}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearStrokeCap-KaPHkGw()I

    move-result v3

    move v13, v3

    :cond_15
    :goto_f
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, -0x1

    const-string v5, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:72)"

    .line 79
    invoke-static {v0, v8, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_16
    const/4 v0, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 80
    invoke-static {v1, v0, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x6

    const/4 v14, 0x0

    move-object/from16 p1, v6

    move/from16 p2, v0

    move-object/from16 p3, v3

    move/from16 p4, v5

    move/from16 p5, v7

    move-object/from16 p6, v14

    .line 83
    invoke-static/range {p1 .. p6}, Landroidx/compose/foundation/ProgressSemanticsKt;->progressSemantics$default(Landroidx/compose/ui/Modifier;FLkotlin/ranges/ClosedFloatingPointRange;IILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget v5, Landroidx/compose/material3/ProgressIndicatorKt;->LinearIndicatorWidth:F

    sget v7, Landroidx/compose/material3/ProgressIndicatorKt;->LinearIndicatorHeight:F

    .line 84
    invoke-static {v3, v5, v7}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 85
    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v5

    invoke-static {v13}, Landroidx/compose/ui/graphics/StrokeCap;->box-impl(I)Landroidx/compose/ui/graphics/StrokeCap;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v15

    filled-new-array {v5, v7, v14, v15}, [Ljava/lang/Object;

    move-result-object v5

    const v7, -0x21de6e89

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v2, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v7, 0x0

    move v14, v7

    move v15, v14

    :goto_10
    if-ge v14, v4, :cond_17

    .line 614
    aget-object v4, v5, v14

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v15, v4

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x4

    goto :goto_10

    .line 616
    :cond_17
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v15, :cond_18

    .line 617
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_19

    .line 85
    :cond_18
    new-instance v4, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$1$1;

    move-object/from16 p1, v4

    move-wide/from16 p2, v11

    move/from16 p4, v13

    move/from16 p5, v0

    move-wide/from16 p6, v9

    invoke-direct/range {p1 .. p7}, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$1$1;-><init>(JIFJ)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 619
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 615
    :cond_19
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 81
    invoke-static {v3, v4, v2, v7}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto/16 :goto_c

    .line 90
    :goto_11
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-nez v10, :cond_1a

    goto :goto_12

    :cond_1a
    new-instance v13, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$2;

    move-object v0, v13

    move/from16 v1, p0

    move-object v2, v6

    move-wide v5, v11

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$2;-><init>(FLandroidx/compose/ui/Modifier;JJIII)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_12
    return-void
.end method

.method public static final synthetic LinearProgressIndicator-eaDK9VM(FLandroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/Composer;II)V
    .locals 20
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compatibility"
    .end annotation

    move/from16 v7, p7

    const v0, -0x1637364d

    move-object/from16 v1, p6

    .line 197
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v2, "C(LinearProgressIndicator)P(2,1,0:c#ui.graphics.Color,3:c#ui.graphics.Color)194@7971L11,195@8034L16,196@8056L140:ProgressIndicator.kt#uh7d8r"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v7, 0x6

    move v3, v2

    move/from16 v2, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v7, 0xe

    if-nez v2, :cond_2

    move/from16 v2, p0

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v7

    goto :goto_1

    :cond_2
    move/from16 v2, p0

    move v3, v7

    :goto_1
    and-int/lit8 v4, p8, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v7, 0x70

    if-nez v5, :cond_5

    move-object/from16 v5, p1

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v5, p1

    :goto_4
    and-int/lit16 v6, v7, 0x380

    if-nez v6, :cond_7

    and-int/lit8 v6, p8, 0x4

    move-wide/from16 v8, p2

    if-nez v6, :cond_6

    invoke-interface {v1, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x100

    goto :goto_5

    :cond_6
    const/16 v6, 0x80

    :goto_5
    or-int/2addr v3, v6

    goto :goto_6

    :cond_7
    move-wide/from16 v8, p2

    :goto_6
    and-int/lit16 v6, v7, 0x1c00

    if-nez v6, :cond_9

    and-int/lit8 v6, p8, 0x8

    move-wide/from16 v10, p4

    if-nez v6, :cond_8

    invoke-interface {v1, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x800

    goto :goto_7

    :cond_8
    const/16 v6, 0x400

    :goto_7
    or-int/2addr v3, v6

    goto :goto_8

    :cond_9
    move-wide/from16 v10, p4

    :goto_8
    and-int/lit16 v6, v3, 0x16db

    const/16 v12, 0x492

    if-ne v6, v12, :cond_b

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_9

    .line 203
    :cond_a
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v4, v5

    move-wide v5, v10

    goto/16 :goto_e

    .line 197
    :cond_b
    :goto_9
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v6, v7, 0x1

    if-eqz v6, :cond_f

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_a

    .line 196
    :cond_c
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_d

    and-int/lit16 v3, v3, -0x381

    :cond_d
    and-int/lit8 v4, p8, 0x8

    if-eqz v4, :cond_e

    and-int/lit16 v3, v3, -0x1c01

    :cond_e
    move-object v4, v5

    goto :goto_c

    :cond_f
    :goto_a
    if-eqz v4, :cond_10

    .line 194
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    goto :goto_b

    :cond_10
    move-object v4, v5

    :goto_b
    and-int/lit8 v5, p8, 0x4

    const/4 v6, 0x6

    if-eqz v5, :cond_11

    .line 195
    sget-object v5, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v5, v1, v6}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v8

    and-int/lit16 v3, v3, -0x381

    :cond_11
    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_12

    .line 196
    sget-object v5, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v5, v1, v6}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v5

    and-int/lit16 v3, v3, -0x1c01

    move-wide/from16 v18, v5

    move-wide v5, v8

    goto :goto_d

    :cond_12
    :goto_c
    move-wide v5, v8

    move-wide/from16 v18, v10

    :goto_d
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v8, -0x1

    const-string v9, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:191)"

    .line 197
    invoke-static {v0, v3, v8, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 202
    :cond_13
    sget-object v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearStrokeCap-KaPHkGw()I

    move-result v14

    and-int/lit8 v0, v3, 0xe

    or-int/lit16 v0, v0, 0x6000

    and-int/lit8 v8, v3, 0x70

    or-int/2addr v0, v8

    and-int/lit16 v8, v3, 0x380

    or-int/2addr v0, v8

    and-int/lit16 v3, v3, 0x1c00

    or-int v16, v0, v3

    const/16 v17, 0x0

    move/from16 v8, p0

    move-object v9, v4

    move-wide v10, v5

    move-wide/from16 v12, v18

    move-object v15, v1

    .line 197
    invoke-static/range {v8 .. v17}, Landroidx/compose/material3/ProgressIndicatorKt;->LinearProgressIndicator-_5eSR-E(FLandroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_14
    move-wide v8, v5

    move-wide/from16 v5, v18

    .line 203
    :goto_e
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-nez v10, :cond_15

    goto :goto_f

    :cond_15
    new-instance v11, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$5;

    move-object v0, v11

    move/from16 v1, p0

    move-object v2, v4

    move-wide v3, v8

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$5;-><init>(FLandroidx/compose/ui/Modifier;JJII)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_f
    return-void
.end method

.method public static final synthetic access$drawCircularIndicatorTrack-bw27NRU(Landroidx/compose/ui/graphics/drawscope/DrawScope;JLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/ProgressIndicatorKt;->drawCircularIndicatorTrack-bw27NRU(Landroidx/compose/ui/graphics/drawscope/DrawScope;JLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    return-void
.end method

.method public static final synthetic access$drawDeterminateCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/ProgressIndicatorKt;->drawDeterminateCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    return-void
.end method

.method public static final synthetic access$drawIndeterminateCircularIndicator-hrjfTZI(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material3/ProgressIndicatorKt;->drawIndeterminateCircularIndicator-hrjfTZI(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    return-void
.end method

.method public static final synthetic access$drawLinearIndicator-qYKTg0g(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJFI)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material3/ProgressIndicatorKt;->drawLinearIndicator-qYKTg0g(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJFI)V

    return-void
.end method

.method public static final synthetic access$drawLinearIndicatorTrack-AZGd3zU(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/ProgressIndicatorKt;->drawLinearIndicatorTrack-AZGd3zU(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFI)V

    return-void
.end method

.method public static final synthetic access$getCircularEasing$p()Landroidx/compose/animation/core/CubicBezierEasing;
    .locals 1

    sget-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->CircularEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-object v0
.end method

.method public static final synthetic access$getFirstLineHeadEasing$p()Landroidx/compose/animation/core/CubicBezierEasing;
    .locals 1

    sget-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->FirstLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-object v0
.end method

.method public static final synthetic access$getFirstLineTailEasing$p()Landroidx/compose/animation/core/CubicBezierEasing;
    .locals 1

    sget-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->FirstLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-object v0
.end method

.method public static final synthetic access$getSecondLineHeadEasing$p()Landroidx/compose/animation/core/CubicBezierEasing;
    .locals 1

    sget-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->SecondLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-object v0
.end method

.method public static final synthetic access$getSecondLineTailEasing$p()Landroidx/compose/animation/core/CubicBezierEasing;
    .locals 1

    sget-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->SecondLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-object v0
.end method

.method private static final drawCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 19

    .line 449
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getWidth()F

    move-result v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 450
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    mul-float/2addr v1, v0

    sub-float/2addr v2, v1

    const/4 v8, 0x0

    .line 456
    invoke-static {v0, v0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v9

    .line 457
    invoke-static {v2, v2}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v11

    const/4 v13, 0x0

    .line 458
    move-object/from16 v14, p5

    check-cast v14, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x340

    const/16 v18, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p3

    move/from16 v6, p1

    move/from16 v7, p2

    .line 451
    invoke-static/range {v3 .. v18}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawArc-yD3GUKo$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    return-void
.end method

.method private static final drawCircularIndicatorTrack-bw27NRU(Landroidx/compose/ui/graphics/drawscope/DrawScope;JLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 6

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    .line 465
    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/ProgressIndicatorKt;->drawCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    return-void
.end method

.method private static final drawDeterminateCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 0

    .line 472
    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/ProgressIndicatorKt;->drawCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    return-void
.end method

.method private static final drawIndeterminateCircularIndicator-hrjfTZI(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 6

    .line 481
    invoke-virtual {p6}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getCap-KaPHkGw()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/StrokeCap;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/material3/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 633
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    div-float/2addr p2, v0

    const v0, 0x42652ee1

    mul-float/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    :goto_0
    add-float v1, p1, p2

    const p1, 0x3dcccccd    # 0.1f

    .line 496
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object v0, p0

    move-wide v3, p4

    move-object v5, p6

    .line 498
    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/ProgressIndicatorKt;->drawCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    return-void
.end method

.method private static final drawLinearIndicator-qYKTg0g(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJFI)V
    .locals 22

    .line 225
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v0

    .line 226
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float v3, v1, v2

    .line 230
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_1

    move/from16 v6, p1

    goto :goto_1

    :cond_1
    sub-float v6, v5, p2

    :goto_1
    mul-float/2addr v6, v0

    if-eqz v4, :cond_2

    move/from16 v5, p2

    goto :goto_2

    :cond_2
    sub-float v5, v5, p1

    :goto_2
    mul-float/2addr v5, v0

    .line 235
    sget-object v4, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v4

    move/from16 v15, p6

    invoke-static {v15, v4}, Landroidx/compose/ui/graphics/StrokeCap;->equals-impl0(II)Z

    move-result v4

    if-nez v4, :cond_4

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    goto :goto_3

    :cond_3
    div-float v1, p5, v2

    sub-float/2addr v0, v1

    .line 241
    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v0

    .line 242
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 243
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    sub-float v2, p2, p1

    .line 245
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    .line 249
    invoke-static {v1, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v10

    .line 250
    invoke-static {v0, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1e0

    const/16 v21, 0x0

    move-object/from16 v7, p0

    move-wide/from16 v8, p3

    move/from16 v14, p5

    move/from16 v15, p6

    .line 247
    invoke-static/range {v7 .. v21}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    goto :goto_4

    .line 237
    :cond_4
    :goto_3
    invoke-static {v6, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v10

    invoke-static {v5, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1f0

    const/16 v21, 0x0

    move-object/from16 v7, p0

    move-wide/from16 v8, p3

    move/from16 v14, p5

    invoke-static/range {v7 .. v21}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    :cond_5
    :goto_4
    return-void
.end method

.method private static final drawLinearIndicatorTrack-AZGd3zU(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFI)V
    .locals 7

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    .line 262
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/ProgressIndicatorKt;->drawLinearIndicator-qYKTg0g(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJFI)V

    return-void
.end method

.method public static final getCircularIndicatorDiameter()F
    .locals 1

    sget v0, Landroidx/compose/material3/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    return v0
.end method

.method public static final getLinearIndicatorHeight()F
    .locals 1

    sget v0, Landroidx/compose/material3/ProgressIndicatorKt;->LinearIndicatorHeight:F

    return v0
.end method

.method public static final getLinearIndicatorWidth()F
    .locals 1

    sget v0, Landroidx/compose/material3/ProgressIndicatorKt;->LinearIndicatorWidth:F

    return v0
.end method
