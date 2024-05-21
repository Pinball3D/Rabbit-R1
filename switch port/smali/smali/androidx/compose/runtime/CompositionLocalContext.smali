.class public final Landroidx/compose/runtime/CompositionLocalContext;
.super Ljava/lang/Object;
.source "CompositionLocal.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/runtime/CompositionLocalContext;",
        "",
        "compositionLocals",
        "Landroidx/compose/runtime/PersistentCompositionLocalMap;",
        "(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V",
        "getCompositionLocals$runtime_release",
        "()Landroidx/compose/runtime/PersistentCompositionLocalMap;",
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
.field public static final $stable:I


# instance fields
.field private final compositionLocals:Landroidx/compose/runtime/PersistentCompositionLocalMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V
    .locals 1

    const-string v0, "compositionLocals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/CompositionLocalContext;->compositionLocals:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-void
.end method


# virtual methods
.method public final getCompositionLocals$runtime_release()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/CompositionLocalContext;->compositionLocals:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object p0
.end method
