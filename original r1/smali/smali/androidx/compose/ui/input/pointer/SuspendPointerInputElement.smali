.class public final Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SuspendingPointerInputFilter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B_\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0014\u0008\u0002\u0010\u0006\u001a\u000e\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0007\u0012\'\u0010\u0008\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\n\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00040\t\u00a2\u0006\u0002\u0008\r\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0004H\u0096\u0002J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\u0002H\u0016J\u000c\u0010 \u001a\u00020\u000c*\u00020!H\u0016R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u001f\u0010\u0006\u001a\u000e\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013R7\u0010\u0008\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\n\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00040\t\u00a2\u0006\u0002\u0008\r\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0015\u0010\u0016\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;",
        "key1",
        "",
        "key2",
        "keys",
        "",
        "pointerInputHandler",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/input/pointer/PointerInputScope;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V",
        "getKey1",
        "()Ljava/lang/Object;",
        "getKey2",
        "getKeys",
        "()[Ljava/lang/Object;",
        "[Ljava/lang/Object;",
        "getPointerInputHandler",
        "()Lkotlin/jvm/functions/Function2;",
        "Lkotlin/jvm/functions/Function2;",
        "create",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "update",
        "node",
        "inspectableProperties",
        "Landroidx/compose/ui/platform/InspectorInfo;",
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
.field private final key1:Ljava/lang/Object;

.field private final key2:Ljava/lang/Object;

.field private final keys:[Ljava/lang/Object;

.field private final pointerInputHandler:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pointerInputHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->key1:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->key2:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->keys:[Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->pointerInputHandler:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    move-object p3, v0

    .line 303
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 303
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->create()Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    return-object p0
.end method

.method public create()Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;
    .locals 1

    .line 318
    new-instance v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->pointerInputHandler:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;-><init>(Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 327
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->key1:Ljava/lang/Object;

    .line 329
    check-cast p1, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    iget-object v3, p1, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->key1:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->key2:Ljava/lang/Object;

    .line 330
    iget-object v3, p1, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->key2:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->keys:[Ljava/lang/Object;

    if-eqz p0, :cond_5

    .line 332
    iget-object p1, p1, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->keys:[Ljava/lang/Object;

    if-nez p1, :cond_4

    return v2

    .line 333
    :cond_4
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    .line 334
    :cond_5
    iget-object p0, p1, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->keys:[Ljava/lang/Object;

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getKey1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->key1:Ljava/lang/Object;

    return-object p0
.end method

.method public final getKey2()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->key2:Ljava/lang/Object;

    return-object p0
.end method

.method public final getKeys()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->keys:[Ljava/lang/Object;

    return-object p0
.end method

.method public final getPointerInputHandler()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->pointerInputHandler:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->key1:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->key2:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 341
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->keys:[Ljava/lang/Object;

    if-eqz p0, :cond_2

    .line 342
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointerInput"

    .line 310
    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "key1"

    iget-object v2, p0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->key1:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "key2"

    iget-object v2, p0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->key2:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "keys"

    iget-object v2, p0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->keys:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "pointerInputHandler"

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->pointerInputHandler:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 303
    check-cast p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->update(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;)V

    return-void
.end method

.method public update(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;->pointerInputHandler:Lkotlin/jvm/functions/Function2;

    .line 322
    invoke-virtual {p1, p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->setPointerInputHandler(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
