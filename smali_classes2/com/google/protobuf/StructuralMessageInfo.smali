.class final Lcom/google/protobuf/StructuralMessageInfo;
.super Ljava/lang/Object;
.source "StructuralMessageInfo.java"

# interfaces
.implements Lcom/google/protobuf/MessageInfo;


# instance fields
.field private final checkInitialized:[I

.field private final defaultInstance:Lcom/google/protobuf/MessageLite;

.field private final fields:[Lcom/google/protobuf/FieldInfo;

.field private final messageSetWireFormat:Z

.field private final syntax:Lcom/google/protobuf/ProtoSyntax;


# virtual methods
.method public getCheckInitialized()[I
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/google/protobuf/StructuralMessageInfo;->checkInitialized:[I

    return-object p0
.end method

.method public getDefaultInstance()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/google/protobuf/StructuralMessageInfo;->defaultInstance:Lcom/google/protobuf/MessageLite;

    return-object p0
.end method

.method public getFields()[Lcom/google/protobuf/FieldInfo;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/google/protobuf/StructuralMessageInfo;->fields:[Lcom/google/protobuf/FieldInfo;

    return-object p0
.end method

.method public getSyntax()Lcom/google/protobuf/ProtoSyntax;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/google/protobuf/StructuralMessageInfo;->syntax:Lcom/google/protobuf/ProtoSyntax;

    return-object p0
.end method

.method public isMessageSetWireFormat()Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/google/protobuf/StructuralMessageInfo;->messageSetWireFormat:Z

    return p0
.end method
