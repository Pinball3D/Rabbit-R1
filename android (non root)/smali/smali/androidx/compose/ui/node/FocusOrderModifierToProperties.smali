.class final Landroidx/compose/ui/node/FocusOrderModifierToProperties;
.super Ljava/lang/Object;
.source "BackwardsCompatNode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/focus/FocusProperties;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0096\u0002R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/compose/ui/node/FocusOrderModifierToProperties;",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/focus/FocusProperties;",
        "",
        "modifier",
        "Landroidx/compose/ui/focus/FocusOrderModifier;",
        "(Landroidx/compose/ui/focus/FocusOrderModifier;)V",
        "getModifier",
        "()Landroidx/compose/ui/focus/FocusOrderModifier;",
        "invoke",
        "focusProperties",
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


# instance fields
.field private final modifier:Landroidx/compose/ui/focus/FocusOrderModifier;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/focus/FocusOrderModifier;)V
    .locals 1

    const-string v0, "modifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/FocusOrderModifierToProperties;->modifier:Landroidx/compose/ui/focus/FocusOrderModifier;

    return-void
.end method


# virtual methods
.method public final getModifier()Landroidx/compose/ui/focus/FocusOrderModifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/FocusOrderModifierToProperties;->modifier:Landroidx/compose/ui/focus/FocusOrderModifier;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 445
    check-cast p1, Landroidx/compose/ui/focus/FocusProperties;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/FocusOrderModifierToProperties;->invoke(Landroidx/compose/ui/focus/FocusProperties;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public invoke(Landroidx/compose/ui/focus/FocusProperties;)V
    .locals 1

    const-string v0, "focusProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/node/FocusOrderModifierToProperties;->modifier:Landroidx/compose/ui/focus/FocusOrderModifier;

    .line 450
    new-instance v0, Landroidx/compose/ui/focus/FocusOrder;

    invoke-direct {v0, p1}, Landroidx/compose/ui/focus/FocusOrder;-><init>(Landroidx/compose/ui/focus/FocusProperties;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/focus/FocusOrderModifier;->populateFocusOrder(Landroidx/compose/ui/focus/FocusOrder;)V

    return-void
.end method
