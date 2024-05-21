.class public final Landroidx/compose/ui/platform/InspectableValue$DefaultImpls;
.super Ljava/lang/Object;
.source "InspectableValue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/InspectableValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
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


# direct methods
.method public static getInspectableElements(Landroidx/compose/ui/platform/InspectableValue;)Lkotlin/sequences/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/platform/InspectableValue;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "Landroidx/compose/ui/platform/ValueElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-static {p0}, Landroidx/compose/ui/platform/InspectableValue;->access$getInspectableElements$jd(Landroidx/compose/ui/platform/InspectableValue;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static getNameFallback(Landroidx/compose/ui/platform/InspectableValue;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    invoke-static {p0}, Landroidx/compose/ui/platform/InspectableValue;->access$getNameFallback$jd(Landroidx/compose/ui/platform/InspectableValue;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getValueOverride(Landroidx/compose/ui/platform/InspectableValue;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    invoke-static {p0}, Landroidx/compose/ui/platform/InspectableValue;->access$getValueOverride$jd(Landroidx/compose/ui/platform/InspectableValue;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
