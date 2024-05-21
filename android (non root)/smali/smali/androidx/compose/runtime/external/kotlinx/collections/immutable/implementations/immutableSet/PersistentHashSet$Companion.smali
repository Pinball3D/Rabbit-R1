.class public final Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSet$Companion;
.super Ljava/lang/Object;
.source "PersistentHashSet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0019\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\"\u0004\u0008\u0001\u0010\u0008H\u0000\u00a2\u0006\u0002\u0008\tR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSet$Companion;",
        "",
        "()V",
        "EMPTY",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSet;",
        "",
        "emptyOf",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;",
        "E",
        "emptyOf$runtime_release",
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
.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSet$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final emptyOf$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet<",
            "TE;>;"
        }
    .end annotation

    .line 69
    invoke-static {}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSet;->access$getEMPTY$cp()Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSet;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    return-object p0
.end method
