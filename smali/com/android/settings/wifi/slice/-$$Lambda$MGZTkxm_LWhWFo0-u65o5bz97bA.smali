.class public final synthetic Lcom/android/settings/wifi/slice/-$$Lambda$MGZTkxm_LWhWFo0-u65o5bz97bA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/wifi/slice/-$$Lambda$MGZTkxm_LWhWFo0-u65o5bz97bA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/slice/-$$Lambda$MGZTkxm_LWhWFo0-u65o5bz97bA;

    invoke-direct {v0}, Lcom/android/settings/wifi/slice/-$$Lambda$MGZTkxm_LWhWFo0-u65o5bz97bA;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/slice/-$$Lambda$MGZTkxm_LWhWFo0-u65o5bz97bA;->INSTANCE:Lcom/android/settings/wifi/slice/-$$Lambda$MGZTkxm_LWhWFo0-u65o5bz97bA;

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

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
