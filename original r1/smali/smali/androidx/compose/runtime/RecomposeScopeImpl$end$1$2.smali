.class final Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RecomposeScopeImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/RecomposeScopeImpl;->end(I)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/runtime/Composition;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposeScopeImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecomposeScopeImpl.kt\nandroidx/compose/runtime/RecomposeScopeImpl$end$1$2\n+ 2 IdentityArrayIntMap.kt\nandroidx/compose/runtime/collection/IdentityArrayIntMap\n*L\n1#1,388:1\n137#2,22:389\n*S KotlinDebug\n*F\n+ 1 RecomposeScopeImpl.kt\nandroidx/compose/runtime/RecomposeScopeImpl$end$1$2\n*L\n344#1:389,22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "composition",
        "Landroidx/compose/runtime/Composition;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $instances:Landroidx/compose/runtime/collection/IdentityArrayIntMap;

.field final synthetic $token:I

.field final synthetic this$0:Landroidx/compose/runtime/RecomposeScopeImpl;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILandroidx/compose/runtime/collection/IdentityArrayIntMap;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->this$0:Landroidx/compose/runtime/RecomposeScopeImpl;

    iput p2, p0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->$token:I

    iput-object p3, p0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->$instances:Landroidx/compose/runtime/collection/IdentityArrayIntMap;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 339
    check-cast p1, Landroidx/compose/runtime/Composition;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->invoke(Landroidx/compose/runtime/Composition;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composition;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "composition"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->this$0:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 341
    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->access$getCurrentToken$p(Landroidx/compose/runtime/RecomposeScopeImpl;)I

    move-result v2

    iget v3, v0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->$token:I

    if-ne v2, v3, :cond_7

    iget-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->$instances:Landroidx/compose/runtime/collection/IdentityArrayIntMap;

    iget-object v3, v0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->this$0:Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-static {v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->access$getTrackedInstances$p(Landroidx/compose/runtime/RecomposeScopeImpl;)Landroidx/compose/runtime/collection/IdentityArrayIntMap;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 342
    instance-of v2, v1, Landroidx/compose/runtime/CompositionImpl;

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->$instances:Landroidx/compose/runtime/collection/IdentityArrayIntMap;

    iget v3, v0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->$token:I

    iget-object v4, v0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->this$0:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 389
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getKeys()[Ljava/lang/Object;

    move-result-object v5

    .line 390
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getValues()[I

    move-result-object v6

    .line 391
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getSize()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x0

    if-ge v9, v7, :cond_5

    .line 396
    aget-object v12, v5, v9

    const-string v13, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    aget v13, v6, v9

    if-eq v13, v3, :cond_0

    const/4 v14, 0x1

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    :goto_1
    if-eqz v14, :cond_2

    .line 347
    move-object v15, v1

    check-cast v15, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v15, v12, v4}, Landroidx/compose/runtime/CompositionImpl;->removeObservation$runtime_release(Ljava/lang/Object;Landroidx/compose/runtime/RecomposeScopeImpl;)V

    .line 348
    instance-of v8, v12, Landroidx/compose/runtime/DerivedState;

    if-eqz v8, :cond_1

    move-object v8, v12

    check-cast v8, Landroidx/compose/runtime/DerivedState;

    goto :goto_2

    :cond_1
    move-object v8, v11

    :goto_2
    if-eqz v8, :cond_2

    .line 349
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/CompositionImpl;->removeDerivedStateObservation$runtime_release(Landroidx/compose/runtime/DerivedState;)V

    .line 350
    invoke-static {v4}, Landroidx/compose/runtime/RecomposeScopeImpl;->access$getTrackedDependencies$p(Landroidx/compose/runtime/RecomposeScopeImpl;)Landroidx/compose/runtime/collection/IdentityArrayMap;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 351
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/collection/IdentityArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-virtual {v15}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getSize()I

    move-result v8

    if-nez v8, :cond_2

    .line 353
    invoke-static {v4, v11}, Landroidx/compose/runtime/RecomposeScopeImpl;->access$setTrackedDependencies$p(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/collection/IdentityArrayMap;)V

    :cond_2
    if-nez v14, :cond_4

    if-eq v10, v9, :cond_3

    .line 400
    aput-object v12, v5, v10

    .line 401
    aput v13, v6, v10

    :cond_3
    add-int/lit8 v10, v10, 0x1

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    move v1, v10

    :goto_3
    if-ge v1, v7, :cond_6

    .line 407
    aput-object v11, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 409
    :cond_6
    invoke-static {v2, v10}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->access$setSize$p(Landroidx/compose/runtime/collection/IdentityArrayIntMap;I)V

    iget-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->$instances:Landroidx/compose/runtime/collection/IdentityArrayIntMap;

    .line 360
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getSize()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v0, v0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->this$0:Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-static {v0, v11}, Landroidx/compose/runtime/RecomposeScopeImpl;->access$setTrackedInstances$p(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/collection/IdentityArrayIntMap;)V

    :cond_7
    return-void
.end method
