.class public final Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;
.super Ljava/lang/Object;
.source "EventMessageEncoder.java"


# instance fields
.field private final byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

.field private final dataOutputStream:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 34
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    return-void
.end method

.method private static writeNullTerminatedString(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 64
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method


# virtual methods
.method public encode(Landroidx/media3/extractor/metadata/emsg/EventMessage;)[B
    .locals 3

    iget-object v0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 45
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    :try_start_0
    iget-object v0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    .line 47
    iget-object v1, p1, Landroidx/media3/extractor/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;->writeNullTerminatedString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 48
    iget-object v0, p1, Landroidx/media3/extractor/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/media3/extractor/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    .line 49
    invoke-static {v1, v0}, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;->writeNullTerminatedString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    .line 50
    iget-wide v1, p1, Landroidx/media3/extractor/metadata/emsg/EventMessage;->durationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    .line 51
    iget-wide v1, p1, Landroidx/media3/extractor/metadata/emsg/EventMessage;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    .line 52
    iget-object p1, p1, Landroidx/media3/extractor/metadata/emsg/EventMessage;->messageData:[B

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    iget-object p1, p0, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    .line 53
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    iget-object p0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 54
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 57
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
