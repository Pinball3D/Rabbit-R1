.class public final Landroidx/compose/ui/semantics/SemanticsPropertyKey;
.super Ljava/lang/Object;
.source "SemanticsProperties.kt"


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
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B-\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u001e\u0008\u0002\u0010\u0005\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0006\u00a2\u0006\u0002\u0010\u0007J\"\u0010\u000c\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000e2\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u0010H\u0086\u0002\u00a2\u0006\u0002\u0010\u0011J\u001f\u0010\u0012\u001a\u0004\u0018\u00018\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0014\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0015J*\u0010\u0016\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\u000e2\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u00102\u0006\u0010\u0018\u001a\u00028\u0000H\u0086\u0002\u00a2\u0006\u0002\u0010\u0019J\u0008\u0010\u001a\u001a\u00020\u0004H\u0016R*\u0010\u0005\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/compose/ui/semantics/SemanticsPropertyKey;",
        "T",
        "",
        "name",
        "",
        "mergePolicy",
        "Lkotlin/Function2;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V",
        "getMergePolicy$ui_release",
        "()Lkotlin/jvm/functions/Function2;",
        "getName",
        "()Ljava/lang/String;",
        "getValue",
        "thisRef",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "property",
        "Lkotlin/reflect/KProperty;",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;)Ljava/lang/Object;",
        "merge",
        "parentValue",
        "childValue",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "setValue",
        "",
        "value",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V",
        "toString",
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


# static fields
.field public static final $stable:I


# instance fields
.field private final mergePolicy:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-TT;+TT;>;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mergePolicy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->name:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->mergePolicy:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 376
    sget-object p2, Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;

    check-cast p2, Lkotlin/jvm/functions/Function2;

    .line 371
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public final getMergePolicy$ui_release()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "TT;TT;TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->mergePolicy:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Lkotlin/reflect/KProperty<",
            "*>;)TT;"
        }
    .end annotation

    const-string/jumbo p0, "thisRef"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "property"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-static {}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->access$throwSemanticsGetNotSupported()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->mergePolicy:Lkotlin/jvm/functions/Function2;

    .line 392
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Lkotlin/reflect/KProperty<",
            "*>;TT;)V"
        }
    .end annotation

    const-string/jumbo v0, "thisRef"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    invoke-interface {p1, p0, p3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SemanticsPropertyKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
