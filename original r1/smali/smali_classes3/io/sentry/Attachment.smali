.class public final Lio/sentry/Attachment;
.super Ljava/lang/Object;
.source "Attachment.java"


# static fields
.field private static final DEFAULT_ATTACHMENT_TYPE:Ljava/lang/String; = "event.attachment"

.field private static final VIEW_HIERARCHY_ATTACHMENT_TYPE:Ljava/lang/String; = "event.view_hierarchy"


# instance fields
.field private final addToTransactions:Z

.field private attachmentType:Ljava/lang/String;

.field private bytes:[B

.field private final contentType:Ljava/lang/String;

.field private final filename:Ljava/lang/String;

.field private pathname:Ljava/lang/String;

.field private final serializable:Lio/sentry/JsonSerializable;


# direct methods
.method public constructor <init>(Lio/sentry/JsonSerializable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/Attachment;->bytes:[B

    iput-object p1, p0, Lio/sentry/Attachment;->serializable:Lio/sentry/JsonSerializable;

    iput-object p2, p0, Lio/sentry/Attachment;->filename:Ljava/lang/String;

    iput-object p3, p0, Lio/sentry/Attachment;->contentType:Ljava/lang/String;

    iput-object p4, p0, Lio/sentry/Attachment;->attachmentType:Ljava/lang/String;

    iput-boolean p5, p0, Lio/sentry/Attachment;->addToTransactions:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 129
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/Attachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/Attachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v4, "event.attachment"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 163
    invoke-direct/range {v0 .. v5}, Lio/sentry/Attachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/Attachment;->pathname:Ljava/lang/String;

    iput-object p2, p0, Lio/sentry/Attachment;->filename:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/sentry/Attachment;->serializable:Lio/sentry/JsonSerializable;

    iput-object p3, p0, Lio/sentry/Attachment;->contentType:Ljava/lang/String;

    iput-object p4, p0, Lio/sentry/Attachment;->attachmentType:Ljava/lang/String;

    iput-boolean p5, p0, Lio/sentry/Attachment;->addToTransactions:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "event.attachment"

    iput-object v0, p0, Lio/sentry/Attachment;->attachmentType:Ljava/lang/String;

    iput-object p1, p0, Lio/sentry/Attachment;->pathname:Ljava/lang/String;

    iput-object p2, p0, Lio/sentry/Attachment;->filename:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/sentry/Attachment;->serializable:Lio/sentry/JsonSerializable;

    iput-object p3, p0, Lio/sentry/Attachment;->contentType:Ljava/lang/String;

    iput-boolean p4, p0, Lio/sentry/Attachment;->addToTransactions:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/Attachment;->pathname:Ljava/lang/String;

    iput-object p2, p0, Lio/sentry/Attachment;->filename:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/sentry/Attachment;->serializable:Lio/sentry/JsonSerializable;

    iput-object p3, p0, Lio/sentry/Attachment;->contentType:Ljava/lang/String;

    iput-boolean p4, p0, Lio/sentry/Attachment;->addToTransactions:Z

    iput-object p5, p0, Lio/sentry/Attachment;->attachmentType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/Attachment;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/Attachment;-><init>([BLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/Attachment;->bytes:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lio/sentry/Attachment;->serializable:Lio/sentry/JsonSerializable;

    iput-object p2, p0, Lio/sentry/Attachment;->filename:Ljava/lang/String;

    iput-object p3, p0, Lio/sentry/Attachment;->contentType:Ljava/lang/String;

    iput-object p4, p0, Lio/sentry/Attachment;->attachmentType:Ljava/lang/String;

    iput-boolean p5, p0, Lio/sentry/Attachment;->addToTransactions:Z

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const-string v4, "event.attachment"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 66
    invoke-direct/range {v0 .. v5}, Lio/sentry/Attachment;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static fromScreenshot([B)Lio/sentry/Attachment;
    .locals 4

    .line 320
    new-instance v0, Lio/sentry/Attachment;

    const-string v1, "image/png"

    const/4 v2, 0x0

    const-string v3, "screenshot.png"

    invoke-direct {v0, p0, v3, v1, v2}, Lio/sentry/Attachment;-><init>([BLjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static fromThreadDump([B)Lio/sentry/Attachment;
    .locals 4

    .line 345
    new-instance v0, Lio/sentry/Attachment;

    const-string v1, "text/plain"

    const/4 v2, 0x0

    const-string v3, "thread-dump.txt"

    invoke-direct {v0, p0, v3, v1, v2}, Lio/sentry/Attachment;-><init>([BLjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static fromViewHierarchy(Lio/sentry/protocol/ViewHierarchy;)Lio/sentry/Attachment;
    .locals 7

    .line 330
    new-instance v6, Lio/sentry/Attachment;

    const-string v2, "view-hierarchy.json"

    const-string v3, "application/json"

    const-string v4, "event.view_hierarchy"

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/sentry/Attachment;-><init>(Lio/sentry/JsonSerializable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v6
.end method


# virtual methods
.method public getAttachmentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/Attachment;->attachmentType:Ljava/lang/String;

    return-object p0
.end method

.method public getBytes()[B
    .locals 0

    iget-object p0, p0, Lio/sentry/Attachment;->bytes:[B

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/Attachment;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/Attachment;->filename:Ljava/lang/String;

    return-object p0
.end method

.method public getPathname()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/Attachment;->pathname:Ljava/lang/String;

    return-object p0
.end method

.method public getSerializable()Lio/sentry/JsonSerializable;
    .locals 0

    iget-object p0, p0, Lio/sentry/Attachment;->serializable:Lio/sentry/JsonSerializable;

    return-object p0
.end method

.method isAddToTransactions()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/Attachment;->addToTransactions:Z

    return p0
.end method
