.class public final Ltech/rabbit/common/utils/Weak;
.super Ljava/lang/Object;
.source "KotlinUtil.kt"


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
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0003B\u0015\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0005\u00a2\u0006\u0002\u0010\u0006J&\u0010\t\u001a\u0004\u0018\u00018\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u00022\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u000cH\u0086\u0002\u00a2\u0006\u0002\u0010\rJ.\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00022\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00018\u0000H\u0086\u0002\u00a2\u0006\u0002\u0010\u0011R\u0018\u0010\u0007\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Ltech/rabbit/common/utils/Weak;",
        "T",
        "",
        "()V",
        "initializer",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function0;)V",
        "weakReference",
        "Ljava/lang/ref/WeakReference;",
        "getValue",
        "thisRef",
        "property",
        "Lkotlin/reflect/KProperty;",
        "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;",
        "setValue",
        "",
        "value",
        "(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    sget-object v0, Ltech/rabbit/common/utils/Weak$2;->INSTANCE:Ltech/rabbit/common/utils/Weak$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Ltech/rabbit/common/utils/Weak;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltech/rabbit/common/utils/Weak;->weakReference:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;)TT;"
        }
    .end annotation

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ltech/rabbit/common/utils/Weak;->weakReference:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 53
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;TT;)V"
        }
    .end annotation

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ltech/rabbit/common/utils/Weak;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method
