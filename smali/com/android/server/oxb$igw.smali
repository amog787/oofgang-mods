.class Lcom/android/server/oxb$igw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oxb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "igw"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/oxb;


# direct methods
.method constructor <init>(Lcom/android/server/oxb;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oxb$igw;->zta:Lcom/android/server/oxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 2

    invoke-static {}, Lcom/android/server/oxb;->ire()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CommonFrontMonitor"

    const-string v1, "updateConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/oxb$igw;->zta:Lcom/android/server/oxb;

    invoke-static {p0, p1}, Lcom/android/server/oxb;->rtg(Lcom/android/server/oxb;Lorg/json/JSONArray;)V

    return-void
.end method
