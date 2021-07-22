.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$znfQj8LqOvyui6ncUHU4komPIHY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$znfQj8LqOvyui6ncUHU4komPIHY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$znfQj8LqOvyui6ncUHU4komPIHY;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/-$$Lambda$znfQj8LqOvyui6ncUHU4komPIHY;-><init>()V

    sput-object v0, Lcom/android/settings/network/telephony/-$$Lambda$znfQj8LqOvyui6ncUHU4komPIHY;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$znfQj8LqOvyui6ncUHU4komPIHY;

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

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
