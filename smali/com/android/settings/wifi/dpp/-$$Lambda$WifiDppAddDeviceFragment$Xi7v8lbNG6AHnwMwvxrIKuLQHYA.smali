.class public final synthetic Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$Xi7v8lbNG6AHnwMwvxrIKuLQHYA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

.field public final synthetic f$1:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$Xi7v8lbNG6AHnwMwvxrIKuLQHYA;->f$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$Xi7v8lbNG6AHnwMwvxrIKuLQHYA;->f$1:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$Xi7v8lbNG6AHnwMwvxrIKuLQHYA;->f$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$Xi7v8lbNG6AHnwMwvxrIKuLQHYA;->f$1:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->lambda$onCreate$3$WifiDppAddDeviceFragment(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V

    return-void
.end method
