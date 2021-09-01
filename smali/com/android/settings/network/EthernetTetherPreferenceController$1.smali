.class Lcom/android/settings/network/EthernetTetherPreferenceController$1;
.super Ljava/lang/Object;
.source "EthernetTetherPreferenceController.java"

# interfaces
.implements Landroid/net/EthernetManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/EthernetTetherPreferenceController;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/EthernetTetherPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/EthernetTetherPreferenceController;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settings/network/EthernetTetherPreferenceController$1;->this$0:Lcom/android/settings/network/EthernetTetherPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAvailabilityChanged$0()V
    .locals 1

    .line 54
    iget-object p0, p0, Lcom/android/settings/network/EthernetTetherPreferenceController$1;->this$0:Lcom/android/settings/network/EthernetTetherPreferenceController;

    iget-object v0, p0, Lcom/android/settings/network/TetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/TetherBasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAvailabilityChanged$0$EthernetTetherPreferenceController$1()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/EthernetTetherPreferenceController$1;->lambda$onAvailabilityChanged$0()V

    return-void
.end method

.method public onAvailabilityChanged(Ljava/lang/String;Z)V
    .locals 0

    .line 54
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/android/settings/network/-$$Lambda$EthernetTetherPreferenceController$1$AvOfxbGpa_2vIeD9ljahcYUG4L4;

    invoke-direct {p2, p0}, Lcom/android/settings/network/-$$Lambda$EthernetTetherPreferenceController$1$AvOfxbGpa_2vIeD9ljahcYUG4L4;-><init>(Lcom/android/settings/network/EthernetTetherPreferenceController$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
