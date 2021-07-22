.class Lcom/android/settings/network/telephony/SignalStrengthListener$1;
.super Landroid/telephony/PhoneStateListener;
.source "SignalStrengthListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/SignalStrengthListener;->updateSubscriptionIds(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/SignalStrengthListener;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/SignalStrengthListener;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/settings/network/telephony/SignalStrengthListener$1;->this$0:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/settings/network/telephony/SignalStrengthListener$1;->this$0:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-static {p0}, Lcom/android/settings/network/telephony/SignalStrengthListener;->access$000(Lcom/android/settings/network/telephony/SignalStrengthListener;)Lcom/android/settings/network/telephony/SignalStrengthListener$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/network/telephony/SignalStrengthListener$Callback;->onSignalStrengthChanged()V

    return-void
.end method
