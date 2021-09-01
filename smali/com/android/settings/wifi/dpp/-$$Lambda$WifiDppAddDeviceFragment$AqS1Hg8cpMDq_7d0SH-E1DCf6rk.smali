.class public final synthetic Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$AqS1Hg8cpMDq_7d0SH-E1DCf6rk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$AqS1Hg8cpMDq_7d0SH-E1DCf6rk;->f$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$AqS1Hg8cpMDq_7d0SH-E1DCf6rk;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$AqS1Hg8cpMDq_7d0SH-E1DCf6rk;->f$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$AqS1Hg8cpMDq_7d0SH-E1DCf6rk;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->lambda$showErrorUi$2$WifiDppAddDeviceFragment(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method
