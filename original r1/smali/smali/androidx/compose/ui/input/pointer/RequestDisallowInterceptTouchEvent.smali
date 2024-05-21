.class public final Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;
.super Ljava/lang/Object;
.source "PointerInteropFilter.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0011\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0096\u0002R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;",
        "Lkotlin/Function1;",
        "",
        "",
        "()V",
        "pointerInteropFilter",
        "Landroidx/compose/ui/input/pointer/PointerInteropFilter;",
        "getPointerInteropFilter$ui_release",
        "()Landroidx/compose/ui/input/pointer/PointerInteropFilter;",
        "setPointerInteropFilter$ui_release",
        "(Landroidx/compose/ui/input/pointer/PointerInteropFilter;)V",
        "invoke",
        "disallowIntercept",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private pointerInteropFilter:Landroidx/compose/ui/input/pointer/PointerInteropFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPointerInteropFilter$ui_release()Landroidx/compose/ui/input/pointer/PointerInteropFilter;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;->pointerInteropFilter:Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;->invoke(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public invoke(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;->pointerInteropFilter:Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    if-nez p0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->setDisallowIntercept$ui_release(Z)V

    :goto_0
    return-void
.end method

.method public final setPointerInteropFilter$ui_release(Landroidx/compose/ui/input/pointer/PointerInteropFilter;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;->pointerInteropFilter:Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    return-void
.end method
