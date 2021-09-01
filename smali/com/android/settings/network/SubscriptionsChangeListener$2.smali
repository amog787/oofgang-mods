.class Lcom/android/settings/network/SubscriptionsChangeListener$2;
.super Landroid/content/BroadcastReceiver;
.source "SubscriptionsChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/SubscriptionsChangeListener;


# direct methods
.method constructor <init>(Lcom/android/settings/network/SubscriptionsChangeListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsChangeListener$2;->this$0:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 63
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p1

    if-nez p1, :cond_0

    .line 64
    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsChangeListener$2;->this$0:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionsChangeListener;->access$000(Lcom/android/settings/network/SubscriptionsChangeListener;)V

    :cond_0
    return-void
.end method
