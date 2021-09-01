.class public abstract Lcom/google/protobuf/AbstractMessageLite;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lcom/google/protobuf/MessageLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/AbstractMessageLite$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/AbstractMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/protobuf/AbstractMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/MessageLite;"
    }
.end annotation


# instance fields
.field protected memoizedHashCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return-void
.end method

.method private getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Serializing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to a "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " threw an IOException (should never happen)."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getMemoizedSerializedSize()I
    .locals 0

    .line 102
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method getSerializedSize(Lcom/google/protobuf/Schema;)I
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->getMemoizedSerializedSize()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 113
    invoke-interface {p1, p0}, Lcom/google/protobuf/Schema;->getSerializedSize(Ljava/lang/Object;)I

    move-result v0

    .line 114
    invoke-virtual {p0, v0}, Lcom/google/protobuf/AbstractMessageLite;->setMemoizedSerializedSize(I)V

    :cond_0
    return v0
.end method

.method newUninitializedMessageException()Lcom/google/protobuf/UninitializedMessageException;
    .locals 1

    .line 121
    new-instance v0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Lcom/google/protobuf/UninitializedMessageException;-><init>(Lcom/google/protobuf/MessageLite;)V

    return-object v0
.end method

.method setMemoizedSerializedSize(I)V
    .locals 0

    .line 106
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public toByteArray()[B
    .locals 3

    .line 69
    :try_start_0
    invoke-interface {p0}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 70
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->newInstance([B)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 71
    invoke-interface {p0, v1}, Lcom/google/protobuf/MessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 72
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->checkNoSpaceLeft()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-direct {p0, v2}, Lcom/google/protobuf/AbstractMessageLite;->getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toByteString()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 58
    :try_start_0
    invoke-interface {p0}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->newCodedBuilder(I)Lcom/google/protobuf/ByteString$CodedBuilder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/protobuf/MessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 60
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString$CodedBuilder;->build()Lcom/google/protobuf/ByteString;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    invoke-direct {p0, v2}, Lcom/google/protobuf/AbstractMessageLite;->getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
