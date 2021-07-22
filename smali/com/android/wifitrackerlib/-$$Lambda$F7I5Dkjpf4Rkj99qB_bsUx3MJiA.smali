.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$F7I5Dkjpf4Rkj99qB_bsUx3MJiA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$F7I5Dkjpf4Rkj99qB_bsUx3MJiA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wifitrackerlib/-$$Lambda$F7I5Dkjpf4Rkj99qB_bsUx3MJiA;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/-$$Lambda$F7I5Dkjpf4Rkj99qB_bsUx3MJiA;-><init>()V

    sput-object v0, Lcom/android/wifitrackerlib/-$$Lambda$F7I5Dkjpf4Rkj99qB_bsUx3MJiA;->INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$F7I5Dkjpf4Rkj99qB_bsUx3MJiA;

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

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-static {p1}, Landroid/net/NetworkKey;->createFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/NetworkKey;

    move-result-object p0

    return-object p0
.end method
