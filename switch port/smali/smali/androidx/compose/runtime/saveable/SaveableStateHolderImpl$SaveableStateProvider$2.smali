.class final Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SaveableStateHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->SaveableStateProvider(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $$changed:I

.field final synthetic $content:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $key:Ljava/lang/Object;

.field final synthetic $tmp0_rcvr:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$2;->$tmp0_rcvr:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    iput-object p2, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$2;->$key:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$2;->$content:Lkotlin/jvm/functions/Function2;

    iput p4, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 2

    iget-object p2, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$2;->$tmp0_rcvr:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$2;->$key:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$2;->$content:Lkotlin/jvm/functions/Function2;

    iget p0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$2;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p0

    invoke-virtual {p2, v0, v1, p1, p0}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->SaveableStateProvider(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
