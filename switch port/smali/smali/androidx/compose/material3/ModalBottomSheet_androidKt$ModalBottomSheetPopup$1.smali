.class final Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModalBottomSheet.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ModalBottomSheet_androidKt;->ModalBottomSheetPopup(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/runtime/DisposableEffectScope;",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModalBottomSheet.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModalBottomSheet.android.kt\nandroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$1\n+ 2 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,571:1\n62#2,5:572\n*S KotlinDebug\n*F\n+ 1 ModalBottomSheet.android.kt\nandroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$1\n*L\n449#1:572,5\n*E\n"
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
.field final synthetic $modalBottomSheetWindow:Landroidx/compose/material3/ModalBottomSheetWindow;


# direct methods
.method constructor <init>(Landroidx/compose/material3/ModalBottomSheetWindow;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$1;->$modalBottomSheetWindow:Landroidx/compose/material3/ModalBottomSheetWindow;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 1

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$1;->$modalBottomSheetWindow:Landroidx/compose/material3/ModalBottomSheetWindow;

    .line 448
    invoke-virtual {p1}, Landroidx/compose/material3/ModalBottomSheetWindow;->show()V

    iget-object p0, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$1;->$modalBottomSheetWindow:Landroidx/compose/material3/ModalBottomSheetWindow;

    .line 572
    new-instance p1, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$1$invoke$$inlined$onDispose$1;

    invoke-direct {p1, p0}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$1$invoke$$inlined$onDispose$1;-><init>(Landroidx/compose/material3/ModalBottomSheetWindow;)V

    check-cast p1, Landroidx/compose/runtime/DisposableEffectResult;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 447
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
