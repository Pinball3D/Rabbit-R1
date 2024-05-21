.class final Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
.super Ljava/lang/Object;
.source "Composition.kt"

# interfaces
.implements Landroidx/compose/runtime/RememberManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/CompositionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RememberEventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composition.kt\nandroidx/compose/runtime/CompositionImpl$RememberEventDispatcher\n+ 2 Trace.kt\nandroidx/compose/runtime/TraceKt\n+ 3 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,1277:1\n46#2,5:1278\n46#2,5:1283\n46#2,3:1288\n50#2:1297\n46#2,5:1298\n46#2,3:1303\n50#2:1312\n46#2,5:1313\n33#3,6:1291\n33#3,6:1306\n*S KotlinDebug\n*F\n+ 1 Composition.kt\nandroidx/compose/runtime/CompositionImpl$RememberEventDispatcher\n*L\n1111#1:1278,5\n1122#1:1283,5\n1134#1:1288,3\n1134#1:1297\n1147#1:1298,5\n1159#1:1303,3\n1159#1:1312\n1170#1:1313,5\n1135#1:1291,6\n1160#1:1306,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0008H\u0016J\u0006\u0010\u0010\u001a\u00020\u000eJ\u0006\u0010\u0011\u001a\u00020\u000eJ\u0006\u0010\u0012\u001a\u00020\u000eJ\u0010\u0010\t\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0008H\u0016J\u0010\u0010\u000b\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0004H\u0016J\u0016\u0010\u0013\u001a\u00020\u000e2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0016R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;",
        "Landroidx/compose/runtime/RememberManager;",
        "abandoning",
        "",
        "Landroidx/compose/runtime/RememberObserver;",
        "(Ljava/util/Set;)V",
        "deactivating",
        "",
        "Landroidx/compose/runtime/ComposeNodeLifecycleCallback;",
        "forgetting",
        "releasing",
        "remembering",
        "sideEffects",
        "Lkotlin/Function0;",
        "",
        "instance",
        "dispatchAbandons",
        "dispatchRememberObservers",
        "dispatchSideEffects",
        "sideEffect",
        "effect",
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


# instance fields
.field private final abandoning:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/RememberObserver;",
            ">;"
        }
    .end annotation
.end field

.field private deactivating:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ComposeNodeLifecycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final forgetting:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/RememberObserver;",
            ">;"
        }
    .end annotation
.end field

.field private releasing:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ComposeNodeLifecycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final remembering:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/RememberObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final sideEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/RememberObserver;",
            ">;)V"
        }
    .end annotation

    const-string v0, "abandoning"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->abandoning:Ljava/util/Set;

    .line 1063
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->remembering:Ljava/util/List;

    .line 1064
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->forgetting:Ljava/util/List;

    .line 1065
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->sideEffects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public deactivating(Landroidx/compose/runtime/ComposeNodeLifecycleCallback;)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->deactivating:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1096
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->deactivating:Ljava/util/List;

    :cond_0
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final dispatchAbandons()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->abandoning:Ljava/util/Set;

    .line 1169
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string v0, "Compose:abandons"

    .line 1313
    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->abandoning:Ljava/util/Set;

    .line 1171
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1172
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1173
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/RememberObserver;

    .line 1174
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 1175
    invoke-interface {v1}, Landroidx/compose/runtime/RememberObserver;->onAbandoned()V

    goto :goto_0

    .line 1177
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1317
    sget-object p0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public final dispatchRememberObservers()V
    .locals 7

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->deactivating:Ljava/util/List;

    .line 1110
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "Compose:deactivations"

    .line 1278
    sget-object v3, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1112
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 1113
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 1114
    invoke-interface {v4}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->onDeactivate()V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1116
    :cond_1
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1282
    sget-object v3, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    .line 1117
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1282
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw p0

    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->forgetting:Ljava/util/List;

    .line 1121
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    const-string v0, "Compose:onForgotten"

    .line 1283
    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->forgetting:Ljava/util/List;

    .line 1123
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ge v2, v1, :cond_4

    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->forgetting:Ljava/util/List;

    .line 1124
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/RememberObserver;

    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->abandoning:Ljava/util/Set;

    .line 1125
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1126
    invoke-interface {v3}, Landroidx/compose/runtime/RememberObserver;->onForgotten()V

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1129
    :cond_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1287
    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw p0

    :cond_5
    :goto_3
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->remembering:Ljava/util/List;

    .line 1133
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    const-string v0, "Compose:onRemembered"

    .line 1288
    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :try_start_2
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->remembering:Ljava/util/List;

    .line 1292
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_6

    .line 1293
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1294
    check-cast v5, Landroidx/compose/runtime/RememberObserver;

    iget-object v6, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->abandoning:Ljava/util/Set;

    .line 1136
    invoke-interface {v6, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1137
    invoke-interface {v5}, Landroidx/compose/runtime/RememberObserver;->onRemembered()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1139
    :cond_6
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1297
    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    goto :goto_5

    :catchall_2
    move-exception p0

    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw p0

    :cond_7
    :goto_5
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->releasing:Ljava/util/List;

    .line 1144
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    const-string v0, "Compose:releases"

    .line 1298
    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1148
    :try_start_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_6
    if-ge v2, v1, :cond_9

    .line 1149
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 1150
    invoke-interface {v3}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->onRelease()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 1152
    :cond_9
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1302
    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    .line 1153
    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_7

    :catchall_3
    move-exception p0

    .line 1302
    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw p0

    :cond_a
    :goto_7
    return-void
.end method

.method public final dispatchSideEffects()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->sideEffects:Ljava/util/List;

    .line 1158
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string v0, "Compose:sideeffects"

    .line 1303
    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->sideEffects:Ljava/util/List;

    .line 1307
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 1308
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1309
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 1161
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->sideEffects:Ljava/util/List;

    .line 1163
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 1164
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1312
    sget-object p0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public forgetting(Landroidx/compose/runtime/RememberObserver;)V
    .locals 2

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->remembering:Ljava/util/List;

    .line 1081
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->remembering:Ljava/util/List;

    .line 1083
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->abandoning:Ljava/util/Set;

    .line 1084
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->forgetting:Ljava/util/List;

    .line 1086
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public releasing(Landroidx/compose/runtime/ComposeNodeLifecycleCallback;)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->releasing:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->releasing:Ljava/util/List;

    :cond_0
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public remembering(Landroidx/compose/runtime/RememberObserver;)V
    .locals 2

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->forgetting:Ljava/util/List;

    .line 1070
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->forgetting:Ljava/util/List;

    .line 1072
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->abandoning:Ljava/util/Set;

    .line 1073
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->remembering:Ljava/util/List;

    .line 1075
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public sideEffect(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "effect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->sideEffects:Ljava/util/List;

    .line 1092
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
