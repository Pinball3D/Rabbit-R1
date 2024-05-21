.class public final Landroidx/compose/runtime/ProvidedValue;
.super Ljava/lang/Object;
.source "Composer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B%\u0008\u0000\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0005\u001a\u00028\u0000\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0005\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/compose/runtime/ProvidedValue;",
        "T",
        "",
        "compositionLocal",
        "Landroidx/compose/runtime/CompositionLocal;",
        "value",
        "canOverride",
        "",
        "(Landroidx/compose/runtime/CompositionLocal;Ljava/lang/Object;Z)V",
        "getCanOverride",
        "()Z",
        "getCompositionLocal",
        "()Landroidx/compose/runtime/CompositionLocal;",
        "getValue",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
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
.field private final canOverride:Z

.field private final compositionLocal:Landroidx/compose/runtime/CompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/CompositionLocal<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/CompositionLocal;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/CompositionLocal<",
            "TT;>;TT;Z)V"
        }
    .end annotation

    const-string v0, "compositionLocal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Landroidx/compose/runtime/CompositionLocal;

    iput-object p2, p0, Landroidx/compose/runtime/ProvidedValue;->value:Ljava/lang/Object;

    iput-boolean p3, p0, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    return-void
.end method


# virtual methods
.method public final getCanOverride()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    return p0
.end method

.method public final getCompositionLocal()Landroidx/compose/runtime/CompositionLocal;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/CompositionLocal<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Landroidx/compose/runtime/CompositionLocal;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/ProvidedValue;->value:Ljava/lang/Object;

    return-object p0
.end method
