.class public final synthetic Lcom/android/settings/deviceinfo/-$$Lambda$HardwareInfoPreferenceController$2jUJufqqG3kEFPreI5guPIXwUZA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/deviceinfo/-$$Lambda$HardwareInfoPreferenceController$2jUJufqqG3kEFPreI5guPIXwUZA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/deviceinfo/-$$Lambda$HardwareInfoPreferenceController$2jUJufqqG3kEFPreI5guPIXwUZA;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/-$$Lambda$HardwareInfoPreferenceController$2jUJufqqG3kEFPreI5guPIXwUZA;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/-$$Lambda$HardwareInfoPreferenceController$2jUJufqqG3kEFPreI5guPIXwUZA;->INSTANCE:Lcom/android/settings/deviceinfo/-$$Lambda$HardwareInfoPreferenceController$2jUJufqqG3kEFPreI5guPIXwUZA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/android/settings/deviceinfo/HardwareInfoPreferenceController;->lambda$getDeviceModel$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
