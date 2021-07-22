.class Lcom/android/settings/wifi/WifiSettings2$SimStateChangeReceiver$2;
.super Ljava/lang/Object;
.source "WifiSettings2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings2$SimStateChangeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings2$SimStateChangeReceiver;Landroid/content/Context;)V
    .locals 0

    .line 1251
    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings2$SimStateChangeReceiver$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1254
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1255
    new-instance p1, Landroid/content/Intent;

    const-string p2, "oneplus.intent.action.OP_SLA"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    .line 1256
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1257
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2$SimStateChangeReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
