.class final Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RememberSaveable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/runtime/DisposableEffectScope;",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRememberSaveable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RememberSaveable.kt\nandroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1\n+ 2 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,200:1\n63#2,5:201\n*S KotlinDebug\n*F\n+ 1 RememberSaveable.kt\nandroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1\n*L\n107#1:201,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        "T",
        "",
        "Landroidx/compose/runtime/DisposableEffectScope;",
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
.field final synthetic $finalKey:Ljava/lang/String;

.field final synthetic $registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

.field final synthetic $saverState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/runtime/saveable/Saver<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $valueState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/String;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/saveable/SaveableStateRegistry;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Landroidx/compose/runtime/saveable/Saver<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "+TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1;->$registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    iput-object p2, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1;->$finalKey:Ljava/lang/String;

    iput-object p3, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1;->$saverState:Landroidx/compose/runtime/State;

    iput-object p4, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1;->$valueState:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 3

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance p1, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$valueProvider$1;

    iget-object v0, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1;->$saverState:Landroidx/compose/runtime/State;

    iget-object v1, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1;->$valueState:Landroidx/compose/runtime/State;

    iget-object v2, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1;->$registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    invoke-direct {p1, v0, v1, v2}, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$valueProvider$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/saveable/SaveableStateRegistry;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iget-object v0, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1;->$registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 105
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->access$requireCanBeSaved(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1;->$registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    iget-object p0, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1;->$finalKey:Ljava/lang/String;

    .line 106
    invoke-interface {v0, p0, p1}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->registerProvider(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    move-result-object p0

    .line 201
    new-instance p1, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$invoke$$inlined$onDispose$1;

    invoke-direct {p1, p0}, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$invoke$$inlined$onDispose$1;-><init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;)V

    check-cast p1, Landroidx/compose/runtime/DisposableEffectResult;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 99
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
