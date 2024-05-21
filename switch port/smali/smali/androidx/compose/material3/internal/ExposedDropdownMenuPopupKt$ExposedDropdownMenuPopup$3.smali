.class final Landroidx/compose/material3/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ExposedDropdownMenuPopup.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/internal/ExposedDropdownMenuPopupKt;->ExposedDropdownMenuPopup(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nExposedDropdownMenuPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExposedDropdownMenuPopup.kt\nandroidx/compose/material3/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3\n+ 2 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,476:1\n62#2,5:477\n*S KotlinDebug\n*F\n+ 1 ExposedDropdownMenuPopup.kt\nandroidx/compose/material3/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3\n*L\n145#1:477,5\n*E\n"
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
.field final synthetic $popupLayout:Landroidx/compose/material3/internal/PopupLayout;

.field final synthetic $popupPositionProvider:Landroidx/compose/ui/window/PopupPositionProvider;


# direct methods
.method constructor <init>(Landroidx/compose/material3/internal/PopupLayout;Landroidx/compose/ui/window/PopupPositionProvider;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3;->$popupLayout:Landroidx/compose/material3/internal/PopupLayout;

    iput-object p2, p0, Landroidx/compose/material3/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3;->$popupPositionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 1

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/compose/material3/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3;->$popupLayout:Landroidx/compose/material3/internal/PopupLayout;

    iget-object v0, p0, Landroidx/compose/material3/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3;->$popupPositionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

    .line 143
    invoke-virtual {p1, v0}, Landroidx/compose/material3/internal/PopupLayout;->setPositionProvider(Landroidx/compose/ui/window/PopupPositionProvider;)V

    iget-object p0, p0, Landroidx/compose/material3/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3;->$popupLayout:Landroidx/compose/material3/internal/PopupLayout;

    .line 144
    invoke-virtual {p0}, Landroidx/compose/material3/internal/PopupLayout;->updatePosition()V

    .line 477
    new-instance p0, Landroidx/compose/material3/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3$invoke$$inlined$onDispose$1;

    invoke-direct {p0}, Landroidx/compose/material3/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3$invoke$$inlined$onDispose$1;-><init>()V

    check-cast p0, Landroidx/compose/runtime/DisposableEffectResult;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 142
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
