.class Lcom/android/settings/network/telephony/MobileNetworkSwitchController$1;
.super Landroid/telephony/PhoneStateListener;
.source "MobileNetworkSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/MobileNetworkSwitchController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    .line 176
    iget-object p2, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    invoke-static {p2, p1}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->access$002(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;I)I

    .line 177
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->access$100(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)V

    return-void
.end method
