.class final Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FontListFontFamilyTypefaceAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->preload(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/PlatformFontLoader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFontListFontFamilyTypefaceAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontListFontFamilyTypefaceAdapter.kt\nandroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3\n+ 2 TempListUtils.kt\nandroidx/compose/ui/text/TempListUtilsKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,427:1\n56#2,4:428\n60#2,3:436\n63#2:440\n33#3,4:432\n38#3:439\n151#3,3:441\n33#3,4:444\n154#3,2:448\n38#3:450\n156#3:451\n*S KotlinDebug\n*F\n+ 1 FontListFontFamilyTypefaceAdapter.kt\nandroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3\n*L\n100#1:428,4\n100#1:436,3\n100#1:440\n100#1:432,4\n100#1:439\n101#1:441,3\n101#1:444,4\n101#1:448,2\n101#1:450\n101#1:451\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$preload$3"
    f = "FontListFontFamilyTypefaceAdapter.kt"
    i = {}
    l = {
        0x71
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $asyncLoads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/font/Font;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $resourceLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;


# direct methods
.method constructor <init>(Ljava/util/List;Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;Landroidx/compose/ui/text/font/PlatformFontLoader;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/font/Font;",
            ">;",
            "Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;",
            "Landroidx/compose/ui/text/font/PlatformFontLoader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->$asyncLoads:Ljava/util/List;

    iput-object p2, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->this$0:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

    iput-object p3, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->$resourceLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;

    iget-object v1, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->$asyncLoads:Ljava/util/List;

    iget-object v2, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->this$0:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

    iget-object p0, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->$resourceLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;

    invoke-direct {v0, v1, v2, p0, p2}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;-><init>(Ljava/util/List;Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;Landroidx/compose/ui/text/font/PlatformFontLoader;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    .line 98
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    iget-object v4, v0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->$asyncLoads:Ljava/util/List;

    .line 429
    new-instance v5, Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 430
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 433
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_3

    .line 434
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 436
    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/text/font/Font;

    .line 437
    invoke-virtual {v5, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v6

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 440
    :cond_3
    move-object v10, v6

    check-cast v10, Ljava/util/List;

    iget-object v11, v0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->this$0:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

    iget-object v12, v0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->$resourceLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;

    .line 442
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 445
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    move v15, v8

    :goto_1
    if-ge v15, v14, :cond_4

    .line 446
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 448
    move-object v9, v13

    check-cast v9, Ljava/util/Collection;

    check-cast v4, Landroidx/compose/ui/text/font/Font;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 102
    new-instance v7, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;

    const/4 v8, 0x0

    invoke-direct {v7, v11, v4, v12, v8}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;-><init>(Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/PlatformFontLoader;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/16 v16, 0x0

    move-object v4, v2

    move-object v3, v9

    move-object/from16 v9, v16

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v4

    .line 448
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x1

    goto :goto_1

    .line 451
    :cond_4
    check-cast v13, Ljava/util/List;

    check-cast v13, Ljava/util/Collection;

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x1

    iput v3, v0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->label:I

    .line 113
    invoke-static {v13, v2}, Lkotlinx/coroutines/AwaitKt;->joinAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    return-object v1

    .line 114
    :cond_5
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
