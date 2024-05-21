.class final Lio/sentry/android/okhttp/SentryOkHttpEventListener$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SentryOkHttpEventListener.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/okhttp/SentryOkHttpEventListener;-><init>(Lio/sentry/IHub;Lokhttp3/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lokhttp3/Call;",
        "Lokhttp3/EventListener;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lokhttp3/EventListener;",
        "it",
        "Lokhttp3/Call;",
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
.field final synthetic $originalEventListener:Lokhttp3/EventListener;


# direct methods
.method constructor <init>(Lokhttp3/EventListener;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener$3;->$originalEventListener:Lokhttp3/EventListener;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    check-cast p1, Lokhttp3/Call;

    invoke-virtual {p0, p1}, Lio/sentry/android/okhttp/SentryOkHttpEventListener$3;->invoke(Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener$3;->$originalEventListener:Lokhttp3/EventListener;

    return-object p0
.end method
