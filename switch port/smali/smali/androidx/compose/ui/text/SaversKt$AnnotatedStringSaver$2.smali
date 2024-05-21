.class final Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Savers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/SaversKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/text/AnnotatedString;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSavers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2\n+ 2 Savers.kt\nandroidx/compose/ui/text/SaversKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,421:1\n55#2,2:422\n55#2,2:425\n70#2:428\n55#2,2:431\n1#3:424\n1#3:427\n1#3:429\n1#3:430\n1#3:433\n*S KotlinDebug\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2\n*L\n86#1:422,2\n88#1:425,2\n90#1:428\n93#1:431,2\n86#1:424\n88#1:427\n90#1:429\n93#1:433\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "it",
        "",
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


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 6

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    check-cast p1, Ljava/util/List;

    const/4 p0, 0x1

    .line 86
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->access$getAnnotationRangeListSaver$p()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    const/4 v1, 0x0

    .line 422
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    :cond_0
    move-object p0, v4

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_0

    .line 423
    invoke-interface {v0, p0}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    :goto_0
    const/4 v0, 0x2

    .line 88
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->access$getAnnotationRangeListSaver$p()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v3

    .line 425
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move-object v0, v4

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_2

    .line 426
    invoke-interface {v3, v0}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 90
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 428
    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v1, v4

    :goto_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p0, :cond_6

    .line 91
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object p0, v4

    :cond_5
    check-cast p0, Ljava/util/List;

    goto :goto_3

    :cond_6
    move-object p0, v4

    :goto_3
    if-eqz v0, :cond_8

    .line 92
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v0, v4

    :cond_7
    check-cast v0, Ljava/util/List;

    goto :goto_4

    :cond_8
    move-object v0, v4

    :goto_4
    const/4 v3, 0x3

    .line 93
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->access$getAnnotationRangeListSaver$p()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v3

    .line 431
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    if-eqz p1, :cond_a

    .line 432
    invoke-interface {v3, p1}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/util/List;

    .line 89
    :cond_a
    :goto_5
    new-instance p1, Landroidx/compose/ui/text/AnnotatedString;

    invoke-direct {p1, v1, p0, v0, v4}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;->invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    return-object p0
.end method
