.class Lcom/android/settings/network/ProxySubscriptionManager$2;
.super Lcom/android/settings/network/GlobalSettingsChangeListener;
.source "ProxySubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/ProxySubscriptionManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ProxySubscriptionManager;


# direct methods
.method constructor <init>(Lcom/android/settings/network/ProxySubscriptionManager;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settings/network/ProxySubscriptionManager$2;->this$0:Lcom/android/settings/network/ProxySubscriptionManager;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/settings/network/GlobalSettingsChangeListener;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/String;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/android/settings/network/ProxySubscriptionManager$2;->this$0:Lcom/android/settings/network/ProxySubscriptionManager;

    invoke-static {p1}, Lcom/android/settings/network/ProxySubscriptionManager;->access$100(Lcom/android/settings/network/ProxySubscriptionManager;)Lcom/android/settings/network/ActiveSubsciptionsListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/network/ActiveSubsciptionsListener;->clearCache()V

    .line 89
    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager$2;->this$0:Lcom/android/settings/network/ProxySubscriptionManager;

    invoke-static {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->access$000(Lcom/android/settings/network/ProxySubscriptionManager;)V

    return-void
.end method
