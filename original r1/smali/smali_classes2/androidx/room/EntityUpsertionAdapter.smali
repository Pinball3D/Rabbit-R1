.class public final Landroidx/room/EntityUpsertionAdapter;
.super Ljava/lang/Object;
.source "EntityUpsertionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEntityUpsertionAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EntityUpsertionAdapter.kt\nandroidx/room/EntityUpsertionAdapter\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,221:1\n13543#2,2:222\n13543#2,2:226\n1851#3,2:224\n1851#3,2:228\n*S KotlinDebug\n*F\n+ 1 EntityUpsertionAdapter.kt\nandroidx/room/EntityUpsertionAdapter\n*L\n74#1:222,2\n147#1:226,2\n85#1:224,2\n161#1:228,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u001c\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0002\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B!\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0013\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u000eJ\u001b\u0010\u000c\u001a\u00020\t2\u000e\u0010\u000f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0010\u00a2\u0006\u0002\u0010\u0011J\u0014\u0010\u000c\u001a\u00020\t2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\u0006\u0010\r\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0015J\u001b\u0010\u0016\u001a\u00020\u00172\u000e\u0010\u000f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0010\u00a2\u0006\u0002\u0010\u0018J\u0014\u0010\u0016\u001a\u00020\u00172\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019J#\u0010\u001a\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00140\u00102\u000e\u0010\u000f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0010\u00a2\u0006\u0002\u0010\u001bJ!\u0010\u001a\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00140\u00102\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019\u00a2\u0006\u0002\u0010\u001cJ!\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u001e2\u000e\u0010\u000f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0010\u00a2\u0006\u0002\u0010\u001fJ\u001a\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u001e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/room/EntityUpsertionAdapter;",
        "T",
        "",
        "insertionAdapter",
        "Landroidx/room/EntityInsertionAdapter;",
        "updateAdapter",
        "Landroidx/room/EntityDeletionOrUpdateAdapter;",
        "(Landroidx/room/EntityInsertionAdapter;Landroidx/room/EntityDeletionOrUpdateAdapter;)V",
        "checkUniquenessException",
        "",
        "ex",
        "Landroid/database/sqlite/SQLiteConstraintException;",
        "upsert",
        "entity",
        "(Ljava/lang/Object;)V",
        "entities",
        "",
        "([Ljava/lang/Object;)V",
        "",
        "upsertAndReturnId",
        "",
        "(Ljava/lang/Object;)J",
        "upsertAndReturnIdsArray",
        "",
        "([Ljava/lang/Object;)[J",
        "",
        "upsertAndReturnIdsArrayBox",
        "([Ljava/lang/Object;)[Ljava/lang/Long;",
        "(Ljava/util/Collection;)[Ljava/lang/Long;",
        "upsertAndReturnIdsList",
        "",
        "([Ljava/lang/Object;)Ljava/util/List;",
        "room-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final insertionAdapter:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final updateAdapter:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/EntityInsertionAdapter;Landroidx/room/EntityDeletionOrUpdateAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/EntityInsertionAdapter<",
            "TT;>;",
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "insertionAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/EntityUpsertionAdapter;->insertionAdapter:Landroidx/room/EntityInsertionAdapter;

    iput-object p2, p0, Landroidx/room/EntityUpsertionAdapter;->updateAdapter:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method

.method private final checkUniquenessException(Landroid/database/sqlite/SQLiteConstraintException;)V
    .locals 2

    .line 209
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 215
    check-cast p0, Ljava/lang/CharSequence;

    const-string v0, "1555"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 216
    :cond_0
    throw p1

    .line 209
    :cond_1
    throw p1
.end method


# virtual methods
.method public final upsert(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "entities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/room/EntityUpsertionAdapter;->insertionAdapter:Landroidx/room/EntityInsertionAdapter;

    .line 87
    invoke-virtual {v1, v0}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 89
    invoke-direct {p0, v1}, Landroidx/room/EntityUpsertionAdapter;->checkUniquenessException(Landroid/database/sqlite/SQLiteConstraintException;)V

    iget-object v1, p0, Landroidx/room/EntityUpsertionAdapter;->updateAdapter:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 90
    invoke-virtual {v1, v0}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final upsert(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroidx/room/EntityUpsertionAdapter;->insertionAdapter:Landroidx/room/EntityInsertionAdapter;

    .line 59
    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    invoke-direct {p0, v0}, Landroidx/room/EntityUpsertionAdapter;->checkUniquenessException(Landroid/database/sqlite/SQLiteConstraintException;)V

    iget-object p0, p0, Landroidx/room/EntityUpsertionAdapter;->updateAdapter:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 62
    invoke-virtual {p0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public final upsert([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    const-string v0, "entities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    :try_start_0
    iget-object v3, p0, Landroidx/room/EntityUpsertionAdapter;->insertionAdapter:Landroidx/room/EntityInsertionAdapter;

    .line 76
    invoke-virtual {v3, v2}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 78
    invoke-direct {p0, v3}, Landroidx/room/EntityUpsertionAdapter;->checkUniquenessException(Landroid/database/sqlite/SQLiteConstraintException;)V

    iget-object v3, p0, Landroidx/room/EntityUpsertionAdapter;->updateAdapter:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 79
    invoke-virtual {v3, v2}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final upsertAndReturnId(Ljava/lang/Object;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroidx/room/EntityUpsertionAdapter;->insertionAdapter:Landroidx/room/EntityInsertionAdapter;

    .line 105
    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    invoke-direct {p0, v0}, Landroidx/room/EntityUpsertionAdapter;->checkUniquenessException(Landroid/database/sqlite/SQLiteConstraintException;)V

    iget-object p0, p0, Landroidx/room/EntityUpsertionAdapter;->updateAdapter:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 108
    invoke-virtual {p0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    const-wide/16 p0, -0x1

    :goto_0
    return-wide p0
.end method

.method public final upsertAndReturnIdsArray(Ljava/util/Collection;)[J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)[J"
        }
    .end annotation

    const-string v0, "entities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 133
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    new-array v1, p1, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Landroidx/room/EntityUpsertionAdapter;->insertionAdapter:Landroidx/room/EntityInsertionAdapter;

    .line 136
    invoke-virtual {v4, v3}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 138
    invoke-direct {p0, v4}, Landroidx/room/EntityUpsertionAdapter;->checkUniquenessException(Landroid/database/sqlite/SQLiteConstraintException;)V

    iget-object v4, p0, Landroidx/room/EntityUpsertionAdapter;->updateAdapter:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 139
    invoke-virtual {v4, v3}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    const-wide/16 v3, -0x1

    .line 140
    :goto_1
    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final upsertAndReturnIdsArray([Ljava/lang/Object;)[J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[J"
        }
    .end annotation

    const-string v0, "entities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    array-length v0, p1

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Landroidx/room/EntityUpsertionAdapter;->insertionAdapter:Landroidx/room/EntityInsertionAdapter;

    .line 122
    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 124
    invoke-direct {p0, v3}, Landroidx/room/EntityUpsertionAdapter;->checkUniquenessException(Landroid/database/sqlite/SQLiteConstraintException;)V

    iget-object v3, p0, Landroidx/room/EntityUpsertionAdapter;->updateAdapter:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 125
    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    const-wide/16 v3, -0x1

    .line 126
    :goto_1
    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final upsertAndReturnIdsArrayBox(Ljava/util/Collection;)[Ljava/lang/Long;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)[",
            "Ljava/lang/Long;"
        }
    .end annotation

    const-string v0, "entities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 187
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    new-array v1, p1, [Ljava/lang/Long;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Landroidx/room/EntityUpsertionAdapter;->insertionAdapter:Landroidx/room/EntityInsertionAdapter;

    .line 190
    invoke-virtual {v4, v3}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 192
    invoke-direct {p0, v4}, Landroidx/room/EntityUpsertionAdapter;->checkUniquenessException(Landroid/database/sqlite/SQLiteConstraintException;)V

    iget-object v4, p0, Landroidx/room/EntityUpsertionAdapter;->updateAdapter:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 193
    invoke-virtual {v4, v3}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    const-wide/16 v3, -0x1

    .line 194
    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final upsertAndReturnIdsArrayBox([Ljava/lang/Object;)[Ljava/lang/Long;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[",
            "Ljava/lang/Long;"
        }
    .end annotation

    const-string v0, "entities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/Long;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Landroidx/room/EntityUpsertionAdapter;->insertionAdapter:Landroidx/room/EntityInsertionAdapter;

    .line 176
    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 178
    invoke-direct {p0, v3}, Landroidx/room/EntityUpsertionAdapter;->checkUniquenessException(Landroid/database/sqlite/SQLiteConstraintException;)V

    iget-object v3, p0, Landroidx/room/EntityUpsertionAdapter;->updateAdapter:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 179
    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    const-wide/16 v3, -0x1

    .line 180
    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final upsertAndReturnIdsList(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "entities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 161
    check-cast p1, Ljava/lang/Iterable;

    .line 228
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroidx/room/EntityUpsertionAdapter;->insertionAdapter:Landroidx/room/EntityInsertionAdapter;

    .line 163
    invoke-virtual {v2, v1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 165
    invoke-direct {p0, v2}, Landroidx/room/EntityUpsertionAdapter;->checkUniquenessException(Landroid/database/sqlite/SQLiteConstraintException;)V

    iget-object v2, p0, Landroidx/room/EntityUpsertionAdapter;->updateAdapter:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 166
    invoke-virtual {v2, v1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    const-wide/16 v1, -0x1

    .line 167
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final upsertAndReturnIdsList([Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "entities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 226
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    :try_start_0
    iget-object v4, p0, Landroidx/room/EntityUpsertionAdapter;->insertionAdapter:Landroidx/room/EntityInsertionAdapter;

    .line 149
    invoke-virtual {v4, v3}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 151
    invoke-direct {p0, v4}, Landroidx/room/EntityUpsertionAdapter;->checkUniquenessException(Landroid/database/sqlite/SQLiteConstraintException;)V

    iget-object v4, p0, Landroidx/room/EntityUpsertionAdapter;->updateAdapter:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 152
    invoke-virtual {v4, v3}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    const-wide/16 v3, -0x1

    .line 153
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
