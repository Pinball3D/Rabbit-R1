.class final Landroidx/compose/ui/KeyedComposedModifier1;
.super Landroidx/compose/ui/ComposedModifier;
.source "ComposedModifier.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0003\u0018\u00002\u00020\u0001BN\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0002\u0008\n\u0012\u001c\u0010\u000b\u001a\u0018\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0\u0007\u00a2\u0006\u0002\u0008\r\u00a2\u0006\u0002\u0008\n\u00a2\u0006\u0002\u0010\u000eJ\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0096\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/compose/ui/KeyedComposedModifier1;",
        "Landroidx/compose/ui/ComposedModifier;",
        "fqName",
        "",
        "key1",
        "",
        "inspectorInfo",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "factory",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composable;",
        "(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)V",
        "getFqName",
        "()Ljava/lang/String;",
        "getKey1",
        "()Ljava/lang/Object;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field private final fqName:Ljava/lang/String;

.field private final key1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/Modifier;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/ui/Modifier;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspectorInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, p3, p4}, Landroidx/compose/ui/ComposedModifier;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)V

    iput-object p1, p0, Landroidx/compose/ui/KeyedComposedModifier1;->fqName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/ui/KeyedComposedModifier1;->key1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 187
    instance-of v0, p1, Landroidx/compose/ui/KeyedComposedModifier1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/KeyedComposedModifier1;->fqName:Ljava/lang/String;

    .line 188
    check-cast p1, Landroidx/compose/ui/KeyedComposedModifier1;

    iget-object v1, p1, Landroidx/compose/ui/KeyedComposedModifier1;->fqName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/KeyedComposedModifier1;->key1:Ljava/lang/Object;

    iget-object p1, p1, Landroidx/compose/ui/KeyedComposedModifier1;->key1:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getFqName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/KeyedComposedModifier1;->fqName:Ljava/lang/String;

    return-object p0
.end method

.method public final getKey1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/KeyedComposedModifier1;->key1:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/KeyedComposedModifier1;->fqName:Ljava/lang/String;

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/ui/KeyedComposedModifier1;->key1:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method
