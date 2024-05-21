.class final Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt$lambda-2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BottomSheetScaffold.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/material3/SnackbarHostState;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u000b\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroidx/compose/material3/SnackbarHostState;",
        "invoke",
        "(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt$lambda-2$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt$lambda-2$1;

    invoke-direct {v0}, Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt$lambda-2$1;-><init>()V

    sput-object v0, Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt$lambda-2$1;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt$lambda-2$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 110
    check-cast p1, Landroidx/compose/material3/SnackbarHostState;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt$lambda-2$1;->invoke(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "C109@5818L16:BottomSheetScaffold.kt#uh7d8r"

    invoke-static {p2, p0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p0, p3, 0xe

    if-nez p0, :cond_1

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    or-int/2addr p3, p0

    :cond_1
    and-int/lit8 p0, p3, 0x5b

    const/16 v0, 0x12

    if-ne p0, v0, :cond_3

    .line 110
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, -0x1

    const-string v0, "androidx.compose.material3.ComposableSingletons$BottomSheetScaffoldKt.lambda-2.<anonymous> (BottomSheetScaffold.kt:109)"

    const v1, -0x375e8472

    invoke-static {v1, p3, p0, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    and-int/lit8 v6, p3, 0xe

    const/4 v7, 0x6

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v2 .. v7}, Landroidx/compose/material3/SnackbarHostKt;->SnackbarHost(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    :goto_2
    return-void
.end method
