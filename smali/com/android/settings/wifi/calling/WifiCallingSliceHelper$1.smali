.class Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$1;
.super Ljava/lang/Object;
.source "WifiCallingSliceHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getWfcMode(Landroid/telephony/ims/ImsMmTelManager;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$imsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;Landroid/telephony/ims/ImsMmTelManager;)V
    .locals 0

    .line 355
    iput-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$1;->val$imsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$1;->val$imsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiModeSetting()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$1;->call()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
