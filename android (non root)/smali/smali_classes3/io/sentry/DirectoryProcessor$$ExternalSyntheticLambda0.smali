.class public final synthetic Lio/sentry/DirectoryProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic f$0:Lio/sentry/DirectoryProcessor;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/DirectoryProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/DirectoryProcessor$$ExternalSyntheticLambda0;->f$0:Lio/sentry/DirectoryProcessor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lio/sentry/DirectoryProcessor$$ExternalSyntheticLambda0;->f$0:Lio/sentry/DirectoryProcessor;

    invoke-virtual {p0, p1, p2}, Lio/sentry/DirectoryProcessor;->lambda$processDirectory$0$io-sentry-DirectoryProcessor(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
