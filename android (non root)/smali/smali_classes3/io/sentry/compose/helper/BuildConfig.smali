.class public final Lio/sentry/compose/helper/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lio/sentry/compose/helper/BuildConfig;",
        "",
        "()V",
        "SENTRY_COMPOSE_HELPER_SDK_NAME",
        "",
        "VERSION_NAME",
        "sentry-compose-helper"
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
.field public static final $stable:I = 0x0

.field public static final INSTANCE:Lio/sentry/compose/helper/BuildConfig;

.field public static final SENTRY_COMPOSE_HELPER_SDK_NAME:Ljava/lang/String; = "sentry.java.compose.helper"

.field public static final VERSION_NAME:Ljava/lang/String; = "7.4.0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/compose/helper/BuildConfig;

    invoke-direct {v0}, Lio/sentry/compose/helper/BuildConfig;-><init>()V

    sput-object v0, Lio/sentry/compose/helper/BuildConfig;->INSTANCE:Lio/sentry/compose/helper/BuildConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
