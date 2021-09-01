.class public final Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContextualCardProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;,
        Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CARDNAME_FIELD_NUMBER:I = 0x3

.field public static final CARD_CATEGORY_FIELD_NUMBER:I = 0x4

.field public static final CARD_SCORE_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLICEURI_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private cardCategory_:I

.field private cardName_:Ljava/lang/String;

.field private cardScore_:D

.field private sliceUri_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1230
    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-direct {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;-><init>()V

    .line 1233
    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    .line 1234
    const-class v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 515
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 516
    iput-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->sliceUri_:Ljava/lang/String;

    .line 517
    iput-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardName_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1100()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;
    .locals 1

    .line 510
    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;Ljava/lang/String;)V
    .locals 0

    .line 510
    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->setSliceUri(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;Ljava/lang/String;)V
    .locals 0

    .line 510
    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->setCardName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;)V
    .locals 0

    .line 510
    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->setCardCategory(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;)V

    return-void
.end method

.method public static newBuilder()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;
    .locals 1

    .line 941
    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    return-object v0
.end method

.method private setCardCategory(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 824
    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    .line 825
    invoke-virtual {p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardCategory_:I

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 822
    throw p0
.end method

.method private setCardName(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 770
    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    .line 771
    iput-object p1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardName_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 768
    throw p0
.end method

.method private setSliceUri(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 692
    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    .line 693
    iput-object p1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->sliceUri_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 690
    throw p0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1176
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1223
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p2

    .line 1217
    :pswitch_1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 1202
    :pswitch_2
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    .line 1204
    const-class p1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    monitor-enter p1

    .line 1205
    :try_start_0
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    .line 1207
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1210
    sput-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->PARSER:Lcom/google/protobuf/Parser;

    .line 1212
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    .line 1199
    :pswitch_3
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    return-object p0

    :pswitch_4
    const/4 p0, 0x6

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "bitField0_"

    aput-object p3, p0, p2

    const-string p2, "sliceUri_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "cardName_"

    aput-object p2, p0, p1

    const/4 p1, 0x3

    const-string p2, "cardCategory_"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    .line 1189
    invoke-static {}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p2

    aput-object p2, p0, p1

    const/4 p1, 0x5

    const-string p2, "cardScore_"

    aput-object p2, p0, p1

    .line 1195
    sget-object p1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0005\u0004\u0000\u0000\u0000\u0001\u0008\u0000\u0003\u0008\u0001\u0004\u000c\u0002\u0005\u0000\u0003"

    invoke-static {p1, p2, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1181
    :pswitch_5
    new-instance p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    invoke-direct {p0, p2}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;-><init>(Lcom/android/settings/intelligence/ContextualCardProto$1;)V

    return-object p0

    .line 1178
    :pswitch_6
    new-instance p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-direct {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSliceUri()Ljava/lang/String;
    .locals 0

    .line 666
    iget-object p0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->sliceUri_:Ljava/lang/String;

    return-object p0
.end method
