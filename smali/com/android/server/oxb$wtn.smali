.class Lcom/android/server/oxb$wtn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oxb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "wtn"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/oxb;


# direct methods
.method private constructor <init>(Lcom/android/server/oxb;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oxb$wtn;->zta:Lcom/android/server/oxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/oxb;Lcom/android/server/oxb$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/oxb$wtn;-><init>(Lcom/android/server/oxb;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/oxb$wtn;->zta:Lcom/android/server/oxb;

    invoke-static {p0, p1}, Lcom/android/server/oxb;->kth(Lcom/android/server/oxb;Lorg/json/JSONArray;)V

    return-void
.end method
