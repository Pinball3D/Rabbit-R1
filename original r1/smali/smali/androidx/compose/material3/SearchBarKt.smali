.class public final Landroidx/compose/material3/SearchBarKt;
.super Ljava/lang/Object;
.source "SearchBar.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchBar.kt\nandroidx/compose/material3/SearchBarKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 7 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 8 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,746:1\n25#2:747\n25#2:756\n50#2:763\n49#2:764\n25#2:771\n36#2:778\n50#2:785\n49#2:786\n50#2:793\n49#2:794\n36#2:801\n25#2:808\n36#2:816\n25#2:823\n25#2:830\n36#2:840\n83#2,3:847\n50#2:857\n49#2:858\n1114#3,6:748\n1114#3,6:757\n1114#3,6:765\n1114#3,6:772\n1114#3,6:779\n1114#3,6:787\n1114#3,6:795\n1114#3,6:802\n1114#3,6:809\n1114#3,6:817\n1114#3,6:824\n1114#3,6:831\n1114#3,6:841\n1114#3,6:850\n1114#3,6:859\n76#4:754\n76#4:755\n76#4:815\n76#4:837\n76#4:856\n658#5:838\n646#5:839\n76#6:865\n75#7:866\n154#8:867\n154#8:868\n154#8:869\n154#8:870\n154#8:871\n*S KotlinDebug\n*F\n+ 1 SearchBar.kt\nandroidx/compose/material3/SearchBarKt\n*L\n175#1:747\n188#1:756\n191#1:763\n191#1:764\n211#1:771\n212#1:778\n226#1:785\n226#1:786\n230#1:793\n230#1:794\n292#1:801\n357#1:808\n416#1:816\n435#1:823\n437#1:830\n451#1:840\n452#1:847,3\n467#1:857\n467#1:858\n175#1:748,6\n188#1:757,6\n191#1:765,6\n211#1:772,6\n212#1:779,6\n226#1:787,6\n230#1:795,6\n292#1:802,6\n357#1:809,6\n416#1:817,6\n435#1:824,6\n437#1:831,6\n451#1:841,6\n452#1:850,6\n467#1:859,6\n183#1:754\n184#1:755\n360#1:815\n440#1:837\n464#1:856\n440#1:838\n440#1:839\n188#1:865\n707#1:866\n708#1:867\n710#1:868\n711#1:869\n712#1:870\n714#1:871\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0080\u0002\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\"0&2\u0012\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\"0&2\u0006\u0010(\u001a\u00020)2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\"0&2\u0008\u0008\u0002\u0010+\u001a\u00020,2\u0008\u0008\u0002\u0010-\u001a\u00020)2\u0015\u0008\u0002\u0010.\u001a\u000f\u0012\u0004\u0012\u00020\"\u0018\u00010/\u00a2\u0006\u0002\u000802\u0015\u0008\u0002\u00101\u001a\u000f\u0012\u0004\u0012\u00020\"\u0018\u00010/\u00a2\u0006\u0002\u000802\u0015\u0008\u0002\u00102\u001a\u000f\u0012\u0004\u0012\u00020\"\u0018\u00010/\u00a2\u0006\u0002\u000802\u0008\u0008\u0002\u00103\u001a\u0002042\u0008\u0008\u0002\u00105\u001a\u0002062\u0008\u0008\u0002\u00107\u001a\u00020\u00102\u0008\u0008\u0002\u00108\u001a\u0002092\u001c\u0010:\u001a\u0018\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020\"0&\u00a2\u0006\u0002\u00080\u00a2\u0006\u0002\u0008<H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008=\u0010>\u001a\u008a\u0002\u0010?\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\"0&2\u0012\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\"0&2\u0006\u0010(\u001a\u00020)2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\"0&2\u0008\u0008\u0002\u0010+\u001a\u00020,2\u0008\u0008\u0002\u0010-\u001a\u00020)2\u0015\u0008\u0002\u0010.\u001a\u000f\u0012\u0004\u0012\u00020\"\u0018\u00010/\u00a2\u0006\u0002\u000802\u0015\u0008\u0002\u00101\u001a\u000f\u0012\u0004\u0012\u00020\"\u0018\u00010/\u00a2\u0006\u0002\u000802\u0015\u0008\u0002\u00102\u001a\u000f\u0012\u0004\u0012\u00020\"\u0018\u00010/\u00a2\u0006\u0002\u000802\u0008\u0008\u0002\u00103\u001a\u0002042\u0008\u0008\u0002\u00105\u001a\u0002062\u0008\u0008\u0002\u00107\u001a\u00020\u00102\u0008\u0008\u0002\u0010@\u001a\u00020A2\u0008\u0008\u0002\u00108\u001a\u0002092\u001c\u0010:\u001a\u0018\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020\"0&\u00a2\u0006\u0002\u00080\u00a2\u0006\u0002\u0008<H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008B\u0010C\u001a\u00c6\u0001\u0010D\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\"0&2\u0012\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\"0&2\u0006\u0010(\u001a\u00020)2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\"0&2\u0008\u0008\u0002\u0010+\u001a\u00020,2\u0008\u0008\u0002\u0010-\u001a\u00020)2\u0015\u0008\u0002\u0010.\u001a\u000f\u0012\u0004\u0012\u00020\"\u0018\u00010/\u00a2\u0006\u0002\u000802\u0015\u0008\u0002\u00101\u001a\u000f\u0012\u0004\u0012\u00020\"\u0018\u00010/\u00a2\u0006\u0002\u000802\u0015\u0008\u0002\u00102\u001a\u000f\u0012\u0004\u0012\u00020\"\u0018\u00010/\u00a2\u0006\u0002\u000802\u0008\u0008\u0002\u00105\u001a\u00020E2\u0008\u0008\u0002\u00108\u001a\u000209H\u0003\u00a2\u0006\u0002\u0010F\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0006X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0006X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0019\u0010\u000f\u001a\u00020\u0010X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008\u0011\u0010\u0012\"\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0019\u0010\u0018\u001a\u00020\u0010X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0013\u0012\u0004\u0008\u0019\u0010\u001a\"\u0013\u0010\u001b\u001a\u00020\u0010X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0013\"\u0013\u0010\u001c\u001a\u00020\u0010X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0013\"\u0019\u0010\u001d\u001a\u00020\u0010X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008\u001e\u0010\u0012\"\u0019\u0010\u001f\u001a\u00020\u0010X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008 \u0010\u0012\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006G"
    }
    d2 = {
        "AnimationDelayMillis",
        "",
        "AnimationEnterDurationMillis",
        "AnimationEnterEasing",
        "Landroidx/compose/animation/core/CubicBezierEasing;",
        "AnimationEnterFloatSpec",
        "Landroidx/compose/animation/core/FiniteAnimationSpec;",
        "",
        "AnimationEnterSizeSpec",
        "Landroidx/compose/ui/unit/IntSize;",
        "AnimationExitDurationMillis",
        "AnimationExitEasing",
        "AnimationExitFloatSpec",
        "AnimationExitSizeSpec",
        "DockedActiveTableMaxHeightScreenRatio",
        "DockedActiveTableMinHeight",
        "Landroidx/compose/ui/unit/Dp;",
        "getDockedActiveTableMinHeight",
        "()F",
        "F",
        "DockedEnterTransition",
        "Landroidx/compose/animation/EnterTransition;",
        "DockedExitTransition",
        "Landroidx/compose/animation/ExitTransition;",
        "SearchBarCornerRadius",
        "getSearchBarCornerRadius$annotations",
        "()V",
        "SearchBarIconOffsetX",
        "SearchBarMaxWidth",
        "SearchBarMinWidth",
        "getSearchBarMinWidth",
        "SearchBarVerticalPadding",
        "getSearchBarVerticalPadding",
        "DockedSearchBar",
        "",
        "query",
        "",
        "onQueryChange",
        "Lkotlin/Function1;",
        "onSearch",
        "active",
        "",
        "onActiveChange",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "enabled",
        "placeholder",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "leadingIcon",
        "trailingIcon",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "colors",
        "Landroidx/compose/material3/SearchBarColors;",
        "tonalElevation",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "content",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Lkotlin/ExtensionFunctionType;",
        "DockedSearchBar-rpjkMjA",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "SearchBar",
        "windowInsets",
        "Landroidx/compose/foundation/layout/WindowInsets;",
        "SearchBar-Id_Pb_0",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "SearchBarInputField",
        "Landroidx/compose/material3/TextFieldColors;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V",
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
.field private static final AnimationDelayMillis:I = 0x64

.field private static final AnimationEnterDurationMillis:I = 0x258

.field private static final AnimationEnterEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final AnimationEnterFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final AnimationEnterSizeSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation
.end field

.field private static final AnimationExitDurationMillis:I = 0x15e

.field private static final AnimationExitEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final AnimationExitFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final AnimationExitSizeSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation
.end field

.field private static final DockedActiveTableMaxHeightScreenRatio:F = 0.6666667f

.field private static final DockedActiveTableMinHeight:F

.field private static final DockedEnterTransition:Landroidx/compose/animation/EnterTransition;

.field private static final DockedExitTransition:Landroidx/compose/animation/ExitTransition;

.field private static final SearchBarCornerRadius:F

.field private static final SearchBarIconOffsetX:F

.field private static final SearchBarMaxWidth:F

.field private static final SearchBarMinWidth:F

.field private static final SearchBarVerticalPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 707
    sget-object v0, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldHeight-D9Ej5fM()F

    move-result v0

    const/4 v1, 0x2

    int-to-float v2, v1

    div-float/2addr v0, v2

    .line 866
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/SearchBarKt;->SearchBarCornerRadius:F

    const/16 v0, 0xf0

    int-to-float v0, v0

    .line 867
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/SearchBarKt;->DockedActiveTableMinHeight:F

    const/16 v0, 0x168

    int-to-float v0, v0

    .line 868
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/SearchBarKt;->SearchBarMinWidth:F

    const/16 v0, 0x2d0

    int-to-float v0, v0

    .line 869
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/SearchBarKt;->SearchBarMaxWidth:F

    const/16 v0, 0x8

    int-to-float v0, v0

    .line 870
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/SearchBarKt;->SearchBarVerticalPadding:F

    const/4 v0, 0x4

    int-to-float v0, v0

    .line 871
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/SearchBarKt;->SearchBarIconOffsetX:F

    .line 720
    sget-object v0, Landroidx/compose/material3/tokens/MotionTokens;->INSTANCE:Landroidx/compose/material3/tokens/MotionTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/MotionTokens;->getEasingEmphasizedDecelerateCubicBezier()Landroidx/compose/animation/core/CubicBezierEasing;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/SearchBarKt;->AnimationEnterEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 721
    new-instance v2, Landroidx/compose/animation/core/CubicBezierEasing;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4, v3}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v2, Landroidx/compose/material3/SearchBarKt;->AnimationExitEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 725
    move-object v3, v0

    check-cast v3, Landroidx/compose/animation/core/Easing;

    const/16 v5, 0x258

    const/16 v6, 0x64

    .line 722
    invoke-static {v5, v6, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->tween(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v3

    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    sput-object v3, Landroidx/compose/material3/SearchBarKt;->AnimationEnterFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 730
    move-object v7, v2

    check-cast v7, Landroidx/compose/animation/core/Easing;

    const/16 v8, 0x15e

    .line 727
    invoke-static {v8, v6, v7}, Landroidx/compose/animation/core/AnimationSpecKt;->tween(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v7

    check-cast v7, Landroidx/compose/animation/core/FiniteAnimationSpec;

    sput-object v7, Landroidx/compose/material3/SearchBarKt;->AnimationExitFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 735
    check-cast v0, Landroidx/compose/animation/core/Easing;

    .line 732
    invoke-static {v5, v6, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->tween(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/compose/animation/core/FiniteAnimationSpec;

    sput-object v9, Landroidx/compose/material3/SearchBarKt;->AnimationEnterSizeSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 740
    check-cast v2, Landroidx/compose/animation/core/Easing;

    .line 737
    invoke-static {v8, v6, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->tween(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/FiniteAnimationSpec;

    sput-object v0, Landroidx/compose/material3/SearchBarKt;->AnimationExitSizeSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    const/4 v2, 0x0

    .line 743
    invoke-static {v3, v4, v1, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xe

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Landroidx/compose/animation/EnterExitTransitionKt;->expandVertically$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object v3

    sput-object v3, Landroidx/compose/material3/SearchBarKt;->DockedEnterTransition:Landroidx/compose/animation/EnterTransition;

    .line 745
    invoke-static {v7, v4, v1, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xe

    const/4 v15, 0x0

    move-object v10, v0

    invoke-static/range {v10 .. v15}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkVertically$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/compose/animation/ExitTransition;->plus(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/SearchBarKt;->DockedExitTransition:Landroidx/compose/animation/ExitTransition;

    return-void
.end method

.method public static final DockedSearchBar-rpjkMjA(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/SearchBarColors;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move/from16 v12, p3

    move-object/from16 v11, p4

    move-object/from16 v10, p14

    move/from16 v9, p16

    move/from16 v8, p17

    move/from16 v7, p18

    const-string v0, "query"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onQueryChange"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSearch"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onActiveChange"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x1ae4f706

    move-object/from16 v1, p15

    .line 359
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    const-string v1, "C(DockedSearchBar)P(11,8,9!1,7,6,3,10,5,14,12!1,13:c#ui.unit.Dp,4)353@17339L11,354@17400L8,356@17514L39,359@17649L7,364@17756L38,361@17662L1564,406@19232L306,415@19574L37,415@19544L67:SearchBar.kt#uh7d8r"

    invoke-static {v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v7, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v9, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v9, 0xe

    if-nez v1, :cond_2

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v9

    goto :goto_1

    :cond_2
    move v1, v9

    :goto_1
    and-int/lit8 v4, v7, 0x2

    const/16 v16, 0x10

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v9, 0x70

    if-nez v4, :cond_5

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    move/from16 v4, v16

    :goto_2
    or-int/2addr v1, v4

    :cond_5
    :goto_3
    and-int/lit8 v4, v7, 0x4

    const/16 v17, 0x100

    const/16 v18, 0x80

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v4, v9, 0x380

    if-nez v4, :cond_8

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move/from16 v4, v17

    goto :goto_4

    :cond_7
    move/from16 v4, v18

    :goto_4
    or-int/2addr v1, v4

    :cond_8
    :goto_5
    and-int/lit8 v4, v7, 0x8

    const/16 v19, 0x800

    const/16 v20, 0x400

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v4, v9, 0x1c00

    if-nez v4, :cond_b

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v4

    if-eqz v4, :cond_a

    move/from16 v4, v19

    goto :goto_6

    :cond_a
    move/from16 v4, v20

    :goto_6
    or-int/2addr v1, v4

    :cond_b
    :goto_7
    and-int/lit8 v4, v7, 0x10

    const/16 v21, 0x4000

    const/16 v22, 0x2000

    const v25, 0xe000

    if-eqz v4, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_9

    :cond_c
    and-int v4, v9, v25

    if-nez v4, :cond_e

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move/from16 v4, v21

    goto :goto_8

    :cond_d
    move/from16 v4, v22

    :goto_8
    or-int/2addr v1, v4

    :cond_e
    :goto_9
    and-int/lit8 v4, v7, 0x20

    if-eqz v4, :cond_f

    const/high16 v23, 0x30000

    or-int v1, v1, v23

    move-object/from16 v2, p5

    goto :goto_b

    :cond_f
    const/high16 v23, 0x70000

    and-int v23, v9, v23

    move-object/from16 v2, p5

    if-nez v23, :cond_11

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    const/high16 v23, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v23, 0x10000

    :goto_a
    or-int v1, v1, v23

    :cond_11
    :goto_b
    and-int/lit8 v23, v7, 0x40

    if-eqz v23, :cond_12

    const/high16 v24, 0x180000

    or-int v1, v1, v24

    move/from16 v3, p6

    goto :goto_d

    :cond_12
    const/high16 v24, 0x380000

    and-int v24, v9, v24

    move/from16 v3, p6

    if-nez v24, :cond_14

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v26

    if-eqz v26, :cond_13

    const/high16 v26, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v26, 0x80000

    :goto_c
    or-int v1, v1, v26

    :cond_14
    :goto_d
    and-int/lit16 v5, v7, 0x80

    if-eqz v5, :cond_15

    const/high16 v27, 0xc00000

    or-int v1, v1, v27

    move-object/from16 v0, p7

    goto :goto_f

    :cond_15
    const/high16 v27, 0x1c00000

    and-int v27, v9, v27

    move-object/from16 v0, p7

    if-nez v27, :cond_17

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    const/high16 v28, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v28, 0x400000

    :goto_e
    or-int v1, v1, v28

    :cond_17
    :goto_f
    and-int/lit16 v0, v7, 0x100

    if-eqz v0, :cond_18

    const/high16 v28, 0x6000000

    or-int v1, v1, v28

    move-object/from16 v2, p8

    goto :goto_11

    :cond_18
    const/high16 v28, 0xe000000

    and-int v28, v9, v28

    move-object/from16 v2, p8

    if-nez v28, :cond_1a

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_19

    const/high16 v28, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v28, 0x2000000

    :goto_10
    or-int v1, v1, v28

    :cond_1a
    :goto_11
    and-int/lit16 v2, v7, 0x200

    if-eqz v2, :cond_1b

    const/high16 v28, 0x30000000

    or-int v1, v1, v28

    move-object/from16 v3, p9

    goto :goto_13

    :cond_1b
    const/high16 v28, 0x70000000

    and-int v28, v9, v28

    move-object/from16 v3, p9

    if-nez v28, :cond_1d

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1c

    const/high16 v28, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v28, 0x10000000

    :goto_12
    or-int v1, v1, v28

    :cond_1d
    :goto_13
    and-int/lit8 v28, v8, 0xe

    if-nez v28, :cond_20

    and-int/lit16 v3, v7, 0x400

    if-nez v3, :cond_1e

    move-object/from16 v3, p10

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1f

    const/16 v24, 0x4

    goto :goto_14

    :cond_1e
    move-object/from16 v3, p10

    :cond_1f
    const/16 v24, 0x2

    :goto_14
    or-int v24, v8, v24

    goto :goto_15

    :cond_20
    move-object/from16 v3, p10

    move/from16 v24, v8

    :goto_15
    and-int/lit8 v28, v8, 0x70

    if-nez v28, :cond_23

    and-int/lit16 v3, v7, 0x800

    if-nez v3, :cond_21

    move-object/from16 v3, p11

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_22

    const/16 v16, 0x20

    goto :goto_16

    :cond_21
    move-object/from16 v3, p11

    :cond_22
    :goto_16
    or-int v24, v24, v16

    goto :goto_17

    :cond_23
    move-object/from16 v3, p11

    :goto_17
    move/from16 v3, v24

    and-int/lit16 v11, v7, 0x1000

    if-eqz v11, :cond_24

    or-int/lit16 v3, v3, 0x180

    goto :goto_19

    :cond_24
    and-int/lit16 v12, v8, 0x380

    if-nez v12, :cond_26

    move/from16 v12, p12

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_25

    goto :goto_18

    :cond_25
    move/from16 v17, v18

    :goto_18
    or-int v3, v3, v17

    goto :goto_1a

    :cond_26
    :goto_19
    move/from16 v12, p12

    :goto_1a
    and-int/lit16 v12, v7, 0x2000

    if-eqz v12, :cond_27

    or-int/lit16 v3, v3, 0xc00

    goto :goto_1c

    :cond_27
    and-int/lit16 v13, v8, 0x1c00

    if-nez v13, :cond_29

    move-object/from16 v13, p13

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_28

    goto :goto_1b

    :cond_28
    move/from16 v19, v20

    :goto_1b
    or-int v3, v3, v19

    goto :goto_1d

    :cond_29
    :goto_1c
    move-object/from16 v13, p13

    :goto_1d
    and-int/lit16 v13, v7, 0x4000

    if-eqz v13, :cond_2a

    or-int/lit16 v3, v3, 0x6000

    goto :goto_1f

    :cond_2a
    and-int v13, v8, v25

    if-nez v13, :cond_2c

    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b

    goto :goto_1e

    :cond_2b
    move/from16 v21, v22

    :goto_1e
    or-int v3, v3, v21

    :cond_2c
    :goto_1f
    const v13, 0x5b6db6db

    and-int/2addr v13, v1

    const v8, 0x12492492

    if-ne v13, v8, :cond_2e

    const v8, 0xb6db

    and-int/2addr v8, v3

    const/16 v13, 0x2492

    if-ne v8, v13, :cond_2e

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v8

    if-nez v8, :cond_2d

    goto :goto_20

    .line 419
    :cond_2d
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object v15, v6

    move-object/from16 v6, p5

    goto/16 :goto_2c

    .line 359
    :cond_2e
    :goto_20
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v8, v9, 0x1

    if-eqz v8, :cond_32

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v8

    if-eqz v8, :cond_2f

    goto :goto_21

    .line 808
    :cond_2f
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v7, 0x400

    if-eqz v0, :cond_30

    and-int/lit8 v3, v3, -0xf

    :cond_30
    and-int/lit16 v0, v7, 0x800

    if-eqz v0, :cond_31

    and-int/lit8 v3, v3, -0x71

    :cond_31
    move-object/from16 v15, p5

    move/from16 v16, p6

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    move-object/from16 v20, p10

    move-object/from16 v21, p11

    move/from16 v22, p12

    move-object/from16 v23, p13

    move v13, v3

    goto/16 :goto_2b

    :cond_32
    :goto_21
    if-eqz v4, :cond_33

    .line 349
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    goto :goto_22

    :cond_33
    move-object/from16 v4, p5

    :goto_22
    if-eqz v23, :cond_34

    const/4 v8, 0x1

    goto :goto_23

    :cond_34
    move/from16 v8, p6

    :goto_23
    if-eqz v5, :cond_35

    const/4 v5, 0x0

    goto :goto_24

    :cond_35
    move-object/from16 v5, p7

    :goto_24
    if-eqz v0, :cond_36

    const/4 v0, 0x0

    goto :goto_25

    :cond_36
    move-object/from16 v0, p8

    :goto_25
    if-eqz v2, :cond_37

    const/4 v2, 0x0

    goto :goto_26

    :cond_37
    move-object/from16 v2, p9

    :goto_26
    and-int/lit16 v13, v7, 0x400

    if-eqz v13, :cond_38

    .line 354
    sget-object v13, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const/4 v15, 0x6

    invoke-virtual {v13, v6, v15}, Landroidx/compose/material3/SearchBarDefaults;->getDockedShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v13

    and-int/lit8 v3, v3, -0xf

    goto :goto_27

    :cond_38
    const/4 v15, 0x6

    move-object/from16 v13, p10

    :goto_27
    and-int/lit16 v15, v7, 0x800

    if-eqz v15, :cond_39

    .line 355
    sget-object v16, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0xc00

    const/16 v24, 0x7

    move-object/from16 v22, v6

    invoke-virtual/range {v16 .. v24}, Landroidx/compose/material3/SearchBarDefaults;->colors-Klgx-Pg(JJLandroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarColors;

    move-result-object v15

    and-int/lit8 v3, v3, -0x71

    goto :goto_28

    :cond_39
    move-object/from16 v15, p11

    :goto_28
    if-eqz v11, :cond_3a

    .line 356
    sget-object v11, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v11}, Landroidx/compose/material3/SearchBarDefaults;->getElevation-D9Ej5fM()F

    move-result v11

    goto :goto_29

    :cond_3a
    move/from16 v11, p12

    :goto_29
    if-eqz v12, :cond_3c

    const v12, -0x1d58f75c

    .line 357
    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v6, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 809
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .line 810
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p5, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v12, v0, :cond_3b

    .line 357
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v12

    .line 812
    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 808
    :cond_3b
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v12, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v18, p5

    move-object/from16 v19, v2

    move-object/from16 v17, v5

    move/from16 v16, v8

    move/from16 v22, v11

    move-object/from16 v23, v12

    goto :goto_2a

    :cond_3c
    move-object/from16 p5, v0

    move-object/from16 v18, p5

    move-object/from16 v23, p13

    move-object/from16 v19, v2

    move-object/from16 v17, v5

    move/from16 v16, v8

    move/from16 v22, v11

    :goto_2a
    move-object/from16 v20, v13

    move-object/from16 v21, v15

    move v13, v3

    move-object v15, v4

    :goto_2b
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "androidx.compose.material3.DockedSearchBar (SearchBar.kt:342)"

    const v2, -0x1ae4f706

    .line 359
    invoke-static {v2, v1, v13, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 360
    :cond_3d
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFocusManager()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    const v2, 0x789c5f52

    const-string v3, "CC:CompositionLocal.kt#9igjgp"

    .line 815
    invoke-static {v6, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 360
    move-object v12, v0

    check-cast v12, Landroidx/compose/ui/focus/FocusManager;

    .line 364
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/material3/SearchBarColors;->getContainerColor-0d7_KjU()J

    move-result-wide v29

    .line 365
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/material3/SearchBarColors;->getContainerColor-0d7_KjU()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-static {v2, v3, v6, v0}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v31

    const/high16 v0, 0x3f800000    # 1.0f

    .line 368
    invoke-static {v15, v0}, Landroidx/compose/ui/ZIndexModifierKt;->zIndex(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget v2, Landroidx/compose/material3/SearchBarKt;->SearchBarMinWidth:F

    .line 369
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v24

    const/16 v27, 0x0

    const/16 v33, 0x0

    .line 370
    new-instance v11, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$2;

    move-object v0, v11

    move/from16 v34, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object v8, v6

    move/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 p5, v15

    move-object v15, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v21

    move-object/from16 v35, v11

    move-object/from16 v11, v23

    move-object/from16 v36, v12

    move/from16 v12, v34

    move/from16 v26, v13

    const/16 v37, 0x6

    move-object/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/SearchBarColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IILkotlin/jvm/functions/Function3;)V

    const v0, -0x692b28eb

    move-object/from16 v1, v35

    const/4 v2, 0x1

    invoke-static {v15, v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function2;

    shl-int/lit8 v0, v26, 0x3

    and-int/lit8 v0, v0, 0x70

    const/high16 v1, 0xc00000

    or-int/2addr v0, v1

    shl-int/lit8 v1, v26, 0x6

    and-int v1, v1, v25

    or-int v12, v0, v1

    const/16 v13, 0x60

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    move-wide/from16 v3, v29

    move-wide/from16 v5, v31

    move/from16 v7, v22

    move/from16 v8, v27

    move-object/from16 v9, v33

    move-object v11, v15

    .line 362
    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 407
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$3;

    move/from16 v4, p3

    move-object/from16 v2, v36

    const/4 v3, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$3;-><init>(ZLandroidx/compose/ui/focus/FocusManager;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v2, v34, 0x9

    and-int/lit8 v2, v2, 0xe

    or-int/lit8 v3, v2, 0x40

    invoke-static {v0, v1, v15, v3}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const v0, 0x44faf204

    .line 416
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v15, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move-object/from16 v5, p4

    .line 816
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 817
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3e

    .line 818
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_3f

    .line 416
    :cond_3e
    new-instance v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$4$1;

    invoke-direct {v0, v5}, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$4$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v1, v0

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 820
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 816
    :cond_3f
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    .line 416
    invoke-static {v4, v1, v15, v2, v0}, Landroidx/activity/compose/BackHandlerKt;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_40
    move-object/from16 v6, p5

    move/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move/from16 v13, v22

    move-object/from16 v14, v23

    .line 419
    :goto_2c
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_41

    goto :goto_2d

    :cond_41
    new-instance v19, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v38, v15

    move-object/from16 v15, p14

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v0 .. v18}, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v38

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_2d
    return-void
.end method

.method public static final SearchBar-Id_Pb_0(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/SearchBarColors;",
            "F",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move/from16 v12, p3

    move-object/from16 v11, p4

    move-object/from16 v10, p15

    move/from16 v9, p17

    move/from16 v8, p18

    move/from16 v7, p19

    const-string v0, "query"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onQueryChange"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSearch"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onActiveChange"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x94c617a

    move-object/from16 v1, p16

    .line 177
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    const-string v1, "C(SearchBar)P(11,8,9!1,7,6,3,10,5,14,12!1,13:c#ui.unit.Dp,15,4)170@8704L15,171@8769L8,173@8884L12,174@8948L39,177@9084L160,182@9287L7,183@9326L7,185@9386L15,186@9453L15,187@9499L101,190@9625L578,210@10651L34,211@10707L179,221@10994L38,225@11170L112,229@11354L1074,218@10892L2701,282@13599L306,291@13941L37,291@13911L67:SearchBar.kt#uh7d8r"

    invoke-static {v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v7, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v9, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v9, 0xe

    if-nez v1, :cond_2

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v9

    goto :goto_1

    :cond_2
    move v1, v9

    :goto_1
    and-int/lit8 v4, v7, 0x2

    const/16 v16, 0x10

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v9, 0x70

    if-nez v4, :cond_5

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    move/from16 v4, v16

    :goto_2
    or-int/2addr v1, v4

    :cond_5
    :goto_3
    and-int/lit8 v4, v7, 0x4

    const/16 v17, 0x100

    const/16 v18, 0x80

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v4, v9, 0x380

    if-nez v4, :cond_8

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move/from16 v4, v17

    goto :goto_4

    :cond_7
    move/from16 v4, v18

    :goto_4
    or-int/2addr v1, v4

    :cond_8
    :goto_5
    and-int/lit8 v4, v7, 0x8

    const/16 v19, 0x800

    const/16 v20, 0x400

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v4, v9, 0x1c00

    if-nez v4, :cond_b

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v4

    if-eqz v4, :cond_a

    move/from16 v4, v19

    goto :goto_6

    :cond_a
    move/from16 v4, v20

    :goto_6
    or-int/2addr v1, v4

    :cond_b
    :goto_7
    and-int/lit8 v4, v7, 0x10

    const/16 v21, 0x4000

    const v25, 0xe000

    const/16 v22, 0x2000

    if-eqz v4, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_9

    :cond_c
    and-int v4, v9, v25

    if-nez v4, :cond_e

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move/from16 v4, v21

    goto :goto_8

    :cond_d
    move/from16 v4, v22

    :goto_8
    or-int/2addr v1, v4

    :cond_e
    :goto_9
    and-int/lit8 v4, v7, 0x20

    if-eqz v4, :cond_f

    const/high16 v23, 0x30000

    or-int v1, v1, v23

    move-object/from16 v2, p5

    goto :goto_b

    :cond_f
    const/high16 v23, 0x70000

    and-int v23, v9, v23

    move-object/from16 v2, p5

    if-nez v23, :cond_11

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    const/high16 v23, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v23, 0x10000

    :goto_a
    or-int v1, v1, v23

    :cond_11
    :goto_b
    and-int/lit8 v23, v7, 0x40

    if-eqz v23, :cond_12

    const/high16 v24, 0x180000

    or-int v1, v1, v24

    move/from16 v3, p6

    goto :goto_d

    :cond_12
    const/high16 v24, 0x380000

    and-int v24, v9, v24

    move/from16 v3, p6

    if-nez v24, :cond_14

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v26

    if-eqz v26, :cond_13

    const/high16 v26, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v26, 0x80000

    :goto_c
    or-int v1, v1, v26

    :cond_14
    :goto_d
    and-int/lit16 v5, v7, 0x80

    if-eqz v5, :cond_15

    const/high16 v27, 0xc00000

    or-int v1, v1, v27

    move-object/from16 v0, p7

    goto :goto_f

    :cond_15
    const/high16 v27, 0x1c00000

    and-int v27, v9, v27

    move-object/from16 v0, p7

    if-nez v27, :cond_17

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    const/high16 v28, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v28, 0x400000

    :goto_e
    or-int v1, v1, v28

    :cond_17
    :goto_f
    and-int/lit16 v0, v7, 0x100

    if-eqz v0, :cond_18

    const/high16 v28, 0x6000000

    or-int v1, v1, v28

    move-object/from16 v2, p8

    goto :goto_11

    :cond_18
    const/high16 v28, 0xe000000

    and-int v28, v9, v28

    move-object/from16 v2, p8

    if-nez v28, :cond_1a

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_19

    const/high16 v28, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v28, 0x2000000

    :goto_10
    or-int v1, v1, v28

    :cond_1a
    :goto_11
    and-int/lit16 v2, v7, 0x200

    if-eqz v2, :cond_1b

    const/high16 v28, 0x30000000

    or-int v1, v1, v28

    move-object/from16 v3, p9

    goto :goto_13

    :cond_1b
    const/high16 v28, 0x70000000

    and-int v28, v9, v28

    move-object/from16 v3, p9

    if-nez v28, :cond_1d

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1c

    const/high16 v28, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v28, 0x10000000

    :goto_12
    or-int v1, v1, v28

    :cond_1d
    :goto_13
    and-int/lit8 v28, v8, 0xe

    if-nez v28, :cond_20

    and-int/lit16 v3, v7, 0x400

    if-nez v3, :cond_1e

    move-object/from16 v3, p10

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1f

    const/16 v24, 0x4

    goto :goto_14

    :cond_1e
    move-object/from16 v3, p10

    :cond_1f
    const/16 v24, 0x2

    :goto_14
    or-int v24, v8, v24

    goto :goto_15

    :cond_20
    move-object/from16 v3, p10

    move/from16 v24, v8

    :goto_15
    and-int/lit8 v28, v8, 0x70

    if-nez v28, :cond_23

    and-int/lit16 v3, v7, 0x800

    if-nez v3, :cond_21

    move-object/from16 v3, p11

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_22

    const/16 v16, 0x20

    goto :goto_16

    :cond_21
    move-object/from16 v3, p11

    :cond_22
    :goto_16
    or-int v24, v24, v16

    goto :goto_17

    :cond_23
    move-object/from16 v3, p11

    :goto_17
    move/from16 v3, v24

    and-int/lit16 v11, v7, 0x1000

    if-eqz v11, :cond_24

    or-int/lit16 v3, v3, 0x180

    goto :goto_19

    :cond_24
    and-int/lit16 v13, v8, 0x380

    if-nez v13, :cond_26

    move/from16 v13, p12

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_25

    goto :goto_18

    :cond_25
    move/from16 v17, v18

    :goto_18
    or-int v3, v3, v17

    goto :goto_1a

    :cond_26
    :goto_19
    move/from16 v13, p12

    :goto_1a
    and-int/lit16 v13, v8, 0x1c00

    if-nez v13, :cond_29

    and-int/lit16 v13, v7, 0x2000

    if-nez v13, :cond_27

    move-object/from16 v13, p13

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_28

    goto :goto_1b

    :cond_27
    move-object/from16 v13, p13

    :cond_28
    move/from16 v19, v20

    :goto_1b
    or-int v3, v3, v19

    goto :goto_1c

    :cond_29
    move-object/from16 v13, p13

    :goto_1c
    and-int/lit16 v13, v7, 0x4000

    if-eqz v13, :cond_2a

    or-int/lit16 v3, v3, 0x6000

    move-object/from16 v14, p14

    goto :goto_1e

    :cond_2a
    and-int v16, v8, v25

    move-object/from16 v14, p14

    if-nez v16, :cond_2c

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2b

    goto :goto_1d

    :cond_2b
    move/from16 v21, v22

    :goto_1d
    or-int v3, v3, v21

    :cond_2c
    :goto_1e
    const v16, 0x8000

    and-int v16, v7, v16

    if-eqz v16, :cond_2d

    const/high16 v16, 0x30000

    :goto_1f
    or-int v3, v3, v16

    goto :goto_20

    :cond_2d
    const/high16 v16, 0x70000

    and-int v16, v8, v16

    if-nez v16, :cond_2f

    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2e

    const/high16 v16, 0x20000

    goto :goto_1f

    :cond_2e
    const/high16 v16, 0x10000

    goto :goto_1f

    :cond_2f
    :goto_20
    const v16, 0x5b6db6db

    and-int v8, v1, v16

    const v10, 0x12492492

    if-ne v8, v10, :cond_31

    const v8, 0x5b6db

    and-int/2addr v8, v3

    const v10, 0x12492

    if-ne v8, v10, :cond_31

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v8

    if-nez v8, :cond_30

    goto :goto_21

    .line 295
    :cond_30
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v13, p12

    move-object/from16 v37, p13

    move v4, v12

    move-object v15, v14

    move-object/from16 v12, p11

    move-object v14, v6

    move-object/from16 v6, p5

    goto/16 :goto_31

    .line 177
    :cond_31
    :goto_21
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v8, v9, 0x1

    const-string v10, "CC(remember):Composables.kt#9igjgp"

    if-eqz v8, :cond_36

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v8

    if-eqz v8, :cond_32

    goto :goto_22

    .line 747
    :cond_32
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v7, 0x400

    if-eqz v0, :cond_33

    and-int/lit8 v3, v3, -0xf

    :cond_33
    and-int/lit16 v0, v7, 0x800

    if-eqz v0, :cond_34

    and-int/lit8 v3, v3, -0x71

    :cond_34
    and-int/lit16 v0, v7, 0x2000

    if-eqz v0, :cond_35

    and-int/lit16 v3, v3, -0x1c01

    :cond_35
    move/from16 v17, p6

    move-object/from16 v18, p7

    move-object/from16 v19, p8

    move-object/from16 v20, p9

    move-object/from16 v13, p10

    move-object/from16 v21, p11

    move/from16 v22, p12

    move-object/from16 v11, p13

    move v9, v3

    move-object/from16 v23, v14

    move-object/from16 v14, p5

    goto/16 :goto_2c

    :cond_36
    :goto_22
    if-eqz v4, :cond_37

    .line 166
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    goto :goto_23

    :cond_37
    move-object/from16 v4, p5

    :goto_23
    if-eqz v23, :cond_38

    const/4 v8, 0x1

    goto :goto_24

    :cond_38
    move/from16 v8, p6

    :goto_24
    if-eqz v5, :cond_39

    const/4 v5, 0x0

    goto :goto_25

    :cond_39
    move-object/from16 v5, p7

    :goto_25
    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    goto :goto_26

    :cond_3a
    move-object/from16 v0, p8

    :goto_26
    if-eqz v2, :cond_3b

    const/4 v2, 0x0

    goto :goto_27

    :cond_3b
    move-object/from16 v2, p9

    :goto_27
    and-int/lit16 v9, v7, 0x400

    if-eqz v9, :cond_3c

    .line 171
    sget-object v9, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    move-object/from16 p5, v0

    const/4 v0, 0x6

    invoke-virtual {v9, v6, v0}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v9

    and-int/lit8 v3, v3, -0xf

    goto :goto_28

    :cond_3c
    move-object/from16 p5, v0

    move-object/from16 v9, p10

    :goto_28
    and-int/lit16 v0, v7, 0x800

    if-eqz v0, :cond_3d

    .line 172
    sget-object v16, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0xc00

    const/16 v24, 0x7

    move-object/from16 v22, v6

    invoke-virtual/range {v16 .. v24}, Landroidx/compose/material3/SearchBarDefaults;->colors-Klgx-Pg(JJLandroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarColors;

    move-result-object v0

    and-int/lit8 v3, v3, -0x71

    goto :goto_29

    :cond_3d
    move-object/from16 v0, p11

    :goto_29
    if-eqz v11, :cond_3e

    .line 173
    sget-object v11, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v11}, Landroidx/compose/material3/SearchBarDefaults;->getElevation-D9Ej5fM()F

    move-result v11

    goto :goto_2a

    :cond_3e
    move/from16 v11, p12

    :goto_2a
    move-object/from16 p6, v0

    and-int/lit16 v0, v7, 0x2000

    if-eqz v0, :cond_3f

    .line 174
    sget-object v0, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    move-object/from16 p7, v2

    const/4 v2, 0x6

    invoke-virtual {v0, v6, v2}, Landroidx/compose/material3/SearchBarDefaults;->getWindowInsets(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v0

    and-int/lit16 v2, v3, -0x1c01

    move v3, v2

    goto :goto_2b

    :cond_3f
    move-object/from16 p7, v2

    move-object/from16 v0, p13

    :goto_2b
    if-eqz v13, :cond_41

    const v2, -0x1d58f75c

    .line 175
    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v6, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 748
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 749
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v2, v13, :cond_40

    .line 175
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v2

    .line 751
    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 747
    :cond_40
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v2, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v19, p5

    move-object/from16 v21, p6

    move-object/from16 v20, p7

    move-object/from16 v23, v2

    move-object v14, v4

    move-object/from16 v18, v5

    move/from16 v17, v8

    move-object v13, v9

    move/from16 v22, v11

    move-object v11, v0

    move v9, v3

    goto :goto_2c

    :cond_41
    move-object/from16 v19, p5

    move-object/from16 v21, p6

    move-object/from16 v20, p7

    move-object/from16 v18, v5

    move/from16 v17, v8

    move-object v13, v9

    move/from16 v22, v11

    move-object/from16 v23, v14

    move-object v11, v0

    move v9, v3

    move-object v14, v4

    :goto_2c
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "androidx.compose.material3.SearchBar (SearchBar.kt:159)"

    const v2, 0x94c617a

    .line 177
    invoke-static {v2, v1, v9, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_42
    if-eqz v12, :cond_43

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2d

    :cond_43
    const/4 v0, 0x0

    :goto_2d
    if-eqz v12, :cond_44

    sget-object v2, Landroidx/compose/material3/SearchBarKt;->AnimationEnterFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    goto :goto_2e

    :cond_44
    sget-object v2, Landroidx/compose/material3/SearchBarKt;->AnimationExitFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 180
    :goto_2e
    check-cast v2, Landroidx/compose/animation/core/AnimationSpec;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x40

    const/16 v16, 0x1c

    move/from16 p5, v0

    move-object/from16 p6, v2

    move/from16 p7, v3

    move-object/from16 p8, v4

    move-object/from16 p9, v5

    move-object/from16 p10, v6

    move/from16 p11, v8

    move/from16 p12, v16

    .line 178
    invoke-static/range {p5 .. p12}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v8

    .line 183
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFocusManager()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    const v2, 0x789c5f52

    const-string v3, "CC:CompositionLocal.kt#9igjgp"

    .line 754
    invoke-static {v6, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 183
    move-object v5, v0

    check-cast v5, Landroidx/compose/ui/focus/FocusManager;

    .line 184
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    const-string v3, "CC:CompositionLocal.kt#9igjgp"

    .line 755
    invoke-static {v6, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 184
    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 186
    sget-object v2, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const/4 v4, 0x6

    invoke-virtual {v2, v6, v4}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    .line 187
    sget-object v3, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v3, v6, v4}, Landroidx/compose/material3/SearchBarDefaults;->getFullScreenShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v3

    const v4, -0x1d58f75c

    .line 188
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v6, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 757
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 758
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v24, v1

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v4, v1, :cond_45

    .line 189
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v1

    new-instance v4, Landroidx/compose/material3/SearchBarKt$SearchBar$useFullScreenShape$2$1;

    invoke-direct {v4, v8}, Landroidx/compose/material3/SearchBarKt$SearchBar$useFullScreenShape$2$1;-><init>(Landroidx/compose/runtime/State;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v4}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v4

    .line 760
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 756
    :cond_45
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 188
    check-cast v4, Landroidx/compose/runtime/State;

    .line 191
    invoke-static {v4}, Landroidx/compose/material3/SearchBarKt;->SearchBar_Id_Pb_0$lambda$2(Landroidx/compose/runtime/State;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 p5, v3

    const v3, 0x1e7b2b64

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v6, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 763
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    or-int v1, v1, v16

    move-object/from16 p7, v5

    .line 765
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_46

    .line 766
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v5, v1, :cond_49

    .line 193
    :cond_46
    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 195
    new-instance v1, Landroidx/compose/foundation/shape/GenericShape;

    new-instance v2, Landroidx/compose/material3/SearchBarKt$SearchBar$animatedShape$1$1;

    invoke-direct {v2, v0, v8}, Landroidx/compose/material3/SearchBarKt$SearchBar$animatedShape$1$1;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/State;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-direct {v1, v2}, Landroidx/compose/foundation/shape/GenericShape;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Landroidx/compose/ui/graphics/Shape;

    goto :goto_2f

    .line 201
    :cond_47
    invoke-static {v4}, Landroidx/compose/material3/SearchBarKt;->access$SearchBar_Id_Pb_0$lambda$2(Landroidx/compose/runtime/State;)Z

    move-result v1

    if-eqz v1, :cond_48

    move-object/from16 v1, p5

    goto :goto_2f

    :cond_48
    move-object v1, v13

    .line 768
    :goto_2f
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v5, v1

    .line 764
    :cond_49
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 191
    move-object/from16 v27, v5

    check-cast v27, Landroidx/compose/ui/graphics/Shape;

    const v1, -0x1d58f75c

    .line 211
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v6, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 772
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 773
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_4a

    .line 211
    new-instance v1, Landroidx/compose/material3/MutableWindowInsets;

    const/4 v5, 0x1

    const/4 v10, 0x0

    invoke-direct {v1, v10, v5, v10}, Landroidx/compose/material3/MutableWindowInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 775
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_30

    :cond_4a
    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 771
    :goto_30
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 211
    check-cast v1, Landroidx/compose/material3/MutableWindowInsets;

    const v2, 0x44faf204

    .line 212
    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v6, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 778
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .line 779
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_4b

    .line 780
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v4, v2, :cond_4c

    .line 213
    :cond_4b
    new-instance v2, Landroidx/compose/material3/SearchBarKt$SearchBar$topPadding$1$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/material3/SearchBarKt$SearchBar$topPadding$1$1;-><init>(Landroidx/compose/material3/MutableWindowInsets;Landroidx/compose/ui/unit/Density;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v4

    .line 782
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 778
    :cond_4c
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 212
    check-cast v4, Landroidx/compose/runtime/State;

    .line 221
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/material3/SearchBarColors;->getContainerColor-0d7_KjU()J

    move-result-wide v29

    move-object/from16 v16, v11

    .line 222
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/material3/SearchBarColors;->getContainerColor-0d7_KjU()J

    move-result-wide v10

    const/4 v0, 0x0

    invoke-static {v10, v11, v6, v0}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v31

    const/high16 v0, 0x3f800000    # 1.0f

    .line 225
    invoke-static {v14, v0}, Landroidx/compose/ui/ZIndexModifierKt;->zIndex(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v2, 0x1e7b2b64

    .line 226
    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v6, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 785
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v11, v16

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v2, v10

    .line 787
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v2, :cond_4d

    .line 788
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v10, v2, :cond_4e

    .line 226
    :cond_4d
    new-instance v2, Landroidx/compose/material3/SearchBarKt$SearchBar$2$1;

    invoke-direct {v2, v1, v11}, Landroidx/compose/material3/SearchBarKt$SearchBar$2$1;-><init>(Landroidx/compose/material3/MutableWindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    move-object v10, v2

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 790
    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 786
    :cond_4e
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 226
    invoke-static {v0, v10}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->onConsumedWindowInsetsChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 229
    check-cast v1, Landroidx/compose/foundation/layout/WindowInsets;

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->consumeWindowInsets(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, 0x1e7b2b64

    .line 230
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v6, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 793
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 795
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_4f

    .line 796
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_50

    .line 230
    :cond_4f
    new-instance v1, Landroidx/compose/material3/SearchBarKt$SearchBar$3$1;

    invoke-direct {v1, v4, v8}, Landroidx/compose/material3/SearchBarKt$SearchBar$3$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    move-object v2, v1

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 798
    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 794
    :cond_50
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 230
    invoke-static {v0, v2}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v33

    const/16 v34, 0x0

    const/16 v35, 0x0

    .line 251
    new-instance v10, Landroidx/compose/material3/SearchBarKt$SearchBar$4;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v16, v4

    const/16 v28, 0x6

    move/from16 v4, p3

    move-object/from16 v36, p7

    move/from16 v37, v5

    move-object/from16 v5, p4

    move-object/from16 v38, v6

    move/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v39, v8

    move-object/from16 v8, v19

    move/from16 v26, v9

    move-object/from16 v9, v20

    move-object/from16 v40, v10

    move-object/from16 v10, v21

    move-object/from16 v37, v11

    move-object/from16 v11, v23

    move/from16 v12, v24

    move-object/from16 v41, v13

    move/from16 v13, v26

    move-object/from16 v42, v14

    move-object/from16 v14, v39

    move-object/from16 v15, v16

    move-object/from16 v16, p15

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material3/SearchBarKt$SearchBar$4;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/SearchBarColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IILandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function3;)V

    const v0, -0x33b17101    # -5.4148092E7f

    move-object/from16 v14, v38

    move-object/from16 v1, v40

    const/4 v2, 0x1

    invoke-static {v14, v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function2;

    shl-int/lit8 v0, v26, 0x6

    and-int v0, v0, v25

    const/high16 v1, 0xc00000

    or-int v12, v0, v1

    const/16 v13, 0x60

    move-object/from16 v1, v33

    move-object/from16 v2, v27

    move-wide/from16 v3, v29

    move-wide/from16 v5, v31

    move/from16 v7, v22

    move/from16 v8, v34

    move-object/from16 v9, v35

    move-object v11, v14

    .line 219
    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 283
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Landroidx/compose/material3/SearchBarKt$SearchBar$5;

    move/from16 v4, p3

    move-object/from16 v2, v36

    const/4 v3, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroidx/compose/material3/SearchBarKt$SearchBar$5;-><init>(ZLandroidx/compose/ui/focus/FocusManager;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v2, v24, 0x9

    and-int/lit8 v2, v2, 0xe

    or-int/lit8 v3, v2, 0x40

    invoke-static {v0, v1, v14, v3}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const v0, 0x44faf204

    .line 292
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v14, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move-object/from16 v5, p4

    .line 801
    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 802
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_51

    .line 803
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_52

    .line 292
    :cond_51
    new-instance v0, Landroidx/compose/material3/SearchBarKt$SearchBar$6$1;

    invoke-direct {v0, v5}, Landroidx/compose/material3/SearchBarKt$SearchBar$6$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v1, v0

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 805
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 801
    :cond_52
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    .line 292
    invoke-static {v4, v1, v14, v2, v0}, Landroidx/activity/compose/BackHandlerKt;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_53
    move/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move-object/from16 v12, v21

    move/from16 v13, v22

    move-object/from16 v15, v23

    move-object/from16 v11, v41

    move-object/from16 v6, v42

    .line 295
    :goto_31
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-nez v14, :cond_54

    goto :goto_32

    :cond_54
    new-instance v20, Landroidx/compose/material3/SearchBarKt$SearchBar$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v43, v14

    move-object/from16 v14, v37

    move-object/from16 v16, p15

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    invoke-direct/range {v0 .. v19}, Landroidx/compose/material3/SearchBarKt$SearchBar$7;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v20

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v43

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_32
    return-void
.end method

.method private static final SearchBarInputField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V
    .locals 81
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/TextFieldColors;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v13, p2

    move/from16 v12, p3

    move-object/from16 v11, p4

    move/from16 v10, p13

    move/from16 v9, p15

    const v0, -0x4f46f856

    move-object/from16 v1, p12

    .line 436
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    const-string v1, "C(SearchBarInputField)P(10,7,8!1,6,5,2,9,4,11)433@20114L18,434@20184L39,436@20254L29,437@20310L34,438@20385L39,450@20838L42,451@20904L304,463@21299L7,464@21384L28,466@21547L19,443@20594L2004:SearchBar.kt#uh7d8r"

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v9, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v10, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v10, 0xe

    if-nez v1, :cond_2

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v10

    goto :goto_1

    :cond_2
    move v1, v10

    :goto_1
    and-int/lit8 v4, v9, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v7, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v10, 0x70

    move-object/from16 v7, p1

    if-nez v4, :cond_5

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_5
    :goto_3
    and-int/lit8 v4, v9, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v4, v10, 0x380

    if-nez v4, :cond_8

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_4

    :cond_7
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v1, v4

    :cond_8
    :goto_5
    and-int/lit8 v4, v9, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v4, v10, 0x1c00

    if-nez v4, :cond_b

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x800

    goto :goto_6

    :cond_a
    const/16 v4, 0x400

    :goto_6
    or-int/2addr v1, v4

    :cond_b
    :goto_7
    and-int/lit8 v4, v9, 0x10

    if-eqz v4, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_9

    :cond_c
    const v4, 0xe000

    and-int/2addr v4, v10

    if-nez v4, :cond_e

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v4, 0x4000

    goto :goto_8

    :cond_d
    const/16 v4, 0x2000

    :goto_8
    or-int/2addr v1, v4

    :cond_e
    :goto_9
    and-int/lit8 v4, v9, 0x20

    const/high16 v48, 0x30000

    if-eqz v4, :cond_f

    or-int v1, v1, v48

    goto :goto_b

    :cond_f
    const/high16 v14, 0x70000

    and-int/2addr v14, v10

    if-nez v14, :cond_11

    move-object/from16 v14, p5

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v1, v1, v16

    goto :goto_c

    :cond_11
    :goto_b
    move-object/from16 v14, p5

    :goto_c
    and-int/lit8 v16, v9, 0x40

    if-eqz v16, :cond_12

    const/high16 v17, 0x180000

    or-int v1, v1, v17

    move/from16 v2, p6

    goto :goto_e

    :cond_12
    const/high16 v17, 0x380000

    and-int v17, v10, v17

    move/from16 v2, p6

    if-nez v17, :cond_14

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_13

    const/high16 v17, 0x100000

    goto :goto_d

    :cond_13
    const/high16 v17, 0x80000

    :goto_d
    or-int v1, v1, v17

    :cond_14
    :goto_e
    and-int/lit16 v5, v9, 0x80

    if-eqz v5, :cond_15

    const/high16 v18, 0xc00000

    or-int v1, v1, v18

    move-object/from16 v6, p7

    goto :goto_10

    :cond_15
    const/high16 v18, 0x1c00000

    and-int v18, v10, v18

    move-object/from16 v6, p7

    if-nez v18, :cond_17

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    const/high16 v19, 0x800000

    goto :goto_f

    :cond_16
    const/high16 v19, 0x400000

    :goto_f
    or-int v1, v1, v19

    :cond_17
    :goto_10
    and-int/lit16 v3, v9, 0x100

    if-eqz v3, :cond_18

    const/high16 v19, 0x6000000

    or-int v1, v1, v19

    move-object/from16 v0, p8

    goto :goto_12

    :cond_18
    const/high16 v19, 0xe000000

    and-int v19, v10, v19

    move-object/from16 v0, p8

    if-nez v19, :cond_1a

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    const/high16 v19, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v19, 0x2000000

    :goto_11
    or-int v1, v1, v19

    :cond_1a
    :goto_12
    and-int/lit16 v0, v9, 0x200

    if-eqz v0, :cond_1b

    const/high16 v19, 0x30000000

    or-int v1, v1, v19

    move-object/from16 v2, p9

    goto :goto_14

    :cond_1b
    const/high16 v19, 0x70000000

    and-int v19, v10, v19

    move-object/from16 v2, p9

    if-nez v19, :cond_1d

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    const/high16 v19, 0x20000000

    goto :goto_13

    :cond_1c
    const/high16 v19, 0x10000000

    :goto_13
    or-int v1, v1, v19

    :cond_1d
    :goto_14
    and-int/lit8 v19, p14, 0xe

    if-nez v19, :cond_20

    and-int/lit16 v2, v9, 0x400

    if-nez v2, :cond_1e

    move-object/from16 v2, p10

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f

    const/16 v19, 0x4

    goto :goto_15

    :cond_1e
    move-object/from16 v2, p10

    :cond_1f
    const/16 v19, 0x2

    :goto_15
    or-int v19, p14, v19

    goto :goto_16

    :cond_20
    move-object/from16 v2, p10

    move/from16 v19, p14

    :goto_16
    and-int/lit16 v2, v9, 0x800

    if-eqz v2, :cond_21

    or-int/lit8 v19, v19, 0x30

    move-object/from16 v6, p11

    goto :goto_18

    :cond_21
    and-int/lit8 v20, p14, 0x70

    move-object/from16 v6, p11

    if-nez v20, :cond_23

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_22

    const/16 v17, 0x20

    goto :goto_17

    :cond_22
    const/16 v17, 0x10

    :goto_17
    or-int v19, v19, v17

    :cond_23
    :goto_18
    move/from16 v49, v19

    const v17, 0x5b6db6db

    and-int v6, v1, v17

    const v7, 0x12492492

    if-ne v6, v7, :cond_25

    and-int/lit8 v6, v49, 0x5b

    const/16 v7, 0x12

    if-ne v6, v7, :cond_25

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_24

    goto :goto_19

    .line 491
    :cond_24
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object v0, v8

    move-object v6, v14

    move-object/from16 v8, p7

    goto/16 :goto_25

    .line 436
    :cond_25
    :goto_19
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v6, v10, 0x1

    if-eqz v6, :cond_28

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_26

    goto :goto_1a

    .line 823
    :cond_26
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v9, 0x400

    if-eqz v0, :cond_27

    and-int/lit8 v49, v49, -0xf

    :cond_27
    move-object/from16 v7, p5

    move/from16 v30, p6

    move-object/from16 v31, p7

    move-object/from16 v32, p8

    move-object/from16 v33, p9

    move-object/from16 v6, p10

    move-object/from16 v34, p11

    move/from16 v5, v49

    goto/16 :goto_22

    :cond_28
    :goto_1a
    if-eqz v4, :cond_29

    .line 429
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    goto :goto_1b

    :cond_29
    move-object/from16 v4, p5

    :goto_1b
    if-eqz v16, :cond_2a

    const/4 v6, 0x1

    goto :goto_1c

    :cond_2a
    move/from16 v6, p6

    :goto_1c
    if-eqz v5, :cond_2b

    const/4 v5, 0x0

    goto :goto_1d

    :cond_2b
    move-object/from16 v5, p7

    :goto_1d
    if-eqz v3, :cond_2c

    const/4 v3, 0x0

    goto :goto_1e

    :cond_2c
    move-object/from16 v3, p8

    :goto_1e
    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    goto :goto_1f

    :cond_2d
    move-object/from16 v0, p9

    :goto_1f
    and-int/lit16 v7, v9, 0x400

    if-eqz v7, :cond_2e

    .line 434
    sget-object v16, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x0

    const-wide/16 v40, 0x0

    const-wide/16 v42, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x6000

    const/16 v47, 0x3fff

    move-object/from16 v44, v8

    invoke-virtual/range {v16 .. v47}, Landroidx/compose/material3/SearchBarDefaults;->inputFieldColors-ITpI4ow(JJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/TextFieldColors;

    move-result-object v7

    and-int/lit8 v49, v49, -0xf

    goto :goto_20

    :cond_2e
    move-object/from16 v7, p10

    :goto_20
    if-eqz v2, :cond_30

    const v2, -0x1d58f75c

    .line 435
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v8, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 824
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 825
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v2, v14, :cond_2f

    .line 435
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v2

    .line 827
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 823
    :cond_2f
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v2, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v33, v0

    move-object/from16 v34, v2

    goto :goto_21

    :cond_30
    move-object/from16 v34, p11

    move-object/from16 v33, v0

    :goto_21
    move-object/from16 v32, v3

    move-object/from16 v31, v5

    move/from16 v30, v6

    move-object v6, v7

    move/from16 v5, v49

    move-object v7, v4

    :goto_22
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "androidx.compose.material3.SearchBarInputField (SearchBar.kt:422)"

    const v2, -0x4f46f856

    .line 436
    invoke-static {v2, v1, v5, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_31
    const v0, -0x1d58f75c

    .line 437
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v8, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 831
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 832
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_32

    .line 437
    new-instance v0, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 834
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 830
    :cond_32
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 437
    check-cast v0, Landroidx/compose/ui/focus/FocusRequester;

    .line 438
    sget-object v2, Landroidx/compose/material3/Strings;->Companion:Landroidx/compose/material3/Strings$Companion;

    invoke-virtual {v2}, Landroidx/compose/material3/Strings$Companion;->getSearchBarSearch-adMyvUU()I

    move-result v2

    const/4 v4, 0x6

    invoke-static {v2, v8, v4}, Landroidx/compose/material3/Strings_androidKt;->getString-NWtq2-8(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    .line 439
    sget-object v3, Landroidx/compose/material3/Strings;->Companion:Landroidx/compose/material3/Strings$Companion;

    invoke-virtual {v3}, Landroidx/compose/material3/Strings$Companion;->getSuggestionsAvailable-adMyvUU()I

    move-result v3

    invoke-static {v3, v8, v4}, Landroidx/compose/material3/Strings_androidKt;->getString-NWtq2-8(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    const v14, 0x1b9236c2

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v14, "*439@20460L7,440@20502L74"

    invoke-static {v8, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 440
    invoke-static {}, Landroidx/compose/material3/TextKt;->getLocalTextStyle()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/CompositionLocal;

    const v4, 0x789c5f52

    const-string v9, "CC:CompositionLocal.kt#9igjgp"

    .line 837
    invoke-static {v8, v4, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v4, Landroidx/compose/ui/text/TextStyle;

    .line 440
    invoke-virtual {v4}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v16

    .line 839
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v19

    cmp-long v4, v16, v19

    if-eqz v4, :cond_33

    goto :goto_23

    .line 441
    :cond_33
    move-object/from16 v9, v34

    check-cast v9, Landroidx/compose/foundation/interaction/InteractionSource;

    shr-int/lit8 v14, v1, 0x12

    and-int/lit8 v14, v14, 0xe

    or-int/lit8 v14, v14, 0x30

    shl-int/lit8 v4, v5, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v4, v14

    shl-int/lit8 v14, v5, 0x9

    and-int/lit16 v14, v14, 0x1c00

    or-int/2addr v4, v14

    move-object/from16 p5, v6

    move/from16 p6, v30

    const/4 v14, 0x0

    move/from16 p7, v14

    move-object/from16 p8, v9

    move-object/from16 p9, v8

    move/from16 p10, v4

    invoke-virtual/range {p5 .. p10}, Landroidx/compose/material3/TextFieldColors;->textColor$material3_release(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v16

    :goto_23
    move-wide/from16 v51, v16

    .line 440
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 448
    sget-object v4, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v4}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldHeight-D9Ej5fM()F

    move-result v4

    invoke-static {v7, v4}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v9, 0x0

    move/from16 p12, v1

    const/4 v1, 0x1

    const/4 v14, 0x0

    .line 449
    invoke-static {v4, v9, v1, v14}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 450
    invoke-static {v4, v0}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v4, 0x44faf204

    .line 451
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v8, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 840
    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 841
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v4, :cond_34

    .line 842
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v9, v4, :cond_35

    .line 451
    :cond_34
    new-instance v4, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$2$1;

    invoke-direct {v4, v11}, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$2$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v9, v4

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 844
    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 840
    :cond_35
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 451
    invoke-static {v1, v9}, Landroidx/compose/ui/focus/FocusChangedModifierKt;->onFocusChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 452
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v2, v4, v3, v0}, [Ljava/lang/Object;

    move-result-object v4

    const v9, -0x21de6e89

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v9, 0x4

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_24
    if-ge v14, v9, :cond_36

    .line 848
    aget-object v9, v4, v14

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    or-int v16, v16, v9

    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x4

    goto :goto_24

    .line 850
    :cond_36
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v16, :cond_37

    .line 851
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v4, v9, :cond_38

    .line 452
    :cond_37
    new-instance v4, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$3$1;

    invoke-direct {v4, v2, v12, v3, v0}, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$3$1;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/ui/focus/FocusRequester;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 853
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 849
    :cond_38
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 452
    invoke-static {v1, v0, v4, v3, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    .line 464
    invoke-static {}, Landroidx/compose/material3/TextKt;->getLocalTextStyle()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    const v1, 0x789c5f52

    const-string v2, "CC:CompositionLocal.kt#9igjgp"

    .line 856
    invoke-static {v8, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v0, Landroidx/compose/ui/text/TextStyle;

    .line 464
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v50, v1

    const-wide/16 v53, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const-wide/16 v60, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const-wide/16 v65, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const-wide/16 v71, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const v78, 0x3ffffe

    const/16 v79, 0x0

    invoke-direct/range {v50 .. v79}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v23

    .line 465
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    shl-int/lit8 v1, v5, 0x3

    and-int/lit8 v1, v1, 0x70

    const/4 v4, 0x6

    or-int/2addr v1, v4

    const/4 v2, 0x0

    invoke-virtual {v6, v2, v8, v1}, Landroidx/compose/material3/TextFieldColors;->cursorColor$material3_release(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v1

    const/4 v9, 0x0

    invoke-direct {v0, v1, v2, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 466
    new-instance v26, Landroidx/compose/foundation/text/KeyboardOptions;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x0

    sget-object v14, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getSearch-eUduSuo()I

    move-result v14

    const/16 v17, 0x7

    const/16 v18, 0x0

    move-object/from16 p5, v26

    move/from16 p6, v1

    move/from16 p7, v2

    move/from16 p8, v9

    move/from16 p9, v14

    move/from16 p10, v17

    move-object/from16 p11, v18

    invoke-direct/range {p5 .. p11}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(IZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const v1, 0x1e7b2b64

    .line 467
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 857
    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 859
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_39

    .line 860
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_3a

    .line 467
    :cond_39
    new-instance v1, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$4$1;

    invoke-direct {v1, v13, v15}, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$4$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 862
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 858
    :cond_3a
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object/from16 v40, v2

    check-cast v40, Lkotlin/jvm/functions/Function1;

    const/16 v41, 0x0

    const/16 v42, 0x2f

    const/16 v43, 0x0

    .line 467
    new-instance v35, Landroidx/compose/foundation/text/KeyboardActions;

    move-object/from16 v17, v35

    invoke-direct/range {v35 .. v43}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v14, 0x0

    move v9, v3

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 465
    move-object/from16 v24, v0

    check-cast v24, Landroidx/compose/ui/graphics/Brush;

    .line 469
    new-instance v3, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5;

    move-object v0, v3

    move/from16 v27, p12

    move-object/from16 v1, p0

    move/from16 v2, v30

    move-object v14, v3

    move-object/from16 v3, v34

    move/from16 v28, v4

    move-object/from16 v4, v31

    move/from16 v49, v5

    move-object/from16 v5, v32

    move-object/from16 v35, v6

    move-object/from16 v6, v33

    move-object/from16 v36, v7

    move-object/from16 v7, v35

    move-object v15, v8

    move/from16 v8, v27

    move v10, v9

    move/from16 v9, v49

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5;-><init>(Ljava/lang/String;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;II)V

    const v0, 0x22da3ae0

    invoke-static {v15, v0, v10, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Lkotlin/jvm/functions/Function3;

    and-int/lit8 v0, v27, 0xe

    const/high16 v1, 0x6180000

    or-int/2addr v0, v1

    and-int/lit8 v1, v27, 0x70

    or-int/2addr v0, v1

    shr-int/lit8 v1, v27, 0x9

    and-int/lit16 v1, v1, 0x1c00

    or-int v27, v0, v1

    shl-int/lit8 v0, v49, 0x6

    and-int/lit16 v0, v0, 0x1c00

    or-int v28, v0, v48

    const/16 v29, 0x1e10

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, v16

    move/from16 v13, v30

    move-object v0, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v26

    move-object/from16 v23, v34

    move-object/from16 v26, v0

    const/4 v14, 0x0

    .line 444
    invoke-static/range {v10 .. v29}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3b
    move/from16 v7, v30

    move-object/from16 v8, v31

    move-object/from16 v9, v32

    move-object/from16 v10, v33

    move-object/from16 v12, v34

    move-object/from16 v11, v35

    move-object/from16 v6, v36

    .line 491
    :goto_25
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_3c

    goto :goto_26

    :cond_3c
    new-instance v16, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v80, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;III)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v80

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_26
    return-void
.end method

.method private static final SearchBar_Id_Pb_0$lambda$2(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 865
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$SearchBarInputField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p15}, Landroidx/compose/material3/SearchBarKt;->SearchBarInputField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V

    return-void
.end method

.method public static final synthetic access$SearchBar_Id_Pb_0$lambda$2(Landroidx/compose/runtime/State;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material3/SearchBarKt;->SearchBar_Id_Pb_0$lambda$2(Landroidx/compose/runtime/State;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getDockedEnterTransition$p()Landroidx/compose/animation/EnterTransition;
    .locals 1

    sget-object v0, Landroidx/compose/material3/SearchBarKt;->DockedEnterTransition:Landroidx/compose/animation/EnterTransition;

    return-object v0
.end method

.method public static final synthetic access$getDockedExitTransition$p()Landroidx/compose/animation/ExitTransition;
    .locals 1

    sget-object v0, Landroidx/compose/material3/SearchBarKt;->DockedExitTransition:Landroidx/compose/animation/ExitTransition;

    return-object v0
.end method

.method public static final synthetic access$getSearchBarCornerRadius$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/SearchBarKt;->SearchBarCornerRadius:F

    return v0
.end method

.method public static final synthetic access$getSearchBarIconOffsetX$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/SearchBarKt;->SearchBarIconOffsetX:F

    return v0
.end method

.method public static final synthetic access$getSearchBarMaxWidth$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/SearchBarKt;->SearchBarMaxWidth:F

    return v0
.end method

.method public static final getDockedActiveTableMinHeight()F
    .locals 1

    sget v0, Landroidx/compose/material3/SearchBarKt;->DockedActiveTableMinHeight:F

    return v0
.end method

.method private static synthetic getSearchBarCornerRadius$annotations()V
    .locals 0

    return-void
.end method

.method public static final getSearchBarMinWidth()F
    .locals 1

    sget v0, Landroidx/compose/material3/SearchBarKt;->SearchBarMinWidth:F

    return v0
.end method

.method public static final getSearchBarVerticalPadding()F
    .locals 1

    sget v0, Landroidx/compose/material3/SearchBarKt;->SearchBarVerticalPadding:F

    return v0
.end method
