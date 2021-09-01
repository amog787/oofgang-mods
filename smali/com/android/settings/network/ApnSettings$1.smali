.class Lcom/android/settings/network/ApnSettings$1;
.super Landroid/telephony/PhoneStateListener;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/ApnSettings;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 1

    .line 207
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 208
    invoke-static {}, Lcom/android/settings/network/ApnSettings;->access$000()Z

    move-result p1

    if-nez p1, :cond_0

    .line 209
    iget-object p0, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p0}, Lcom/android/settings/network/ApnSettings;->access$100(Lcom/android/settings/network/ApnSettings;)V

    :cond_0
    return-void
.end method
