.class public final synthetic Ltech/rabbit/r1launcher/recorder/RecordThread$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ltech/rabbit/r1launcher/recorder/RecordThread;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ltech/rabbit/r1launcher/recorder/RecordThread;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/recorder/RecordThread$$ExternalSyntheticLambda0;->f$0:Ltech/rabbit/r1launcher/recorder/RecordThread;

    iput-object p2, p0, Ltech/rabbit/r1launcher/recorder/RecordThread$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/recorder/RecordThread$$ExternalSyntheticLambda0;->f$0:Ltech/rabbit/r1launcher/recorder/RecordThread;

    iget-object p0, p0, Ltech/rabbit/r1launcher/recorder/RecordThread$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ltech/rabbit/r1launcher/recorder/RecordThread;->lambda$run$1$tech-rabbit-r1launcher-recorder-RecordThread(Ljava/lang/String;)V

    return-void
.end method
