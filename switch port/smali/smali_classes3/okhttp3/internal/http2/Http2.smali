.class public final Lokhttp3/internal/http2/Http2;
.super Ljava/lang/Object;
.source "Http2.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u001a\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u000bJ\u0015\u0010\"\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u000bH\u0000\u00a2\u0006\u0002\u0008#J.\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u000bR\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\n\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0014\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2;",
        "",
        "()V",
        "BINARY",
        "",
        "",
        "[Ljava/lang/String;",
        "CONNECTION_PREFACE",
        "Lokio/ByteString;",
        "FLAGS",
        "FLAG_ACK",
        "",
        "FLAG_COMPRESSED",
        "FLAG_END_HEADERS",
        "FLAG_END_PUSH_PROMISE",
        "FLAG_END_STREAM",
        "FLAG_NONE",
        "FLAG_PADDED",
        "FLAG_PRIORITY",
        "FRAME_NAMES",
        "INITIAL_MAX_FRAME_SIZE",
        "TYPE_CONTINUATION",
        "TYPE_DATA",
        "TYPE_GOAWAY",
        "TYPE_HEADERS",
        "TYPE_PING",
        "TYPE_PRIORITY",
        "TYPE_PUSH_PROMISE",
        "TYPE_RST_STREAM",
        "TYPE_SETTINGS",
        "TYPE_WINDOW_UPDATE",
        "formatFlags",
        "type",
        "flags",
        "formattedType",
        "formattedType$okhttp",
        "frameLog",
        "inbound",
        "",
        "streamId",
        "length",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final BINARY:[Ljava/lang/String;

.field public static final CONNECTION_PREFACE:Lokio/ByteString;

.field private static final FLAGS:[Ljava/lang/String;

.field public static final FLAG_ACK:I = 0x1

.field public static final FLAG_COMPRESSED:I = 0x20

.field public static final FLAG_END_HEADERS:I = 0x4

.field public static final FLAG_END_PUSH_PROMISE:I = 0x4

.field public static final FLAG_END_STREAM:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_PADDED:I = 0x8

.field public static final FLAG_PRIORITY:I = 0x20

.field private static final FRAME_NAMES:[Ljava/lang/String;

.field public static final INITIAL_MAX_FRAME_SIZE:I = 0x4000

.field public static final INSTANCE:Lokhttp3/internal/http2/Http2;

.field public static final TYPE_CONTINUATION:I = 0x9

.field public static final TYPE_DATA:I = 0x0

.field public static final TYPE_GOAWAY:I = 0x7

.field public static final TYPE_HEADERS:I = 0x1

.field public static final TYPE_PING:I = 0x6

.field public static final TYPE_PRIORITY:I = 0x2

.field public static final TYPE_PUSH_PROMISE:I = 0x5

.field public static final TYPE_RST_STREAM:I = 0x3

.field public static final TYPE_SETTINGS:I = 0x4

.field public static final TYPE_WINDOW_UPDATE:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 21
    new-instance v0, Lokhttp3/internal/http2/Http2;

    invoke-direct {v0}, Lokhttp3/internal/http2/Http2;-><init>()V

    sput-object v0, Lokhttp3/internal/http2/Http2;->INSTANCE:Lokhttp3/internal/http2/Http2;

    .line 23
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    const-string v1, "DATA"

    const-string v2, "HEADERS"

    const-string v3, "PRIORITY"

    const-string v4, "RST_STREAM"

    const-string v5, "SETTINGS"

    const-string v6, "PUSH_PROMISE"

    const-string v7, "PING"

    const-string v8, "GOAWAY"

    const-string v9, "WINDOW_UPDATE"

    const-string v10, "CONTINUATION"

    .line 51
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/16 v0, 0x100

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Integer.toBinaryString(it)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%8s"

    invoke-static {v5, v4}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const-string v1, ""

    .line 64
    aput-object v1, v0, v2

    const-string v1, "END_STREAM"

    const/4 v3, 0x1

    .line 65
    aput-object v1, v0, v3

    filled-new-array {v3}, [I

    move-result-object v1

    const-string v3, "PADDED"

    const/16 v4, 0x8

    .line 69
    aput-object v3, v0, v4

    .line 70
    aget v3, v1, v2

    or-int/lit8 v5, v3, 0x8

    .line 71
    aget-object v3, v0, v3

    const-string v6, "|PADDED"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    const-string v3, "END_HEADERS"

    const/4 v5, 0x4

    .line 74
    aput-object v3, v0, v5

    const-string v3, "PRIORITY"

    const/16 v7, 0x20

    .line 75
    aput-object v3, v0, v7

    const-string v3, "END_HEADERS|PRIORITY"

    const/16 v8, 0x24

    .line 76
    aput-object v3, v0, v8

    filled-new-array {v5, v7, v8}, [I

    move-result-object v0

    move v3, v2

    :goto_1
    const/4 v5, 0x3

    if-ge v3, v5, :cond_1

    .line 79
    aget v5, v0, v3

    .line 80
    aget v7, v1, v2

    sget-object v8, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    or-int v9, v7, v5

    .line 81
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v8, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v12, v8, v5

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    or-int/2addr v9, v4

    .line 83
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v8, v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v5, v8, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 87
    array-length v0, v0

    :goto_2
    if-ge v2, v0, :cond_3

    sget-object v1, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 88
    aget-object v3, v1, v2

    if-nez v3, :cond_2

    sget-object v3, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final formatFlags(II)Ljava/lang/String;
    .locals 6

    if-nez p2, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 p0, 0x2

    if-eq p1, p0, :cond_6

    const/4 p0, 0x3

    if-eq p1, p0, :cond_6

    const/4 p0, 0x4

    if-eq p1, p0, :cond_4

    const/4 p0, 0x6

    if-eq p1, p0, :cond_4

    const/4 p0, 0x7

    if-eq p1, p0, :cond_6

    const/16 p0, 0x8

    if-eq p1, p0, :cond_6

    sget-object p0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 137
    array-length v0, p0

    if-ge p2, v0, :cond_1

    aget-object p0, p0, p2

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    aget-object p0, p0, p2

    :goto_0
    move-object v0, p0

    const/4 p0, 0x5

    if-ne p1, p0, :cond_2

    and-int/lit8 p0, p2, 0x4

    if-eqz p0, :cond_2

    const-string v1, "HEADERS"

    const-string v2, "PUSH_PROMISE"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 141
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    and-int/lit8 p0, p2, 0x20

    if-eqz p0, :cond_3

    const-string v1, "PRIORITY"

    const-string v2, "COMPRESSED"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 144
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    const/4 p0, 0x1

    if-ne p2, p0, :cond_5

    const-string p0, "ACK"

    goto :goto_2

    :cond_5
    sget-object p0, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 134
    aget-object p0, p0, p2

    :goto_2
    return-object p0

    :cond_6
    sget-object p0, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 135
    aget-object p0, p0, p2

    return-object p0
.end method

.method public final formattedType$okhttp(I)Ljava/lang/String;
    .locals 1

    sget-object p0, Lokhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    .line 123
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "0x%02x"

    invoke-static {p1, p0}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final frameLog(ZIIII)Ljava/lang/String;
    .locals 1

    .line 115
    invoke-virtual {p0, p4}, Lokhttp3/internal/http2/Http2;->formattedType$okhttp(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p0, p4, p5}, Lokhttp3/internal/http2/Http2;->formatFlags(II)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string p1, "<<"

    goto :goto_0

    :cond_0
    const-string p1, ">>"

    .line 119
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s 0x%08x %5d %-13s %s"

    .line 118
    invoke-static {p1, p0}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
