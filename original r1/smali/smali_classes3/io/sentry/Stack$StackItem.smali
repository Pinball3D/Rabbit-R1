.class final Lio/sentry/Stack$StackItem;
.super Ljava/lang/Object;
.source "Stack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/Stack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StackItem"
.end annotation


# instance fields
.field private volatile client:Lio/sentry/ISentryClient;

.field private final options:Lio/sentry/SentryOptions;

.field private volatile scope:Lio/sentry/IScope;


# direct methods
.method constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/ISentryClient;Lio/sentry/IScope;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISentryClient is required."

    .line 20
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/ISentryClient;

    iput-object p2, p0, Lio/sentry/Stack$StackItem;->client:Lio/sentry/ISentryClient;

    const-string p2, "Scope is required."

    .line 21
    invoke-static {p3, p2}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/IScope;

    iput-object p2, p0, Lio/sentry/Stack$StackItem;->scope:Lio/sentry/IScope;

    const-string p2, "Options is required"

    .line 22
    invoke-static {p1, p2}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/Stack$StackItem;->options:Lio/sentry/SentryOptions;

    return-void
.end method

.method constructor <init>(Lio/sentry/Stack$StackItem;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iget-object v0, p1, Lio/sentry/Stack$StackItem;->options:Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/Stack$StackItem;->options:Lio/sentry/SentryOptions;

    .line 27
    iget-object v0, p1, Lio/sentry/Stack$StackItem;->client:Lio/sentry/ISentryClient;

    iput-object v0, p0, Lio/sentry/Stack$StackItem;->client:Lio/sentry/ISentryClient;

    .line 28
    iget-object p1, p1, Lio/sentry/Stack$StackItem;->scope:Lio/sentry/IScope;

    invoke-interface {p1}, Lio/sentry/IScope;->clone()Lio/sentry/IScope;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/Stack$StackItem;->scope:Lio/sentry/IScope;

    return-void
.end method


# virtual methods
.method public getClient()Lio/sentry/ISentryClient;
    .locals 0

    iget-object p0, p0, Lio/sentry/Stack$StackItem;->client:Lio/sentry/ISentryClient;

    return-object p0
.end method

.method public getOptions()Lio/sentry/SentryOptions;
    .locals 0

    iget-object p0, p0, Lio/sentry/Stack$StackItem;->options:Lio/sentry/SentryOptions;

    return-object p0
.end method

.method public getScope()Lio/sentry/IScope;
    .locals 0

    iget-object p0, p0, Lio/sentry/Stack$StackItem;->scope:Lio/sentry/IScope;

    return-object p0
.end method

.method public setClient(Lio/sentry/ISentryClient;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/Stack$StackItem;->client:Lio/sentry/ISentryClient;

    return-void
.end method
