.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$Utils$_MVjtMEczmHvXav1qgSkgxMj5iE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$Utils$_MVjtMEczmHvXav1qgSkgxMj5iE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wifitrackerlib/-$$Lambda$Utils$_MVjtMEczmHvXav1qgSkgxMj5iE;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/-$$Lambda$Utils$_MVjtMEczmHvXav1qgSkgxMj5iE;-><init>()V

    sput-object v0, Lcom/android/wifitrackerlib/-$$Lambda$Utils$_MVjtMEczmHvXav1qgSkgxMj5iE;->INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$Utils$_MVjtMEczmHvXav1qgSkgxMj5iE;

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

    invoke-static {p1}, Lcom/android/wifitrackerlib/Utils;->lambda$mapScanResultsToKey$2(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
