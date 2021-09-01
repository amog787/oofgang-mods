.class public final Lcom/android/settings/intelligence/LogProto$SettingsLog;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LogProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/settings/intelligence/LogProto$SettingsLog;",
        "Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x2

.field public static final ATTRIBUTION_FIELD_NUMBER:I = 0x1

.field public static final CHANGED_PREFERENCE_INT_VALUE_FIELD_NUMBER:I = 0x5

.field public static final CHANGED_PREFERENCE_KEY_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

.field public static final PAGE_ID_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/intelligence/LogProto$SettingsLog;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x6


# instance fields
.field private action_:I

.field private attribution_:I

.field private bitField0_:I

.field private changedPreferenceIntValue_:I

.field private changedPreferenceKey_:Ljava/lang/String;

.field private pageId_:I

.field private timestamp_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1063
    new-instance v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-direct {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;-><init>()V

    .line 1066
    sput-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    .line 1067
    const-class v1, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 159
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 160
    iput-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceKey_:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->timestamp_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/android/settings/intelligence/LogProto$SettingsLog;
    .locals 1

    .line 154
    sget-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/intelligence/LogProto$SettingsLog;I)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->setAttribution(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/intelligence/LogProto$SettingsLog;I)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->setChangedPreferenceIntValue(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/intelligence/LogProto$SettingsLog;Ljava/lang/String;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->setTimestamp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/intelligence/LogProto$SettingsLog;I)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->setAction(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/intelligence/LogProto$SettingsLog;I)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->setPageId(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/intelligence/LogProto$SettingsLog;Ljava/lang/String;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->setChangedPreferenceKey(Ljava/lang/String;)V

    return-void
.end method

.method public static newBuilder()Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    .line 615
    sget-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;

    return-object v0
.end method

.method private setAction(I)V
    .locals 1

    .line 254
    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    .line 255
    iput p1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->action_:I

    return-void
.end method

.method private setAttribution(I)V
    .locals 1

    .line 202
    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    .line 203
    iput p1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->attribution_:I

    return-void
.end method

.method private setChangedPreferenceIntValue(I)V
    .locals 1

    .line 440
    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    .line 441
    iput p1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceIntValue_:I

    return-void
.end method

.method private setChangedPreferenceKey(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 373
    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    .line 374
    iput-object p1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceKey_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 371
    throw p0
.end method

.method private setPageId(I)V
    .locals 1

    .line 305
    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    .line 306
    iput p1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->pageId_:I

    return-void
.end method

.method private setTimestamp(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 508
    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    .line 509
    iput-object p1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->timestamp_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 506
    throw p0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1008
    sget-object p0, Lcom/android/settings/intelligence/LogProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1056
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p2

    .line 1050
    :pswitch_1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 1035
    :pswitch_2
    sget-object p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    .line 1037
    const-class p1, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    monitor-enter p1

    .line 1038
    :try_start_0
    sget-object p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    .line 1040
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1043
    sput-object p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->PARSER:Lcom/google/protobuf/Parser;

    .line 1045
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

    .line 1032
    :pswitch_3
    sget-object p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    return-object p0

    :pswitch_4
    const/4 p0, 0x7

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "bitField0_"

    aput-object p3, p0, p2

    const-string p2, "attribution_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "action_"

    aput-object p2, p0, p1

    const/4 p1, 0x3

    const-string p2, "pageId_"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "changedPreferenceKey_"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    const-string p2, "changedPreferenceIntValue_"

    aput-object p2, p0, p1

    const/4 p1, 0x6

    const-string p2, "timestamp_"

    aput-object p2, p0, p1

    .line 1028
    sget-object p1, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0004\u0001\u0003\u0004\u0002\u0004\u0008\u0003\u0005\u0004\u0004\u0006\u0008\u0005"

    invoke-static {p1, p2, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1013
    :pswitch_5
    new-instance p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;

    invoke-direct {p0, p2}, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;-><init>(Lcom/android/settings/intelligence/LogProto$1;)V

    return-object p0

    .line 1010
    :pswitch_6
    new-instance p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-direct {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;-><init>()V

    return-object p0

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
