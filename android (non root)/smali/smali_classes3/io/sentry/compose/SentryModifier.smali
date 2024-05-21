.class public final Lio/sentry/compose/SentryModifier;
.super Ljava/lang/Object;
.source "SentryModifier.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0007\u001a\u00020\u0008*\u00020\u00082\u0006\u0010\t\u001a\u00020\u0005H\u0007R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lio/sentry/compose/SentryModifier;",
        "",
        "()V",
        "SentryTag",
        "Landroidx/compose/ui/semantics/SemanticsPropertyKey;",
        "",
        "TAG",
        "sentryTag",
        "Landroidx/compose/ui/Modifier;",
        "tag",
        "sentry-compose_release"
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

.field public static final INSTANCE:Lio/sentry/compose/SentryModifier;

.field private static final SentryTag:Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/semantics/SemanticsPropertyKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "SentryTag"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/sentry/compose/SentryModifier;

    invoke-direct {v0}, Lio/sentry/compose/SentryModifier;-><init>()V

    sput-object v0, Lio/sentry/compose/SentryModifier;->INSTANCE:Lio/sentry/compose/SentryModifier;

    .line 13
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 15
    sget-object v1, Lio/sentry/compose/SentryModifier$SentryTag$1;->INSTANCE:Lio/sentry/compose/SentryModifier$SentryTag$1;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const-string v2, "SentryTag"

    .line 13
    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Lio/sentry/compose/SentryModifier;->SentryTag:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sget v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->$stable:I

    sput v0, Lio/sentry/compose/SentryModifier;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSentryTag$p()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Lio/sentry/compose/SentryModifier;->SentryTag:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public static final sentryTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lio/sentry/compose/SentryModifier$sentryTag$2;

    invoke-direct {v0, p1}, Lio/sentry/compose/SentryModifier$sentryTag$2;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, p1, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
