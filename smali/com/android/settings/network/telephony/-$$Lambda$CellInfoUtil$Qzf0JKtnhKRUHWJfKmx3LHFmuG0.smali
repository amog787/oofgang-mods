.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$CellInfoUtil$Qzf0JKtnhKRUHWJfKmx3LHFmuG0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$CellInfoUtil$Qzf0JKtnhKRUHWJfKmx3LHFmuG0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$CellInfoUtil$Qzf0JKtnhKRUHWJfKmx3LHFmuG0;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/-$$Lambda$CellInfoUtil$Qzf0JKtnhKRUHWJfKmx3LHFmuG0;-><init>()V

    sput-object v0, Lcom/android/settings/network/telephony/-$$Lambda$CellInfoUtil$Qzf0JKtnhKRUHWJfKmx3LHFmuG0;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$CellInfoUtil$Qzf0JKtnhKRUHWJfKmx3LHFmuG0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/telephony/CellInfo;

    invoke-static {p1}, Lcom/android/settings/network/telephony/CellInfoUtil;->lambda$cellInfoListToString$0(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
