.class public final Landroidx/compose/foundation/text/TextFieldCursorKt;
.super Ljava/lang/Object;
.source "TextFieldCursor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldCursor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldCursor.kt\nandroidx/compose/foundation/text/TextFieldCursorKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,99:1\n154#2:100\n*S KotlinDebug\n*F\n+ 1 TextFieldCursor.kt\nandroidx/compose/foundation/text/TextFieldCursorKt\n*L\n94#1:100\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a4\u0010\u0008\u001a\u00020\t*\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\"\u0019\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0002\u0010\u0003\"\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "DefaultCursorThickness",
        "Landroidx/compose/ui/unit/Dp;",
        "getDefaultCursorThickness",
        "()F",
        "F",
        "cursorAnimationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "",
        "cursor",
        "Landroidx/compose/ui/Modifier;",
        "state",
        "Landroidx/compose/foundation/text/TextFieldState;",
        "value",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "offsetMapping",
        "Landroidx/compose/ui/text/input/OffsetMapping;",
        "cursorBrush",
        "Landroidx/compose/ui/graphics/Brush;",
        "enabled",
        "",
        "foundation_release"
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
.field private static final DefaultCursorThickness:F

.field private static final cursorAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 85
    sget-object v0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursorAnimationSpec$1;->INSTANCE:Landroidx/compose/foundation/text/TextFieldCursorKt$cursorAnimationSpec$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 84
    invoke-static/range {v1 .. v6}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/AnimationSpec;

    sput-object v0, Landroidx/compose/foundation/text/TextFieldCursorKt;->cursorAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    const/4 v0, 0x2

    int-to-float v0, v0

    .line 100
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/foundation/text/TextFieldCursorKt;->DefaultCursorThickness:F

    return-void
.end method

.method public static final synthetic access$getCursorAnimationSpec$p()Landroidx/compose/animation/core/AnimationSpec;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/text/TextFieldCursorKt;->cursorAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object v0
.end method

.method public static final cursor(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/graphics/Brush;Z)Landroidx/compose/ui/Modifier;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offsetMapping"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursorBrush"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 45
    new-instance p5, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;

    invoke-direct {p5, p4, p1, p2, p3}, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;-><init>(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    check-cast p5, Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p0, p2, p5, p1, p2}, Landroidx/compose/ui/ComposedModifierKt;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final getDefaultCursorThickness()F
    .locals 1

    sget v0, Landroidx/compose/foundation/text/TextFieldCursorKt;->DefaultCursorThickness:F

    return v0
.end method
