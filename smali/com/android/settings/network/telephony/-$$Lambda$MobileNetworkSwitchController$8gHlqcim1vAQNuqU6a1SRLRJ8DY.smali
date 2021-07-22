.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkSwitchController$8gHlqcim1vAQNuqU6a1SRLRJ8DY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/MobileNetworkSwitchController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkSwitchController$8gHlqcim1vAQNuqU6a1SRLRJ8DY;->f$0:Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    return-void
.end method


# virtual methods
.method public final onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkSwitchController$8gHlqcim1vAQNuqU6a1SRLRJ8DY;->f$0:Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->lambda$displayPreference$0$MobileNetworkSwitchController(Lcom/android/settings/widget/ToggleSwitch;Z)Z

    move-result p0

    return p0
.end method
