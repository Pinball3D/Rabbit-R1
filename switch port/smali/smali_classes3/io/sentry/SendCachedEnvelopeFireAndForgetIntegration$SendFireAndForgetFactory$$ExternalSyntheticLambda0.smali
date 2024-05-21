.class public final synthetic Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;


# instance fields
.field public final synthetic f$0:Lio/sentry/ILogger;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lio/sentry/DirectoryProcessor;

.field public final synthetic f$3:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/ILogger;Ljava/lang/String;Lio/sentry/DirectoryProcessor;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory$$ExternalSyntheticLambda0;->f$0:Lio/sentry/ILogger;

    iput-object p2, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory$$ExternalSyntheticLambda0;->f$2:Lio/sentry/DirectoryProcessor;

    iput-object p4, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory$$ExternalSyntheticLambda0;->f$3:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final send()V
    .locals 3

    iget-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory$$ExternalSyntheticLambda0;->f$0:Lio/sentry/ILogger;

    iget-object v1, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory$$ExternalSyntheticLambda0;->f$2:Lio/sentry/DirectoryProcessor;

    iget-object p0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory$$ExternalSyntheticLambda0;->f$3:Ljava/io/File;

    invoke-static {v0, v1, v2, p0}, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;->lambda$processDir$0(Lio/sentry/ILogger;Ljava/lang/String;Lio/sentry/DirectoryProcessor;Ljava/io/File;)V

    return-void
.end method
