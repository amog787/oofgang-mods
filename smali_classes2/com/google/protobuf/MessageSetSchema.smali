.class final Lcom/google/protobuf/MessageSetSchema;
.super Ljava/lang/Object;
.source "MessageSetSchema.java"

# interfaces
.implements Lcom/google/protobuf/Schema;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final defaultInstance:Lcom/google/protobuf/MessageLite;

.field private final extensionSchema:Lcom/google/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field

.field private final hasExtensions:Z

.field private final unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/google/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/google/protobuf/MessageLite;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    .line 49
    invoke-virtual {p2, p3}, Lcom/google/protobuf/ExtensionSchema;->hasExtensions(Lcom/google/protobuf/MessageLite;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/protobuf/MessageSetSchema;->hasExtensions:Z

    .line 50
    iput-object p2, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    .line 51
    iput-object p3, p0, Lcom/google/protobuf/MessageSetSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    return-void
.end method

.method private getUnknownFieldsSerializedSize(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 389
    invoke-virtual {p1, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 390
    invoke-virtual {p1, p0}, Lcom/google/protobuf/UnknownFieldSchema;->getSerializedSizeAsMessageSet(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private mergeFromHelper(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;",
            "Lcom/google/protobuf/ExtensionSchema<",
            "TET;>;TT;",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-virtual {p1, p3}, Lcom/google/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 243
    invoke-virtual {p2, p3}, Lcom/google/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v8

    .line 246
    :goto_0
    :try_start_0
    invoke-interface {p4}, Lcom/google/protobuf/Reader;->getFieldNumber()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 263
    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p2

    move-object v4, v8

    move-object v5, p1

    move-object v6, v7

    .line 250
    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/MessageSetSchema;->parseMessageSetItemOrUnknownField(Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    throw p0
.end method

.method static newSchema(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageSetSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/google/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/google/protobuf/MessageLite;",
            ")",
            "Lcom/google/protobuf/MessageSetSchema<",
            "TT;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/google/protobuf/MessageSetSchema;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/MessageSetSchema;-><init>(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MessageLite;)V

    return-object v0
.end method

.method private parseMessageSetItemOrUnknownField(Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/ExtensionSchema<",
            "TET;>;",
            "Lcom/google/protobuf/FieldSet<",
            "TET;>;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TUB;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->getTag()I

    move-result v0

    .line 283
    sget v1, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    .line 284
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 285
    iget-object p0, p0, Lcom/google/protobuf/MessageSetSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 287
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 286
    invoke-virtual {p3, p2, p0, v0}, Lcom/google/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 289
    invoke-virtual {p3, p1, p0, p2, p4}, Lcom/google/protobuf/ExtensionSchema;->parseLengthPrefixedMessageSetItem(Lcom/google/protobuf/Reader;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)V

    return v2

    .line 293
    :cond_0
    invoke-virtual {p5, p6, p1}, Lcom/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)Z

    move-result p0

    return p0

    .line 296
    :cond_1
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->skipField()Z

    move-result p0

    return p0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    .line 324
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->getFieldNumber()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_4

    goto :goto_1

    .line 329
    :cond_4
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->getTag()I

    move-result v4

    .line 330
    sget v5, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    if-ne v4, v5, :cond_5

    .line 331
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readUInt32()I

    move-result v0

    .line 332
    iget-object v1, p0, Lcom/google/protobuf/MessageSetSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 333
    invoke-virtual {p3, p2, v1, v0}, Lcom/google/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 335
    :cond_5
    sget v5, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    if-ne v4, v5, :cond_7

    if-eqz v1, :cond_6

    .line 337
    invoke-virtual {p3, p1, v1, p2, p4}, Lcom/google/protobuf/ExtensionSchema;->parseLengthPrefixedMessageSetItem(Lcom/google/protobuf/Reader;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)V

    goto :goto_0

    .line 342
    :cond_6
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    goto :goto_0

    .line 345
    :cond_7
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->skipField()Z

    move-result v4

    if-nez v4, :cond_3

    .line 351
    :goto_1
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->getTag()I

    move-result p0

    sget p1, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    if-ne p0, p1, :cond_a

    if-eqz v3, :cond_9

    if-eqz v1, :cond_8

    .line 360
    invoke-virtual {p3, v3, v1, p2, p4}, Lcom/google/protobuf/ExtensionSchema;->parseMessageSetItem(Lcom/google/protobuf/ByteString;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)V

    goto :goto_2

    .line 362
    :cond_8
    invoke-virtual {p5, p6, v0, v3}, Lcom/google/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    :cond_9
    :goto_2
    return v2

    .line 352
    :cond_a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method private writeUnknownFieldsHelper(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-virtual {p1, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0, p3}, Lcom/google/protobuf/UnknownFieldSchema;->writeAsMessageSetTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v1, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 74
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    .line 76
    iget-object p0, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p0

    .line 77
    invoke-virtual {p1, p0}, Lcom/google/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public getSerializedSize(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v0, p1}, Lcom/google/protobuf/MessageSetSchema;->getUnknownFieldsSerializedSize(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 380
    iget-boolean v1, p0, Lcom/google/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v1, :cond_0

    .line 381
    iget-object p0, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 85
    iget-boolean v1, p0, Lcom/google/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v1, :cond_0

    .line 86
    iget-object p0, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p0

    mul-int/lit8 v0, v0, 0x35

    .line 87
    invoke-virtual {p0}, Lcom/google/protobuf/FieldSet;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 370
    iget-object p0, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p0

    .line 371
    invoke-virtual {p0}, Lcom/google/protobuf/FieldSet;->isInitialized()Z

    move-result p0

    return p0
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 270
    iget-object p0, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ExtensionSchema;->makeImmutable(Ljava/lang/Object;)V

    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget-object v1, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    iget-object v2, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/MessageSetSchema;->mergeFromHelper(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/SchemaUtil;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object p0, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/SchemaUtil;->mergeExtensions(Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 64
    iget-object p0, p0, Lcom/google/protobuf/MessageSetSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    invoke-interface {p0}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/protobuf/MessageLite$Builder;->buildPartial()Lcom/google/protobuf/MessageLite;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 105
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 107
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 108
    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    instance-of v3, v1, Lcom/google/protobuf/LazyField$LazyEntry;

    if-eqz v3, :cond_0

    .line 113
    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    check-cast v1, Lcom/google/protobuf/LazyField$LazyEntry;

    invoke-virtual {v1}, Lcom/google/protobuf/LazyField$LazyEntry;->getField()Lcom/google/protobuf/LazyField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/LazyFieldLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 112
    invoke-interface {p2, v2, v1}, Lcom/google/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Found invalid MessageSet item."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/MessageSetSchema;->writeUnknownFieldsHelper(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method
