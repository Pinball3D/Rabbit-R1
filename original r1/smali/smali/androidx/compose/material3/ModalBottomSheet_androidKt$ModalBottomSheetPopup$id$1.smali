.class final Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$id$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModalBottomSheet.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/UUID;",
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


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$id$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$id$1;

    invoke-direct {v0}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$id$1;-><init>()V

    sput-object v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$id$1;->INSTANCE:Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$id$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 422
    invoke-virtual {p0}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$id$1;->invoke()Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/UUID;
    .locals 0

    .line 422
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method
