.class public final Landroidx/compose/runtime/tooling/CompositionGroup$DefaultImpls;
.super Ljava/lang/Object;
.source "CompositionData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/tooling/CompositionGroup;
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
.method public static find(Landroidx/compose/runtime/tooling/CompositionGroup;Ljava/lang/Object;)Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "identityToFind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {p0, p1}, Landroidx/compose/runtime/tooling/CompositionGroup;->access$find$jd(Landroidx/compose/runtime/tooling/CompositionGroup;Ljava/lang/Object;)Landroidx/compose/runtime/tooling/CompositionGroup;

    move-result-object p0

    return-object p0
.end method

.method public static getGroupSize(Landroidx/compose/runtime/tooling/CompositionGroup;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    invoke-static {p0}, Landroidx/compose/runtime/tooling/CompositionGroup;->access$getGroupSize$jd(Landroidx/compose/runtime/tooling/CompositionGroup;)I

    move-result p0

    return p0
.end method

.method public static getIdentity(Landroidx/compose/runtime/tooling/CompositionGroup;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    invoke-static {p0}, Landroidx/compose/runtime/tooling/CompositionGroup;->access$getIdentity$jd(Landroidx/compose/runtime/tooling/CompositionGroup;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getSlotsSize(Landroidx/compose/runtime/tooling/CompositionGroup;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    invoke-static {p0}, Landroidx/compose/runtime/tooling/CompositionGroup;->access$getSlotsSize$jd(Landroidx/compose/runtime/tooling/CompositionGroup;)I

    move-result p0

    return p0
.end method
