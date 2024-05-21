.class public final synthetic Lio/flutter/plugin/platform/PlatformPlugin$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/flutter/plugin/platform/PlatformPlugin$2;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/platform/PlatformPlugin$2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformPlugin$2$$ExternalSyntheticLambda0;->f$0:Lio/flutter/plugin/platform/PlatformPlugin$2;

    iput p2, p0, Lio/flutter/plugin/platform/PlatformPlugin$2$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$2$$ExternalSyntheticLambda0;->f$0:Lio/flutter/plugin/platform/PlatformPlugin$2;

    iget p0, p0, Lio/flutter/plugin/platform/PlatformPlugin$2$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, p0}, Lio/flutter/plugin/platform/PlatformPlugin$2;->lambda$onSystemUiVisibilityChange$0$io-flutter-plugin-platform-PlatformPlugin$2(I)V

    return-void
.end method
