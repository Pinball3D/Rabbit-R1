.class public abstract Landroidx/room/InvalidationTracker$Observer;
.super Ljava/lang/Object;
.source "InvalidationTracker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Observer"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInvalidationTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/InvalidationTracker$Observer\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,846:1\n37#2,2:847\n*S KotlinDebug\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/InvalidationTracker$Observer\n*L\n677#1:847,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0010\"\n\u0000\u0008&\u0018\u00002\u00020\u0001B#\u0008\u0014\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0005\"\u00020\u0003\u00a2\u0006\u0002\u0010\u0006B\u0015\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0005\u00a2\u0006\u0002\u0010\u0008J\u0016\u0010\u0010\u001a\u00020\u00112\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0012H&R\u0014\u0010\t\u001a\u00020\n8PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u0007\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0005X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/room/InvalidationTracker$Observer;",
        "",
        "firstTable",
        "",
        "rest",
        "",
        "(Ljava/lang/String;[Ljava/lang/String;)V",
        "tables",
        "([Ljava/lang/String;)V",
        "isRemote",
        "",
        "isRemote$room_runtime_release",
        "()Z",
        "getTables$room_runtime_release",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "onInvalidated",
        "",
        "",
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
.field private final tables:[Ljava/lang/String;


# direct methods
.method protected varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "firstTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 674
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 675
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1, p2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 676
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 848
    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/String;

    .line 673
    invoke-direct {p0, p1}, Landroidx/room/InvalidationTracker$Observer;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const-string v0, "tables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/InvalidationTracker$Observer;->tables:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getTables$room_runtime_release()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/room/InvalidationTracker$Observer;->tables:[Ljava/lang/String;

    return-object p0
.end method

.method public isRemote$room_runtime_release()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onInvalidated(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
