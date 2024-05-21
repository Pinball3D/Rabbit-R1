.class public interface abstract Landroidx/compose/runtime/MutableDoubleState;
.super Ljava/lang/Object;
.source "SnapshotDoubleState.kt"

# interfaces
.implements Landroidx/compose/runtime/DoubleState;
.implements Landroidx/compose/runtime/MutableState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/MutableDoubleState$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/DoubleState;",
        "Landroidx/compose/runtime/MutableState<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0008\n\u0008g\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002R\u0018\u0010\u0004\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\t\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00038W@WX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\u0008\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\r\u00c0\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/runtime/MutableDoubleState;",
        "Landroidx/compose/runtime/DoubleState;",
        "Landroidx/compose/runtime/MutableState;",
        "",
        "doubleValue",
        "getDoubleValue",
        "()D",
        "setDoubleValue",
        "(D)V",
        "value",
        "getValue",
        "()Ljava/lang/Double;",
        "setValue",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic access$getValue$jd(Landroidx/compose/runtime/MutableDoubleState;)D
    .locals 2

    .line 91
    invoke-super {p0}, Landroidx/compose/runtime/MutableDoubleState;->getValue()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$setValue$jd(Landroidx/compose/runtime/MutableDoubleState;D)V
    .locals 0

    .line 91
    invoke-super {p0, p1, p2}, Landroidx/compose/runtime/MutableDoubleState;->setValue(D)V

    return-void
.end method


# virtual methods
.method public abstract getDoubleValue()D
.end method

.method public getValue()Ljava/lang/Double;
    .locals 2

    .line 97
    invoke-interface {p0}, Landroidx/compose/runtime/MutableDoubleState;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 91
    invoke-interface {p0}, Landroidx/compose/runtime/MutableDoubleState;->getValue()Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public abstract setDoubleValue(D)V
.end method

.method public setValue(D)V
    .locals 0

    .line 98
    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/MutableDoubleState;->setDoubleValue(D)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 2

    .line 91
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroidx/compose/runtime/MutableDoubleState;->setValue(D)V

    return-void
.end method
