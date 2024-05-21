.class public final Landroidx/compose/runtime/CompositionLocalMap$Companion;
.super Ljava/lang/Object;
.source "CompositionLocalMap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/CompositionLocalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/runtime/CompositionLocalMap$Companion;",
        "",
        "()V",
        "Empty",
        "Landroidx/compose/runtime/CompositionLocalMap;",
        "getEmpty",
        "()Landroidx/compose/runtime/CompositionLocalMap;",
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


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/runtime/CompositionLocalMap$Companion;

.field private static final Empty:Landroidx/compose/runtime/CompositionLocalMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/CompositionLocalMap$Companion;

    invoke-direct {v0}, Landroidx/compose/runtime/CompositionLocalMap$Companion;-><init>()V

    sput-object v0, Landroidx/compose/runtime/CompositionLocalMap$Companion;->$$INSTANCE:Landroidx/compose/runtime/CompositionLocalMap$Companion;

    .line 47
    invoke-static {}, Landroidx/compose/runtime/internal/PersistentCompositionLocalMapKt;->persistentCompositionLocalHashMapOf()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocalMap;

    sput-object v0, Landroidx/compose/runtime/CompositionLocalMap$Companion;->Empty:Landroidx/compose/runtime/CompositionLocalMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmpty()Landroidx/compose/runtime/CompositionLocalMap;
    .locals 0

    sget-object p0, Landroidx/compose/runtime/CompositionLocalMap$Companion;->Empty:Landroidx/compose/runtime/CompositionLocalMap;

    return-object p0
.end method
