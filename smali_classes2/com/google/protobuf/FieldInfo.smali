.class final Lcom/google/protobuf/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/protobuf/FieldInfo;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getCachedSizeField()Ljava/lang/reflect/Field;
.end method

.method public abstract getEnumVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
.end method

.method public abstract getField()Ljava/lang/reflect/Field;
.end method

.method public abstract getFieldNumber()I
.end method

.method public abstract getMapDefaultEntry()Ljava/lang/Object;
.end method

.method public abstract getMessageFieldClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getOneof()Lcom/google/protobuf/OneofInfo;
.end method

.method public abstract getPresenceField()Ljava/lang/reflect/Field;
.end method

.method public abstract getPresenceMask()I
.end method

.method public abstract getType()Lcom/google/protobuf/FieldType;
.end method

.method public abstract isEnforceUtf8()Z
.end method

.method public abstract isRequired()Z
.end method
