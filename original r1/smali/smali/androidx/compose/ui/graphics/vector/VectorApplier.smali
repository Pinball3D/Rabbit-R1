.class public final Landroidx/compose/ui/graphics/vector/VectorApplier;
.super Landroidx/compose/runtime/AbstractApplier;
.source "VectorCompose.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/runtime/AbstractApplier<",
        "Landroidx/compose/ui/graphics/vector/VNode;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVectorCompose.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VectorCompose.kt\nandroidx/compose/ui/graphics/vector/VectorApplier\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,165:1\n1#2:166\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016J \u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u0008H\u0016J\u0008\u0010\u000f\u001a\u00020\u0006H\u0014J\u0018\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u0008H\u0016J\u000c\u0010\u0011\u001a\u00020\u0012*\u00020\u0002H\u0002\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/vector/VectorApplier;",
        "Landroidx/compose/runtime/AbstractApplier;",
        "Landroidx/compose/ui/graphics/vector/VNode;",
        "root",
        "(Landroidx/compose/ui/graphics/vector/VNode;)V",
        "insertBottomUp",
        "",
        "index",
        "",
        "instance",
        "insertTopDown",
        "move",
        "from",
        "to",
        "count",
        "onClear",
        "remove",
        "asGroup",
        "Landroidx/compose/ui/graphics/vector/GroupComponent;",
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
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/vector/VNode;)V
    .locals 1

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, p1}, Landroidx/compose/runtime/AbstractApplier;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private final asGroup(Landroidx/compose/ui/graphics/vector/VNode;)Landroidx/compose/ui/graphics/vector/GroupComponent;
    .locals 0

    .line 160
    instance-of p0, p1, Landroidx/compose/ui/graphics/vector/GroupComponent;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/compose/ui/graphics/vector/GroupComponent;

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot only insert VNode into Group"

    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public insertBottomUp(ILandroidx/compose/ui/graphics/vector/VNode;)V
    .locals 0

    const-string p0, "instance"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic insertBottomUp(ILjava/lang/Object;)V
    .locals 0

    .line 137
    check-cast p2, Landroidx/compose/ui/graphics/vector/VNode;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/graphics/vector/VectorApplier;->insertBottomUp(ILandroidx/compose/ui/graphics/vector/VNode;)V

    return-void
.end method

.method public insertTopDown(ILandroidx/compose/ui/graphics/vector/VNode;)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorApplier;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/vector/VNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/VectorApplier;->asGroup(Landroidx/compose/ui/graphics/vector/VNode;)Landroidx/compose/ui/graphics/vector/GroupComponent;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/graphics/vector/GroupComponent;->insertAt(ILandroidx/compose/ui/graphics/vector/VNode;)V

    return-void
.end method

.method public bridge synthetic insertTopDown(ILjava/lang/Object;)V
    .locals 0

    .line 137
    check-cast p2, Landroidx/compose/ui/graphics/vector/VNode;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/graphics/vector/VectorApplier;->insertTopDown(ILandroidx/compose/ui/graphics/vector/VNode;)V

    return-void
.end method

.method public move(III)V
    .locals 1

    .line 155
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorApplier;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/vector/VNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/VectorApplier;->asGroup(Landroidx/compose/ui/graphics/vector/VNode;)Landroidx/compose/ui/graphics/vector/GroupComponent;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/vector/GroupComponent;->move(III)V

    return-void
.end method

.method protected onClear()V
    .locals 2

    .line 151
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorApplier;->getRoot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/vector/VNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/VectorApplier;->asGroup(Landroidx/compose/ui/graphics/vector/VNode;)Landroidx/compose/ui/graphics/vector/GroupComponent;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->getNumChildren()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/graphics/vector/GroupComponent;->remove(II)V

    return-void
.end method

.method public remove(II)V
    .locals 1

    .line 147
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorApplier;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/vector/VNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/VectorApplier;->asGroup(Landroidx/compose/ui/graphics/vector/VNode;)Landroidx/compose/ui/graphics/vector/GroupComponent;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/graphics/vector/GroupComponent;->remove(II)V

    return-void
.end method
