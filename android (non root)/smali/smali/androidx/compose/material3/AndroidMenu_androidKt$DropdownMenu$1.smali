.class final Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidMenu.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenu-ILWXrKs(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $expandedStates:Landroidx/compose/animation/core/MutableTransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/MutableTransitionState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $transformOriginState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/graphics/TransformOrigin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/MutableTransitionState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/graphics/TransformOrigin;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$1;->$expandedStates:Landroidx/compose/animation/core/MutableTransitionState;

    iput-object p2, p0, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$1;->$transformOriginState:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$1;->$content:Lkotlin/jvm/functions/Function3;

    iput p5, p0, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$1;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 99
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 10

    const-string v0, "C99@4732L215:AndroidMenu.android.kt#uh7d8r"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 100
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 100
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.DropdownMenu.<anonymous> (AndroidMenu.android.kt:98)"

    const v2, -0x4715132f    # -1.12021E-4f

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object v3, p0, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$1;->$expandedStates:Landroidx/compose/animation/core/MutableTransitionState;

    iget-object v4, p0, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$1;->$transformOriginState:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$1;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v6, p0, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$1;->$content:Lkotlin/jvm/functions/Function3;

    .line 104
    sget p2, Landroidx/compose/animation/core/MutableTransitionState;->$stable:I

    or-int/lit8 p2, p2, 0x30

    iget p0, p0, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$1;->$$dirty:I

    and-int/lit16 v0, p0, 0x380

    or-int/2addr p2, v0

    shr-int/lit8 p0, p0, 0x6

    and-int/lit16 p0, p0, 0x1c00

    or-int v8, p2, p0

    const/4 v9, 0x0

    move-object v7, p1

    .line 100
    invoke-static/range {v3 .. v9}, Landroidx/compose/material3/MenuKt;->DropdownMenuContent(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
