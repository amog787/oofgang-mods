.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TelephonyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic cno:[Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

.field public static final enum rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

.field public static final enum sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

.field public static final enum ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

.field public static final enum tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

.field public static final enum you:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

.field public static final enum zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    const-string v1, "NETWORK_STATE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    const-string v1, "DATACALL_STATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    const-string v1, "IMS_STATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    const-string v1, "RAT_STATE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    const-string v1, "SIGNAL_CHANGE_TYPE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    const-string v1, "DATA_CONNECTION_CHANGE_TYPE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    new-array v1, v8, [Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    aput-object v8, v1, v2

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->cno:[Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->cno:[Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    return-object v0
.end method

.method static you(Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->zta:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const-string p0, "DATA_FREQ_CHANGE_ANNOMALY"

    goto :goto_0

    :pswitch_1
    const-string p0, "NO_SIGNAL_INTERSECTION_ANNOMALY"

    goto :goto_0

    :pswitch_2
    const-string p0, "TELEPHONY_RAT_ANOMALY"

    goto :goto_0

    :pswitch_3
    const-string p0, "TELEPHONY_IMS_ANOMALY"

    goto :goto_0

    :pswitch_4
    const-string p0, "TELEPHONY_DATACALL_ANOMALY"

    goto :goto_0

    :pswitch_5
    const-string p0, "TELEPHONY_NETWORK_ANOMALY"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static zta(I)Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;
    .locals 5

    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
