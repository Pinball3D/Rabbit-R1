.class public final Landroidx/compose/material3/TextFieldImplKt;
.super Ljava/lang/Object;
.source "TextFieldImpl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldImpl.kt\nandroidx/compose/material3/TextFieldImplKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 5 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,429:1\n50#2:430\n49#2:431\n1114#3,6:432\n658#4:438\n646#4:439\n658#4:440\n646#4:441\n154#5:442\n154#5:443\n154#5:444\n154#5:445\n154#5:446\n154#5:447\n154#5:448\n154#5:449\n*S KotlinDebug\n*F\n+ 1 TextFieldImpl.kt\nandroidx/compose/material3/TextFieldImplKt\n*L\n82#1:430\n82#1:431\n82#1:432,6\n107#1:438\n107#1:439\n110#1:440\n110#1:441\n421#1:442\n422#1:443\n423#1:444\n424#1:445\n425#1:446\n426#1:447\n427#1:448\n429#1:449\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u00a0\u0002\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u00032\u0011\u00102\u001a\r\u0012\u0004\u0012\u00020.03\u00a2\u0006\u0002\u000842\u0006\u00105\u001a\u0002062\u0013\u00107\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103\u00a2\u0006\u0002\u000842\u0015\u0008\u0002\u00108\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103\u00a2\u0006\u0002\u000842\u0015\u0008\u0002\u00109\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103\u00a2\u0006\u0002\u000842\u0015\u0008\u0002\u0010:\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103\u00a2\u0006\u0002\u000842\u0015\u0008\u0002\u0010;\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103\u00a2\u0006\u0002\u000842\u0015\u0008\u0002\u0010<\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103\u00a2\u0006\u0002\u000842\u0015\u0008\u0002\u0010=\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103\u00a2\u0006\u0002\u000842\u0008\u0008\u0002\u0010>\u001a\u00020?2\u0008\u0008\u0002\u0010@\u001a\u00020?2\u0008\u0008\u0002\u0010A\u001a\u00020?2\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020G2\u0011\u0010H\u001a\r\u0012\u0004\u0012\u00020.03\u00a2\u0006\u0002\u00084H\u0001\u00a2\u0006\u0002\u0010I\u001a<\u0010J\u001a\u00020.2\u0006\u0010K\u001a\u00020L2\n\u0008\u0002\u0010M\u001a\u0004\u0018\u00010N2\u0011\u0010O\u001a\r\u0012\u0004\u0012\u00020.03\u00a2\u0006\u0002\u00084H\u0001\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008P\u0010Q\u001a\u0012\u0010R\u001a\u00020\u00012\u0008\u0010S\u001a\u0004\u0018\u00010TH\u0000\u001a\u0012\u0010U\u001a\u00020\u00012\u0008\u0010S\u001a\u0004\u0018\u00010TH\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0019\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007\"\u0014\u0010\t\u001a\u00020\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u000e\u0010\r\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0019\u0010\u000f\u001a\u00020\u0005X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0010\u0010\u0007\"\u0019\u0010\u0011\u001a\u00020\u0005X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0012\u0010\u0007\"\u0019\u0010\u0013\u001a\u00020\u0005X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0014\u0010\u0007\"\u000e\u0010\u0015\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0017\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0018\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0019\u0010\u0019\u001a\u00020\u0005X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u001a\u0010\u0007\"\u000e\u0010\u001b\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001c\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0019\u0010\u001d\u001a\u00020\u0005X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u001e\u0010\u0007\"\u000e\u0010\u001f\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0019\u0010 \u001a\u00020\u0005X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008!\u0010\u0007\"\u000e\u0010\"\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0019\u0010#\u001a\u00020$X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\'\u001a\u0004\u0008%\u0010&\"\u001a\u0010(\u001a\u0004\u0018\u00010)*\u00020*8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006V"
    }
    d2 = {
        "AnimationDuration",
        "",
        "ContainerId",
        "",
        "HorizontalIconPadding",
        "Landroidx/compose/ui/unit/Dp;",
        "getHorizontalIconPadding",
        "()F",
        "F",
        "IconDefaultSizeModifier",
        "Landroidx/compose/ui/Modifier;",
        "getIconDefaultSizeModifier",
        "()Landroidx/compose/ui/Modifier;",
        "LabelId",
        "LeadingId",
        "MinFocusedLabelLineHeight",
        "getMinFocusedLabelLineHeight",
        "MinSupportingTextLineHeight",
        "getMinSupportingTextLineHeight",
        "MinTextLineHeight",
        "getMinTextLineHeight",
        "PlaceholderAnimationDelayOrDuration",
        "PlaceholderAnimationDuration",
        "PlaceholderId",
        "PrefixId",
        "PrefixSuffixTextPadding",
        "getPrefixSuffixTextPadding",
        "SuffixId",
        "SupportingId",
        "SupportingTopPadding",
        "getSupportingTopPadding",
        "TextFieldId",
        "TextFieldPadding",
        "getTextFieldPadding",
        "TrailingId",
        "ZeroConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "getZeroConstraints",
        "()J",
        "J",
        "layoutId",
        "",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "getLayoutId",
        "(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;",
        "CommonDecorationBox",
        "",
        "type",
        "Landroidx/compose/material3/TextFieldType;",
        "value",
        "innerTextField",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "visualTransformation",
        "Landroidx/compose/ui/text/input/VisualTransformation;",
        "label",
        "placeholder",
        "leadingIcon",
        "trailingIcon",
        "prefix",
        "suffix",
        "supportingText",
        "singleLine",
        "",
        "enabled",
        "isError",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/InteractionSource;",
        "contentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "colors",
        "Landroidx/compose/material3/TextFieldColors;",
        "container",
        "(Landroidx/compose/material3/TextFieldType;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V",
        "Decoration",
        "contentColor",
        "Landroidx/compose/ui/graphics/Color;",
        "typography",
        "Landroidx/compose/ui/text/TextStyle;",
        "content",
        "Decoration-KTwxG1Y",
        "(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "heightOrZero",
        "placeable",
        "Landroidx/compose/ui/layout/Placeable;",
        "widthOrZero",
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
.field public static final AnimationDuration:I = 0x96

.field public static final ContainerId:Ljava/lang/String; = "Container"

.field private static final HorizontalIconPadding:F

.field private static final IconDefaultSizeModifier:Landroidx/compose/ui/Modifier;

.field public static final LabelId:Ljava/lang/String; = "Label"

.field public static final LeadingId:Ljava/lang/String; = "Leading"

.field private static final MinFocusedLabelLineHeight:F

.field private static final MinSupportingTextLineHeight:F

.field private static final MinTextLineHeight:F

.field private static final PlaceholderAnimationDelayOrDuration:I = 0x43

.field private static final PlaceholderAnimationDuration:I = 0x53

.field public static final PlaceholderId:Ljava/lang/String; = "Hint"

.field public static final PrefixId:Ljava/lang/String; = "Prefix"

.field private static final PrefixSuffixTextPadding:F

.field public static final SuffixId:Ljava/lang/String; = "Suffix"

.field public static final SupportingId:Ljava/lang/String; = "Supporting"

.field private static final SupportingTopPadding:F

.field public static final TextFieldId:Ljava/lang/String; = "TextField"

.field private static final TextFieldPadding:F

.field public static final TrailingId:Ljava/lang/String; = "Trailing"

.field private static final ZeroConstraints:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 415
    invoke-static {v0, v0, v0, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/material3/TextFieldImplKt;->ZeroConstraints:J

    const/16 v0, 0x10

    int-to-float v0, v0

    .line 442
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/TextFieldImplKt;->TextFieldPadding:F

    const/16 v1, 0xc

    int-to-float v1, v1

    .line 443
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/TextFieldImplKt;->HorizontalIconPadding:F

    const/4 v1, 0x4

    int-to-float v1, v1

    .line 444
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/TextFieldImplKt;->SupportingTopPadding:F

    const/4 v1, 0x2

    int-to-float v1, v1

    .line 445
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/TextFieldImplKt;->PrefixSuffixTextPadding:F

    const/16 v1, 0x18

    int-to-float v1, v1

    .line 446
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/TextFieldImplKt;->MinTextLineHeight:F

    .line 447
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/TextFieldImplKt;->MinFocusedLabelLineHeight:F

    .line 448
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/TextFieldImplKt;->MinSupportingTextLineHeight:F

    .line 429
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/16 v1, 0x30

    int-to-float v1, v1

    .line 449
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 429
    invoke-static {v0, v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/TextFieldImplKt;->IconDefaultSizeModifier:Landroidx/compose/ui/Modifier;

    return-void
.end method

.method public static final CommonDecorationBox(Landroidx/compose/material3/TextFieldType;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/TextFieldType;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
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
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;ZZZ",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/material3/TextFieldColors;",
            "Lkotlin/jvm/functions/Function2<",
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

    move-object/from16 v12, p3

    move-object/from16 v11, p4

    move-object/from16 v10, p14

    move-object/from16 v9, p15

    move-object/from16 v8, p16

    move-object/from16 v7, p17

    move/from16 v6, p19

    move/from16 v5, p20

    move/from16 v4, p21

    const-string/jumbo v0, "type"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "innerTextField"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "visualTransformation"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interactionSource"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentPadding"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colors"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x38729d6c

    move-object/from16 v1, p18

    .line 81
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    const-string v1, "C(CommonDecorationBox)P(15,16,4,17,7,9,8,14,10,12,13,11,3,6,5,2)81@3217L105,85@3372L25,96@3756L10,103@4099L7282:TextFieldImpl.kt#uh7d8r"

    invoke-static {v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v4, 0x1

    const/16 v16, 0x2

    if-eqz v1, :cond_0

    or-int/lit8 v1, v6, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v6, 0xe

    if-nez v1, :cond_2

    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    move/from16 v1, v16

    :goto_0
    or-int/2addr v1, v6

    goto :goto_1

    :cond_2
    move v1, v6

    :goto_1
    and-int/lit8 v17, v4, 0x2

    const/16 v18, 0x20

    const/16 v19, 0x10

    if-eqz v17, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v17, v6, 0x70

    if-nez v17, :cond_5

    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    move/from16 v17, v18

    goto :goto_2

    :cond_4
    move/from16 v17, v19

    :goto_2
    or-int v1, v1, v17

    :cond_5
    :goto_3
    and-int/lit8 v17, v4, 0x4

    const/16 v20, 0x100

    const/16 v21, 0x80

    if-eqz v17, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v2, v6, 0x380

    if-nez v2, :cond_8

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move/from16 v2, v20

    goto :goto_4

    :cond_7
    move/from16 v2, v21

    :goto_4
    or-int/2addr v1, v2

    :cond_8
    :goto_5
    and-int/lit8 v2, v4, 0x8

    const/16 v17, 0x800

    const/16 v22, 0x400

    if-eqz v2, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v2, v6, 0x1c00

    if-nez v2, :cond_b

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move/from16 v2, v17

    goto :goto_6

    :cond_a
    move/from16 v2, v22

    :goto_6
    or-int/2addr v1, v2

    :cond_b
    :goto_7
    and-int/lit8 v2, v4, 0x10

    const/16 v23, 0x4000

    const/16 v24, 0x2000

    if-eqz v2, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_9

    :cond_c
    const v2, 0xe000

    and-int/2addr v2, v6

    if-nez v2, :cond_e

    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move/from16 v2, v23

    goto :goto_8

    :cond_d
    move/from16 v2, v24

    :goto_8
    or-int/2addr v1, v2

    :cond_e
    :goto_9
    and-int/lit8 v2, v4, 0x20

    const/high16 v25, 0x20000

    const/high16 v26, 0x10000

    if-eqz v2, :cond_f

    const/high16 v27, 0x30000

    or-int v1, v1, v27

    move-object/from16 v0, p5

    goto :goto_b

    :cond_f
    const/high16 v27, 0x70000

    and-int v27, v6, v27

    move-object/from16 v0, p5

    if-nez v27, :cond_11

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_10

    move/from16 v28, v25

    goto :goto_a

    :cond_10
    move/from16 v28, v26

    :goto_a
    or-int v1, v1, v28

    :cond_11
    :goto_b
    and-int/lit8 v28, v4, 0x40

    if-eqz v28, :cond_12

    const/high16 v29, 0x180000

    or-int v1, v1, v29

    move-object/from16 v0, p6

    goto :goto_d

    :cond_12
    const/high16 v29, 0x380000

    and-int v29, v6, v29

    move-object/from16 v0, p6

    if-nez v29, :cond_14

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    const/high16 v29, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v29, 0x80000

    :goto_c
    or-int v1, v1, v29

    :cond_14
    :goto_d
    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_15

    const/high16 v29, 0xc00000

    or-int v1, v1, v29

    move-object/from16 v13, p7

    goto :goto_f

    :cond_15
    const/high16 v29, 0x1c00000

    and-int v29, v6, v29

    move-object/from16 v13, p7

    if-nez v29, :cond_17

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_16

    const/high16 v29, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v29, 0x400000

    :goto_e
    or-int v1, v1, v29

    :cond_17
    :goto_f
    and-int/lit16 v13, v4, 0x100

    if-eqz v13, :cond_18

    const/high16 v29, 0x6000000

    or-int v1, v1, v29

    move-object/from16 v15, p8

    goto :goto_11

    :cond_18
    const/high16 v29, 0xe000000

    and-int v29, v6, v29

    move-object/from16 v15, p8

    if-nez v29, :cond_1a

    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_19

    const/high16 v29, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v29, 0x2000000

    :goto_10
    or-int v1, v1, v29

    :cond_1a
    :goto_11
    and-int/lit16 v15, v4, 0x200

    if-eqz v15, :cond_1b

    const/high16 v29, 0x30000000

    or-int v1, v1, v29

    move-object/from16 v6, p9

    goto :goto_13

    :cond_1b
    const/high16 v29, 0x70000000

    and-int v29, v6, v29

    move-object/from16 v6, p9

    if-nez v29, :cond_1d

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1c

    const/high16 v29, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v29, 0x10000000

    :goto_12
    or-int v1, v1, v29

    :cond_1d
    :goto_13
    and-int/lit16 v6, v4, 0x400

    if-eqz v6, :cond_1e

    or-int/lit8 v16, v5, 0x6

    move-object/from16 v11, p10

    goto :goto_14

    :cond_1e
    and-int/lit8 v29, v5, 0xe

    move-object/from16 v11, p10

    if-nez v29, :cond_20

    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1f

    const/16 v16, 0x4

    :cond_1f
    or-int v16, v5, v16

    goto :goto_14

    :cond_20
    move/from16 v16, v5

    :goto_14
    and-int/lit16 v11, v4, 0x800

    if-eqz v11, :cond_21

    or-int/lit8 v16, v16, 0x30

    goto :goto_16

    :cond_21
    and-int/lit8 v29, v5, 0x70

    move/from16 v12, p11

    if-nez v29, :cond_23

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v29

    if-eqz v29, :cond_22

    goto :goto_15

    :cond_22
    move/from16 v18, v19

    :goto_15
    or-int v16, v16, v18

    :cond_23
    :goto_16
    move/from16 v12, v16

    and-int/lit16 v14, v4, 0x1000

    if-eqz v14, :cond_24

    or-int/lit16 v12, v12, 0x180

    move/from16 v16, v14

    goto :goto_18

    :cond_24
    move/from16 v16, v14

    and-int/lit16 v14, v5, 0x380

    if-nez v14, :cond_26

    move/from16 v14, p12

    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v18

    if-eqz v18, :cond_25

    goto :goto_17

    :cond_25
    move/from16 v20, v21

    :goto_17
    or-int v12, v12, v20

    goto :goto_19

    :cond_26
    :goto_18
    move/from16 v14, p12

    :goto_19
    and-int/lit16 v14, v4, 0x2000

    if-eqz v14, :cond_27

    or-int/lit16 v12, v12, 0xc00

    move/from16 v18, v14

    goto :goto_1b

    :cond_27
    move/from16 v18, v14

    and-int/lit16 v14, v5, 0x1c00

    if-nez v14, :cond_29

    move/from16 v14, p13

    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_28

    goto :goto_1a

    :cond_28
    move/from16 v17, v22

    :goto_1a
    or-int v12, v12, v17

    goto :goto_1c

    :cond_29
    :goto_1b
    move/from16 v14, p13

    :goto_1c
    and-int/lit16 v14, v4, 0x4000

    if-eqz v14, :cond_2a

    or-int/lit16 v12, v12, 0x6000

    goto :goto_1e

    :cond_2a
    const v14, 0xe000

    and-int/2addr v14, v5

    if-nez v14, :cond_2c

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2b

    goto :goto_1d

    :cond_2b
    move/from16 v23, v24

    :goto_1d
    or-int v12, v12, v23

    :cond_2c
    :goto_1e
    const v14, 0x8000

    and-int/2addr v14, v4

    if-eqz v14, :cond_2d

    const/high16 v14, 0x30000

    :goto_1f
    or-int/2addr v12, v14

    goto :goto_20

    :cond_2d
    const/high16 v14, 0x70000

    and-int/2addr v14, v5

    if-nez v14, :cond_2f

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2e

    move/from16 v14, v25

    goto :goto_1f

    :cond_2e
    move/from16 v14, v26

    goto :goto_1f

    :cond_2f
    :goto_20
    and-int v14, v4, v26

    if-eqz v14, :cond_30

    const/high16 v14, 0x180000

    :goto_21
    or-int/2addr v12, v14

    goto :goto_22

    :cond_30
    const/high16 v14, 0x380000

    and-int/2addr v14, v5

    if-nez v14, :cond_32

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_31

    const/high16 v14, 0x100000

    goto :goto_21

    :cond_31
    const/high16 v14, 0x80000

    goto :goto_21

    :cond_32
    :goto_22
    and-int v14, v4, v25

    if-eqz v14, :cond_33

    const/high16 v14, 0xc00000

    :goto_23
    or-int/2addr v12, v14

    goto :goto_24

    :cond_33
    const/high16 v14, 0x1c00000

    and-int/2addr v14, v5

    if-nez v14, :cond_35

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_34

    const/high16 v14, 0x800000

    goto :goto_23

    :cond_34
    const/high16 v14, 0x400000

    goto :goto_23

    :cond_35
    :goto_24
    const v14, 0x5b6db6db

    and-int/2addr v14, v1

    const v4, 0x12492492

    if-ne v14, v4, :cond_37

    const v4, 0x16db6db

    and-int/2addr v4, v12

    const v14, 0x492492

    if-ne v4, v14, :cond_37

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_36

    goto :goto_25

    .line 269
    :cond_36
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v30, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object v12, v3

    goto/16 :goto_36

    :cond_37
    :goto_25
    const/4 v4, 0x0

    if-eqz v2, :cond_38

    move-object/from16 v23, v4

    goto :goto_26

    :cond_38
    move-object/from16 v23, p5

    :goto_26
    if-eqz v28, :cond_39

    move-object/from16 v24, v4

    goto :goto_27

    :cond_39
    move-object/from16 v24, p6

    :goto_27
    if-eqz v0, :cond_3a

    move-object/from16 v25, v4

    goto :goto_28

    :cond_3a
    move-object/from16 v25, p7

    :goto_28
    if-eqz v13, :cond_3b

    move-object/from16 v26, v4

    goto :goto_29

    :cond_3b
    move-object/from16 v26, p8

    :goto_29
    if-eqz v15, :cond_3c

    move-object/from16 v28, v4

    goto :goto_2a

    :cond_3c
    move-object/from16 v28, p9

    :goto_2a
    if-eqz v6, :cond_3d

    move-object/from16 v29, v4

    goto :goto_2b

    :cond_3d
    move-object/from16 v29, p10

    :goto_2b
    if-eqz v11, :cond_3e

    const/16 v30, 0x0

    goto :goto_2c

    :cond_3e
    move/from16 v30, p11

    :goto_2c
    if-eqz v16, :cond_3f

    const/16 v31, 0x1

    goto :goto_2d

    :cond_3f
    move/from16 v31, p12

    :goto_2d
    if-eqz v18, :cond_40

    const/16 v32, 0x0

    goto :goto_2e

    :cond_40
    move/from16 v32, p13

    .line 76
    :goto_2e
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_41

    const-string v2, "androidx.compose.material3.CommonDecorationBox (TextFieldImpl.kt:61)"

    const v4, -0x38729d6c

    .line 81
    invoke-static {v4, v1, v12, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_41
    const v2, 0x1e7b2b64

    .line 82
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move-object/from16 v14, p1

    .line 430
    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v13, p3

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 432
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_42

    .line 433
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v4, v2, :cond_43

    .line 83
    :cond_42
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x6

    const/16 v16, 0x0

    move-object/from16 p5, v2

    move-object/from16 p6, p1

    move-object/from16 p7, v4

    move-object/from16 p8, v6

    move/from16 p9, v11

    move-object/from16 p10, v16

    invoke-direct/range {p5 .. p10}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v13, v2}, Landroidx/compose/ui/text/input/VisualTransformation;->filter(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;

    move-result-object v4

    .line 435
    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 431
    :cond_43
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v4, Landroidx/compose/ui/text/input/TransformedText;

    .line 84
    invoke-virtual {v4}, Landroidx/compose/ui/text/input/TransformedText;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v4

    shr-int/lit8 v2, v12, 0xc

    and-int/lit8 v2, v2, 0xe

    .line 86
    invoke-static {v10, v3, v2}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 88
    sget-object v2, Landroidx/compose/material3/InputPhase;->Focused:Landroidx/compose/material3/InputPhase;

    :goto_2f
    move-object v11, v2

    goto :goto_30

    .line 89
    :cond_44
    move-object v2, v4

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_45

    sget-object v2, Landroidx/compose/material3/InputPhase;->UnfocusedEmpty:Landroidx/compose/material3/InputPhase;

    goto :goto_2f

    .line 90
    :cond_45
    sget-object v2, Landroidx/compose/material3/InputPhase;->UnfocusedNotEmpty:Landroidx/compose/material3/InputPhase;

    goto :goto_2f

    .line 93
    :goto_30
    new-instance v2, Landroidx/compose/material3/TextFieldImplKt$CommonDecorationBox$labelColor$1;

    move-object/from16 p5, v2

    move-object/from16 p6, p16

    move/from16 p7, v31

    move/from16 p8, v32

    move-object/from16 p9, p14

    move/from16 p10, v12

    invoke-direct/range {p5 .. p10}, Landroidx/compose/material3/TextFieldImplKt$CommonDecorationBox$labelColor$1;-><init>(Landroidx/compose/material3/TextFieldColors;ZZLandroidx/compose/foundation/interaction/InteractionSource;I)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function3;

    .line 97
    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v15, 0x6

    invoke-virtual {v2, v3, v15}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Landroidx/compose/material3/Typography;->getBodyLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    .line 99
    invoke-virtual {v2}, Landroidx/compose/material3/Typography;->getBodySmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object v21

    move/from16 p18, v1

    .line 101
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v7

    invoke-static {v0, v1, v7, v8}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v7

    invoke-static {v0, v1, v7, v8}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 102
    :cond_46
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v7

    invoke-static {v0, v1, v7, v8}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v7

    invoke-static {v0, v1, v7, v8}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_48

    :cond_47
    const/16 v19, 0x1

    goto :goto_31

    :cond_48
    const/16 v19, 0x0

    .line 104
    :goto_31
    sget-object v27, Landroidx/compose/material3/TextFieldTransitionScope;->INSTANCE:Landroidx/compose/material3/TextFieldTransitionScope;

    const v0, -0x26871a1d

    .line 105
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "*105@4195L10,106@4289L22"

    invoke-static {v3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 106
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v0, v3, v15}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/Typography;->getBodySmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v0

    if-eqz v19, :cond_4a

    .line 439
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v7

    cmp-long v2, v0, v7

    if-eqz v2, :cond_49

    goto :goto_32

    :cond_49
    const/4 v0, 0x0

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v11, v3, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    :cond_4a
    :goto_32
    move-wide/from16 v33, v0

    .line 106
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v0, -0x2687195c

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "*108@4388L10,109@4482L22"

    invoke-static {v3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 109
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v0, v3, v15}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/Typography;->getBodyLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v0

    if-eqz v19, :cond_4c

    .line 441
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v7

    cmp-long v2, v0, v7

    if-eqz v2, :cond_4b

    goto :goto_33

    :cond_4b
    const/4 v2, 0x0

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v11, v3, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    goto :goto_34

    :cond_4c
    :goto_33
    const/4 v2, 0x0

    :goto_34
    move-wide/from16 v35, v0

    .line 109
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    if-eqz p4, :cond_4d

    const/16 v37, 0x1

    goto :goto_35

    :cond_4d
    move/from16 v37, v2

    .line 114
    :goto_35
    new-instance v15, Landroidx/compose/material3/TextFieldImplKt$CommonDecorationBox$3;

    move-object v0, v15

    move/from16 v18, p18

    move-object/from16 v1, p4

    move-object/from16 v2, v23

    move-object v8, v3

    move-object v3, v4

    move-object/from16 v4, p16

    move/from16 v5, v31

    move-object/from16 v38, v6

    move/from16 v6, v32

    move-object/from16 v7, p14

    move-object/from16 v39, v8

    move v8, v12

    move-object/from16 v9, v26

    move-object/from16 v10, v28

    move-object/from16 v40, v11

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v13, v29

    move-object/from16 v14, p0

    move-object/from16 v41, v15

    move-object/from16 v15, p2

    move/from16 v16, v30

    move-object/from16 v17, p15

    move-object/from16 v22, p17

    invoke-direct/range {v0 .. v22}, Landroidx/compose/material3/TextFieldImplKt$CommonDecorationBox$3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Landroidx/compose/material3/TextFieldColors;ZZLandroidx/compose/foundation/interaction/InteractionSource;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldType;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/foundation/layout/PaddingValues;IZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;)V

    const v0, 0x4cf0ddc7    # 1.2628332E8f

    move-object/from16 v12, v39

    move-object/from16 v1, v41

    const/4 v2, 0x1

    invoke-static {v12, v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function7;

    const/high16 v11, 0x1b0000

    move-object/from16 v1, v27

    move-object/from16 v2, v40

    move-wide/from16 v3, v33

    move-wide/from16 v5, v35

    move-object/from16 v7, v38

    move/from16 v8, v37

    move-object v10, v12

    .line 104
    invoke-virtual/range {v1 .. v11}, Landroidx/compose/material3/TextFieldTransitionScope;->Transition-DTcfvLk(Landroidx/compose/material3/InputPhase;JJLkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function7;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4e
    move-object/from16 v6, v23

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v10, v28

    move-object/from16 v11, v29

    move/from16 v13, v31

    move/from16 v14, v32

    .line 269
    :goto_36
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_4f

    goto :goto_37

    :cond_4f
    new-instance v22, Landroidx/compose/material3/TextFieldImplKt$CommonDecorationBox$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v12, v30

    move-object/from16 v42, v15

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    invoke-direct/range {v0 .. v21}, Landroidx/compose/material3/TextFieldImplKt$CommonDecorationBox$4;-><init>(Landroidx/compose/material3/TextFieldType;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lkotlin/jvm/functions/Function2;III)V

    move-object/from16 v0, v22

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v42

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_37
    return-void
.end method

.method public static final Decoration-KTwxG1Y(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/ui/text/TextStyle;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x5a9a5f29

    .line 279
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p4

    const-string v1, "C(Decoration)P(1:c#ui.graphics.Color,2):TextFieldImpl.kt#uh7d8r"

    invoke-static {p4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, p5, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, p5, 0xe

    if-nez v1, :cond_2

    invoke-interface {p4, p0, p1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p5

    goto :goto_1

    :cond_2
    move v1, p5

    :goto_1
    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, p5, 0x70

    if-nez v3, :cond_5

    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, p6, 0x4

    if-eqz v3, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v3, p5, 0x380

    if-nez v3, :cond_8

    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x100

    goto :goto_4

    :cond_7
    const/16 v3, 0x80

    :goto_4
    or-int/2addr v1, v3

    :cond_8
    :goto_5
    and-int/lit16 v3, v1, 0x2db

    const/16 v4, 0x92

    if-ne v3, v4, :cond_b

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_7

    .line 287
    :cond_9
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_a
    :goto_6
    move-object v4, p2

    goto :goto_9

    :cond_b
    :goto_7
    if-eqz v2, :cond_c

    const/4 p2, 0x0

    .line 277
    :cond_c
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.Decoration (TextFieldImpl.kt:274)"

    .line 279
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 280
    :cond_d
    new-instance v0, Landroidx/compose/material3/TextFieldImplKt$Decoration$contentWithColor$1;

    invoke-direct {v0, p0, p1, p3, v1}, Landroidx/compose/material3/TextFieldImplKt$Decoration$contentWithColor$1;-><init>(JLkotlin/jvm/functions/Function2;I)V

    const v2, 0x56639ed9

    const/4 v3, 0x1

    invoke-static {p4, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    if-eqz p2, :cond_e

    const v2, 0x6d1ab9c0

    .line 286
    invoke-interface {p4, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "285@11827L46"

    invoke-static {p4, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    shr-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, 0xe

    or-int/lit8 v1, v1, 0x30

    invoke-static {p2, v0, p4, v1}, Landroidx/compose/material3/TextKt;->ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_8

    :cond_e
    const v1, 0x6d1ab9f4

    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "285@11879L18"

    invoke-static {p4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_6

    .line 287
    :goto_9
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-nez p2, :cond_f

    goto :goto_a

    :cond_f
    new-instance p4, Landroidx/compose/material3/TextFieldImplKt$Decoration$1;

    move-object v1, p4

    move-wide v2, p0

    move-object v5, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Landroidx/compose/material3/TextFieldImplKt$Decoration$1;-><init>(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;II)V

    check-cast p4, Lkotlin/jvm/functions/Function2;

    invoke-interface {p2, p4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_a
    return-void
.end method

.method public static final getHorizontalIconPadding()F
    .locals 1

    sget v0, Landroidx/compose/material3/TextFieldImplKt;->HorizontalIconPadding:F

    return v0
.end method

.method public static final getIconDefaultSizeModifier()Landroidx/compose/ui/Modifier;
    .locals 1

    sget-object v0, Landroidx/compose/material3/TextFieldImplKt;->IconDefaultSizeModifier:Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public static final getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    invoke-interface {p0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->getParentData()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroidx/compose/ui/layout/LayoutIdParentData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/ui/layout/LayoutIdParentData;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutIdParentData;->getLayoutId()Ljava/lang/Object;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static final getMinFocusedLabelLineHeight()F
    .locals 1

    sget v0, Landroidx/compose/material3/TextFieldImplKt;->MinFocusedLabelLineHeight:F

    return v0
.end method

.method public static final getMinSupportingTextLineHeight()F
    .locals 1

    sget v0, Landroidx/compose/material3/TextFieldImplKt;->MinSupportingTextLineHeight:F

    return v0
.end method

.method public static final getMinTextLineHeight()F
    .locals 1

    sget v0, Landroidx/compose/material3/TextFieldImplKt;->MinTextLineHeight:F

    return v0
.end method

.method public static final getPrefixSuffixTextPadding()F
    .locals 1

    sget v0, Landroidx/compose/material3/TextFieldImplKt;->PrefixSuffixTextPadding:F

    return v0
.end method

.method public static final getSupportingTopPadding()F
    .locals 1

    sget v0, Landroidx/compose/material3/TextFieldImplKt;->SupportingTopPadding:F

    return v0
.end method

.method public static final getTextFieldPadding()F
    .locals 1

    sget v0, Landroidx/compose/material3/TextFieldImplKt;->TextFieldPadding:F

    return v0
.end method

.method public static final getZeroConstraints()J
    .locals 2

    sget-wide v0, Landroidx/compose/material3/TextFieldImplKt;->ZeroConstraints:J

    return-wide v0
.end method

.method public static final heightOrZero(Landroidx/compose/ui/layout/Placeable;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 290
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final widthOrZero(Landroidx/compose/ui/layout/Placeable;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 289
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
