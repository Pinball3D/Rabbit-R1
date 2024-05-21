.class public final Lio/sentry/JsonObjectWriter;
.super Ljava/lang/Object;
.source "JsonObjectWriter.java"

# interfaces
.implements Lio/sentry/ObjectWriter;


# instance fields
.field private final jsonObjectSerializer:Lio/sentry/JsonObjectSerializer;

.field private final jsonWriter:Lio/sentry/vendor/gson/stream/JsonWriter;


# direct methods
.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lio/sentry/vendor/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lio/sentry/vendor/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lio/sentry/JsonObjectWriter;->jsonWriter:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 16
    new-instance p1, Lio/sentry/JsonObjectSerializer;

    invoke-direct {p1, p2}, Lio/sentry/JsonObjectSerializer;-><init>(I)V

    iput-object p1, p0, Lio/sentry/JsonObjectWriter;->jsonObjectSerializer:Lio/sentry/JsonObjectSerializer;

    return-void
.end method


# virtual methods
.method public beginArray()Lio/sentry/JsonObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/JsonObjectWriter;->jsonWriter:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 21
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->beginArray()Lio/sentry/vendor/gson/stream/JsonWriter;

    return-object p0
.end method

.method public bridge synthetic beginArray()Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lio/sentry/JsonObjectWriter;->beginArray()Lio/sentry/JsonObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public beginObject()Lio/sentry/JsonObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/JsonObjectWriter;->jsonWriter:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 33
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->beginObject()Lio/sentry/vendor/gson/stream/JsonWriter;

    return-object p0
.end method

.method public bridge synthetic beginObject()Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lio/sentry/JsonObjectWriter;->beginObject()Lio/sentry/JsonObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public endArray()Lio/sentry/JsonObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/JsonObjectWriter;->jsonWriter:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 27
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->endArray()Lio/sentry/vendor/gson/stream/JsonWriter;

    return-object p0
.end method

.method public bridge synthetic endArray()Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lio/sentry/JsonObjectWriter;->endArray()Lio/sentry/JsonObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public endObject()Lio/sentry/JsonObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/JsonObjectWriter;->jsonWriter:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 39
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->endObject()Lio/sentry/vendor/gson/stream/JsonWriter;

    return-object p0
.end method

.method public bridge synthetic endObject()Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lio/sentry/JsonObjectWriter;->endObject()Lio/sentry/JsonObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/JsonObjectWriter;->jsonWriter:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 45
    invoke-virtual {v0, p1}, Lio/sentry/vendor/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;

    return-object p0
.end method

.method public bridge synthetic name(Ljava/lang/String;)Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public nullValue()Lio/sentry/JsonObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/JsonObjectWriter;->jsonWriter:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 57
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->nullValue()Lio/sentry/vendor/gson/stream/JsonWriter;

    return-object p0
.end method

.method public bridge synthetic nullValue()Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lio/sentry/JsonObjectWriter;->nullValue()Lio/sentry/JsonObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public setIndent(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/JsonObjectWriter;->jsonWriter:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 107
    invoke-virtual {p0, p1}, Lio/sentry/vendor/gson/stream/JsonWriter;->setIndent(Ljava/lang/String;)V

    return-void
.end method

.method public value(D)Lio/sentry/JsonObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/JsonObjectWriter;->jsonWriter:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 75
    invoke-virtual {v0, p1, p2}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(D)Lio/sentry/vendor/gson/stream/JsonWriter;

    return-object p0
.end method

.method public value(J)Lio/sentry/JsonObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/JsonObjectWriter;->jsonWriter:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 81
    invoke-virtual {v0, p1, p2}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(J)Lio/sentry/vendor/gson/stream/JsonWriter;

    return-object p0
.end method

.method public value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/JsonObjectWriter;->jsonObjectSerializer:Lio/sentry/JsonObjectSerializer;

    .line 102
    invoke-virtual {v0, p0, p1, p2}, Lio/sentry/JsonObjectSerializer;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/lang/Object;)V

    return-object p0
.end method

.method public value(Ljava/lang/Boolean;)Lio/sentry/JsonObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/JsonObjectWriter;->jsonWriter:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 69
    invoke-virtual {v0, p1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/Boolean;)Lio/sentry/vendor/gson/stream/JsonWriter;

    return-object p0
.end method

.method public value(Ljava/lang/Number;)Lio/sentry/JsonObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/JsonObjectWriter;->jsonWriter:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 87
    invoke-virtual {v0, p1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/JsonWriter;

    return-object p0
.end method

.method public value(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/JsonObjectWriter;->jsonWriter:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 51
    invoke-virtual {v0, p1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;

    return-object p0
.end method

.method public value(Z)Lio/sentry/JsonObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/JsonObjectWriter;->jsonWriter:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 63
    invoke-virtual {v0, p1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Z)Lio/sentry/vendor/gson/stream/JsonWriter;

    return-object p0
.end method

.method public bridge synthetic value(D)Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2}, Lio/sentry/JsonObjectWriter;->value(D)Lio/sentry/JsonObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic value(J)Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2}, Lio/sentry/JsonObjectWriter;->value(J)Lio/sentry/JsonObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2}, Lio/sentry/JsonObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic value(Ljava/lang/Boolean;)Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lio/sentry/JsonObjectWriter;->value(Ljava/lang/Boolean;)Lio/sentry/JsonObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lio/sentry/JsonObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/JsonObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic value(Ljava/lang/String;)Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lio/sentry/JsonObjectWriter;->value(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic value(Z)Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lio/sentry/JsonObjectWriter;->value(Z)Lio/sentry/JsonObjectWriter;

    move-result-object p0

    return-object p0
.end method
